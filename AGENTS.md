# AGENTS: Working With This Repo

## Build (Docker)
- Build everything: `make docker`
- Build specific formats: `make FORMATS="html pdf" docker`
- Without make: `docker compose run --build --rm resume-make html pdf && docker compose down`

Outputs land in `output/`.

## Useful Paths
- Markdown sources: `markdown/`
- Web stylesheet (HTML build): `styles/chmduquesne.vue`
- ConTeXt/TeX template (PDF build): `styles/chmduquesne.tex`
- Landing page (standalone): `gh-pages/index.html`
- Build rules: `Makefile`

## What To Edit
- HTML resume styling: edit `styles/chmduquesne.vue`, then rebuild `html`.
- Landing page UI (buttons, spacing, theme): edit `gh-pages/index.html` (React-inlined + Tailwind CDN), no rebuild needed for that file—open it directly.

## Verify Changes
- Open built resume: `output/resume.html`
- Open landing page: `gh-pages/index.html`

Optional headless check (if Chromium is available) - the sizes correspond to a typical mobile and desktop layout:
```
B="file://$PWD"; C=chromium
$C --headless=new --no-sandbox --disable-gpu \
  --window-size=375,800  --screenshot=output/resume-mobile.png  "$B/output/resume.html"
$C --headless=new --no-sandbox --disable-gpu \
  --window-size=375,800  --screenshot=output/landing-mobile.png "$B/gh-pages/index.html"
```

## Notes
- Dark mode is applied via `html.dark` and toggled in both the landing page and resume HTML header. Printing forces light mode temporarily.
- Keep CSS changes surgical: prefer media queries and utility classes to avoid regressions.
