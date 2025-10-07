# AGENTS: Working With This Repo

## Build (Docker-only)
- Build everything: `make docker`
- Build specific formats: `make FORMATS="html pdf" docker`
- Without make: `docker compose run --build --rm resume-make html pdf && docker compose down`

Assumes Docker is installed; no local Pandoc/TeX/Node toolchain required. Always build via Docker.

Outputs land in `output/`. During `make html`, contents of `gh-pages/` are copied into `output/` for local testing.

## Useful Paths
- Markdown sources: `markdown/`
- Web stylesheet (HTML build): `styles/chmduquesne.vue`
- ConTeXt/TeX template (PDF build): `styles/chmduquesne.tex`
- Landing page (standalone): `gh-pages/index.html`
- Build rules: `Makefile`

## What To Edit
- HTML resume styling: edit `styles/chmduquesne.vue`, then run `make FORMATS="html" docker`.
- Landing page UI (buttons, spacing, theme): edit `gh-pages/index.html` (React-inlined + Tailwind CDN). After changes, run `make FORMATS="html" docker` to refresh `output/index.html` for local testing (or open `gh-pages/index.html` directly).
- PDF resume styling: edit `styles/chmduquesne.tex`, then run `make FORMATS="pdf" docker`.
- Resume contents: edit `markdown/resume.md`, then run `make FORMATS="html pdf" docker`.

## Verify Changes
After making changes, run `make FORMATS="html" docker` (include `pdf` if needed) to rebuild, then:
- Open built HTML resume: `output/resume.html`
- Open landing page: `output/index.html`

Optional headless check (if Chromium is available) - the sizes correspond to a typical mobile and desktop layout:
```
B="file://$PWD"; C=chromium
$C --headless=new --no-sandbox --disable-gpu \
  --window-size=375,800  --screenshot=output/resume-mobile.png  "$B/output/resume.html"
$C --headless=new --no-sandbox --disable-gpu \
  --window-size=375,800  --screenshot=output/landing-mobile.png "$B/output/index.html"
```

## Icons
- Source SVG: `gh-pages/favicon.svg`
- Regenerate PNGs (preferred):
  - `rsvg-convert -w 32 -h 32 -o gh-pages/favicon-32.png gh-pages/favicon.svg`
  - `rsvg-convert -w 180 -h 180 -o gh-pages/apple-touch-icon.png gh-pages/favicon.svg`
- If `rsvg-convert` is unavailable, alternatives:
  - Inkscape: `inkscape gh-pages/favicon.svg -o gh-pages/favicon-32.png -w 32 -h 32`
  - ImageMagick: `magick -background none gh-pages/favicon.svg -resize 32x32 -gravity center -extent 32x32 gh-pages/favicon-32.png`
- After `make html`, these PNGs are also available under `output/` via copy. Test icons by opening `output/index.html`.

## Notes
- Dark mode is applied via `html.dark` and toggled in both the landing page and resume HTML header. Printing forces light mode temporarily.
- Keep CSS changes surgical: prefer media queries and utility classes to avoid regressions.
