---
name: publish-jekyll-post
description: Use when a user wants to turn one or more local markdown article folders with post.yml metadata into Jekyll posts for this repository, including markdown cleanup, asset copy, PDF link insertion, and optional git deployment.
---

# Publish Jekyll Post

Use this skill when the user gives one or more source article folders and wants them converted into posts under this repository's `_posts/` and `assets/` directories.

## Inputs

Each source folder should contain:

- `post.yml`
- one markdown file referenced by `source_md`
- optional pdf referenced by `source_pdf`
- images or other local assets referenced by the markdown

The expected `post.yml` shape is documented in [references/post-yml-template.md](references/post-yml-template.md).

## Workflow

1. Read `post.yml` first.
2. Generate the target post name as `YYYY-MM-DD-slug`.
3. Create:
   - `_posts/YYYY-MM-DD-slug.md`
   - `assets/YYYY-MM-DD-slug/`
4. Normalize the markdown for web publishing.
5. Copy images and pdf into the asset directory.
6. Review the generated post before committing.
7. If the user asks to deploy, stage only the generated post and asset folders, then commit and push.

## Markdown Normalization Rules

Apply these rules to the source markdown before writing the Jekyll post:

- Remove the leading PDF-only `<style>...</style>` block.
- Remove lines starting with `%%`.
- Remove title lines like `# <center> ...` and `## <center> ...`.
- Replace `REF` with `## REF`.
- Keep section headings as `## ...` and insert a following `---` divider if one is missing.
- Replace image references like `./1.png` with `https://54749110.github.io/assets/YYYY-MM-DD-slug/1.png` when `image_host: "absolute"`.
- Append `## [PDF Download](/assets/YYYY-MM-DD-slug/file.pdf)` when `source_pdf` exists.
- Convert every `\\\\` sequence into `\\` for the web version.
- Do not remove LaTeX command backslashes such as `\frac`, `\phi`, `\begin`, `\end`, `\left`, `\right`, etc.
- Remove UTF-8 BOM from the generated post file.

## Front Matter Rules

Match the style already used in this repository:

```yaml
---
layout: post
title:  "Example Title"
description: "Example description"
pin: true
math: true
mermaid: true
categories: [Category A, Category B]
tags: [Tag A, Tag B]
author: Xuan
---
```

Important:

- Prefer single-line arrays for `categories` and `tags`.
- Keep `author: Xuan` without extra quotes to match existing posts.
- Write UTF-8 without BOM.

## Script

For deterministic publishing, run:

```powershell
powershell -ExecutionPolicy Bypass -File ".codex/skills/publish-jekyll-post/scripts/publish-post-folder.ps1" -RepoDir "D:\OneDrive\programs\Github\54749110.github.io" -SourceDirs "D:\path\to\folder1","D:\path\to\folder2"
```

The script:

- reads `post.yml`
- normalizes markdown
- writes the post file
- copies assets

It does not automatically commit or push.

## Validation

After generation, verify:

- the post file exists under `_posts/`
- the asset folder exists under `assets/`
- no `<style>` block remains
- no `src="./..."`
- no `\\\\` remains
- the PDF link exists if `source_pdf` is set

## Deployment Notes

If the user asks to deploy:

- stage only the generated `_posts/...` file and matching `assets/...` folder
- do not include unrelated untracked paths such as scratch folders
- commit with a focused message
- push to `main`

If a post does not appear on the site after deployment:

- compare its front matter with existing working posts
- confirm the generated file has no BOM before the opening `---`
- check whether the post date is in the future relative to the site timezone
