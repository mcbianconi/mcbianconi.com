# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal website built with Hugo static site generator using the Zen theme. Multilingual site (English and Portuguese) deployed to GitHub Pages.

## Development Commands

```bash
# Start development server with drafts and auto-navigation
hugo server -D --navigateToChanged

# Build for production (what CI does)
hugo --minify
```

The project uses Nix flakes for development environment. Run `direnv allow` or `nix develop` to get Hugo available.

## Architecture

### Content Structure
- `content/painting/` - Gallery items with page bundles (each item has its own folder with index.md and images)
- `content/posts/` - Blog posts
- Multilingual content uses `.pt.md` suffix for Portuguese translations (e.g., `index.md` for English, `index.pt.md` for Portuguese)

### Theme Customization
The site uses the [Zen theme](https://github.com/frjo/hugo-theme-zen) (v5.x, requires Hugo Extended 0.146.0+).

Custom overrides:
- `layouts/` - Template overrides (follows theme's new structure from v5)
- `assets/sass/_custom.scss` - CSS variable overrides and custom styles
- `assets/sass/_extra.scss` - Sass variable overrides (loaded first)
- `assets/sass/_zen.scss` - Override theme's default styles
- `i18n/` - Translation strings

### Configuration
- `hugo.yaml` - Main configuration with multilingual setup and custom taxonomies (`tecnica`/`technique` for paintings)

## Deployment

Automatic deployment via GitHub Actions on push to `main`. The workflow in `.github/workflows/hugo.yml` builds with Hugo Extended 0.154.5 and deploys to GitHub Pages.
