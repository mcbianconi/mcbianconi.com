# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal website built with Hugo using the Zen theme. Multilingual site (Portuguese as default, English secondary).

## Development Commands

Requires Nix with flakes. Use `direnv allow` or `nix develop` to enter the dev shell.

```bash
# Start dev server with drafts enabled
dev                    # or: hugo server -D --navigateToChanged

# Build for production
hugo --minify

# Deploy (commits all changes and pushes)
deploy
```

## Architecture

- **Theme**: `themes/zen` - Zen Hugo theme (regular files, not a submodule)
- **Config**: `hugo.yaml` - site configuration
- **Content**: `content/` - posts and pages
  - Portuguese: `*.md` files
  - English: `*.en.md` files
- **i18n**: `i18n/` - translation strings (pt.toml, en.toml)
- **Layouts**: `layouts/` - template overrides
- **Assets**: `assets/sass/` - custom SCSS (\_custom.scss, \_extra.scss, \_fonts.scss, \_zen.scss)

## Deployment

GitHub Actions (`.github/workflows/hugo.yml`) automatically builds and deploys to GitHub Pages on push to main. Uses Hugo Extended v0.154.5.
