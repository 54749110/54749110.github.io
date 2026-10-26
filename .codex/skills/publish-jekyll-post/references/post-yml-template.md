# `post.yml` Template

Recommended template:

```yaml
date: 2026-04-30
slug: your-post-slug
title: "Your Post Title"
description: "One-line description"

categories: [Category 1, Category 2]
tags: [Tag 1, Tag 2]
source_md: "your-file.md"
source_pdf: "your-file.pdf"

pin: false
math: true
mermaid: false
author: "Xuan"
image_host: "absolute"
pdf_link_title: "PDF Download"
normalize_for_web: true
```

## Notes

- `date` controls the `_posts/` filename prefix.
- `slug` controls both the post filename and the asset folder name.
- `source_md` is required.
- `source_pdf` is optional but recommended when a downloadable pdf exists.
- `image_host: "absolute"` generates image URLs under `https://54749110.github.io/assets/...`.
- `normalize_for_web: true` means the markdown should be cleaned for the website version.
