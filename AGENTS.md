# Project Context for AI Assistants

Static website for technick.ai - Nick Sullivan's personal and professional site.

## Tech Stack

- Plain HTML5 with semantic markup
- Tailwind CSS (CDN) for styling
- Alpine.js (CDN) for interactivity
- AOS (Animate On Scroll) library
- PostHog analytics integration

## Project Structure

- `index.html` - Main site page
- `code-forge/` - Open source projects showcase
- `images/` - Site assets
- `.claude/` - AI assistant configurations
- `.cursor/rules/` - Coding rules (load with `/load-cursor-rules`)

## Commands

- `/load-cursor-rules` - Load relevant rules for current task
- `python -m http.server 8000` - Local dev server

## Code Conventions

**DO**:
- Use semantic HTML5 tags
- Apply Tailwind utility classes directly in HTML
- Keep JavaScript minimal with Alpine.js directives
- Follow heart-centered design principles (see `.claude/context/`)

**DON'T**:
- Add external JavaScript frameworks beyond Alpine.js
- Create separate CSS files - use Tailwind utilities
- Build complex SPA functionality - keep it static

## Git Workflow

- Emoji-prefixed commit messages (e.g., `✨ Add feature`, `🎨 Style update`)
- Direct push to `main` deploys to production
- Pull requests for major features

## Important Notes

- Site auto-deploys to GitHub Pages on push to `main`
- CNAME file required for custom domain
- Heart-centered identity context in `.claude/context.md`
- Design principles available in `.claude/context/design-principles.md`