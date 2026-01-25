# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Hugo site (fresh installation).

## Commands

```bash
# Development server (includes drafts)
make dev

# Build static site
make build

# Clean generated files
make clean

# Create new post
make post
```

Deploy happens automatically via GitHub Actions on push to main.

## Architecture

- **Config**: `hugo.toml` in root directory
- **Content**: `content/` directory
- **Themes**: Install themes in `themes/` directory

## Getting Started

1. Install a theme from https://themes.gohugo.io/ or create one with `hugo new theme <name>`
2. Configure the theme in `hugo.toml`
3. Create content with `hugo new content posts/my-post.md`
4. Run `make dev` to start the development server
