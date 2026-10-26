param(
  [Parameter(Mandatory = $true)]
  [string]$RepoDir,

  [Parameter(Mandatory = $true)]
  [string[]]$SourceDirs
)

$ErrorActionPreference = 'Stop'

function Parse-YamlLineArray {
  param([string]$Value)
  $trimmed = $Value.Trim()
  if ($trimmed -notmatch '^\[(.*)\]$') {
    return @()
  }

  $inner = $matches[1].Trim()
  if ($inner -eq '') {
    return @()
  }

  return @($inner -split ',' | ForEach-Object { $_.Trim().Trim('"') })
}

function Parse-SimpleYamlFile {
  param([string]$Path)

  $meta = [ordered]@{}
  $lines = Get-Content -LiteralPath $Path -Encoding utf8

  foreach ($line in $lines) {
    if ($line -match '^\s*$') {
      continue
    }

    if ($line -match '^(?<key>[A-Za-z0-9_]+):\s*\[(?<items>.*)\]\s*$') {
      $meta[$matches['key']] = Parse-YamlLineArray ("[" + $matches['items'] + "]")
      continue
    }

    if ($line -match '^(?<key>[A-Za-z0-9_]+):\s*"(?<value>.*)"\s*$') {
      $meta[$matches['key']] = $matches['value']
      continue
    }

    if ($line -match '^(?<key>[A-Za-z0-9_]+):\s*(?<value>true|false)\s*$') {
      $meta[$matches['key']] = [bool]::Parse($matches['value'])
      continue
    }

    if ($line -match '^(?<key>[A-Za-z0-9_]+):\s*(?<value>.+)\s*$') {
      $meta[$matches['key']] = $matches['value'].Trim()
      continue
    }
  }

  return $meta
}

function Normalize-MarkdownForWeb {
  param(
    [string]$Content,
    [string]$AssetBase
  )

  $body = $Content -replace "`r`n", "`n"
  $body = [regex]::Replace($body, '(?s)^<style>.*?</style>\s*', '')
  $body = [regex]::Replace($body, '(?m)^%%.*\n?', '')
  $body = [regex]::Replace($body, '(?m)^# <center>.*\n', '')
  $body = [regex]::Replace($body, '(?m)^## <center>.*\n', '')
  $body = [regex]::Replace($body, '(?s)<div align=center>\s*(<img[^>]+>)\s*</div>', '$1')
  $body = [regex]::Replace($body, '<img\s+src="\./([^"/]+)"', "<img src=`"$AssetBase/`$1`"")
  $body = [regex]::Replace($body, '(?m)^REF\s*$', '## REF')
  $body = [regex]::Replace($body, '(?m)^---\s*$', '')

  # User-specific rule: PDF-export markdown often uses four backslashes where
  # the website version should only keep two.
  $body = $body.Replace('\\\\', '\\')

  $lines = $body -split "`n"
  $out = New-Object System.Collections.Generic.List[string]

  for ($i = 0; $i -lt $lines.Length; $i++) {
    $line = $lines[$i].TrimEnd()

    if ($out.Count -eq 0 -and [string]::IsNullOrWhiteSpace($line)) {
      continue
    }

    $out.Add($line)

    if ($line -match '^## ' -and $line -notmatch '^## \[PDF Download\]') {
      $next = if ($i + 1 -lt $lines.Length) { $lines[$i + 1].Trim() } else { '' }
      if ($next -ne '---') {
        $out.Add('---')
      }
    }
  }

  $normalized = ($out -join "`n")
  $normalized = [regex]::Replace($normalized, '\n{3,}', "`n`n")
  return $normalized.Trim() + "`n"
}

function Publish-PostFolder {
  param(
    [string]$RepoDir,
    [string]$SourceDir
  )

  $meta = Parse-SimpleYamlFile (Join-Path $SourceDir 'post.yml')

  $date = [string]$meta['date']
  $slug = [string]$meta['slug']
  $title = [string]$meta['title']
  $description = [string]$meta['description']
  $categories = @($meta['categories'])
  $tags = @($meta['tags'])
  $sourceMd = [string]$meta['source_md']
  $sourcePdf = [string]$meta['source_pdf']
  $pin = if ($null -ne $meta['pin']) { [bool]$meta['pin'] } else { $false }
  $math = if ($null -ne $meta['math']) { [bool]$meta['math'] } else { $true }
  $mermaid = if ($null -ne $meta['mermaid']) { [bool]$meta['mermaid'] } else { $false }
  $author = if ($meta['author']) { [string]$meta['author'] } else { 'Xuan' }
  $imageHost = if ($meta['image_host']) { [string]$meta['image_host'] } else { 'absolute' }
  $pdfLinkTitle = if ($meta['pdf_link_title']) { [string]$meta['pdf_link_title'] } else { 'PDF Download' }

  $postName = "$date-$slug"
  $destPost = Join-Path $RepoDir ("_posts\$postName.md")
  $destAssetDir = Join-Path $RepoDir ("assets\$postName")
  $assetBase = if ($imageHost -eq 'relative') {
    "/assets/$postName"
  } else {
    "https://54749110.github.io/assets/$postName"
  }

  $raw = Get-Content -LiteralPath (Join-Path $SourceDir $sourceMd) -Raw -Encoding utf8
  $body = Normalize-MarkdownForWeb -Content $raw -AssetBase $assetBase

  if ($sourcePdf) {
    $pdfLine = "## [$pdfLinkTitle](/assets/$postName/$sourcePdf)"
    if ($body -notmatch [regex]::Escape($pdfLine)) {
      $body = $body.TrimEnd() + "`n`n" + $pdfLine + "`n"
    }
  }

  $frontMatter = @(
    '---',
    'layout: post',
    ('title:  "' + $title + '"'),
    ('description: "' + $description + '"'),
    ('pin: ' + $pin.ToString().ToLower()),
    ('math: ' + $math.ToString().ToLower()),
    ('mermaid: ' + $mermaid.ToString().ToLower()),
    ('categories: [' + ($categories -join ', ') + ']'),
    ('tags: [' + ($tags -join ', ') + ']'),
    ('author: ' + $author),
    '---',
    ''
  ) -join "`n"

  $utf8NoBom = New-Object System.Text.UTF8Encoding($false)

  New-Item -ItemType Directory -Force -Path $destAssetDir | Out-Null
  [System.IO.File]::WriteAllText($destPost, $frontMatter + "`n" + $body, $utf8NoBom)

  Get-ChildItem -LiteralPath $SourceDir -File | Where-Object {
    $_.Name -ne 'post.yml' -and $_.Extension -in '.png', '.jpg', '.jpeg', '.gif', '.webp', '.svg', '.pdf'
  } | ForEach-Object {
    Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $destAssetDir $_.Name) -Force
  }

  [pscustomobject]@{
    SourceDir = $SourceDir
    PostFile = $destPost
    AssetDir = $destAssetDir
  }
}

foreach ($sourceDir in $SourceDirs) {
  Publish-PostFolder -RepoDir $RepoDir -SourceDir $sourceDir
}
