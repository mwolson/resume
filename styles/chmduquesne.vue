<style type="text/css">
/*
 * Copyright 2025 Michael Olson <mwolson@member.fsf.org>
 * Copyright 2013 Christophe-Marie Duquesne <chmd@chmd.fr>
 *
 * CSS for making a resume with pandoc. Inspired by moderncv.
 *
 * This CSS document is delivered to you under the CC BY-SA 3.0 License.
 * https://creativecommons.org/licenses/by-sa/3.0/deed.en_US
 */

/* Whole document */
body {
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    max-width: 800px;
    margin: auto;
    background: #FFFFFF;
    padding: 10px 10px 10px 10px;
}
html.dark body {
    background: #0f172a;
    color: #cbd5e1;
}

/* Title of the resume */
h1 {
    font-size: 55px;
    color: #4b5563;
    text-align:center;
    margin-bottom:15px;
}
html.dark h1 {
    color: #c6c6df;
}

/* Titles of categories */
h2 {
    /* This is called "sectioncolor" in the ConTeXt stylesheet. */
    color: #6d6d8a;
}
html.dark h2 {
    color: rgb(59 130 246);
}
/* There is a bar just before each category */
h2:before {
    content: "";
    display: inline-block;
    margin-right: 17px;
    width: 16%;
    height: 10px;
    /* This is called "rulecolor" in the ConTeXt stylesheet. */
    background-color: #cdcbd9;
}
html.dark h2:before {
    background-color: rgb(96 165 250);
}

/* Definitions */
dt {
    float: left;
    clear: left;
    width: 17%;
    font-weight: bold;
    color: #4b5563;
}
html.dark dt {
    color: #a188d3;
}

dd {
    margin-left: 17%;
    margin-bottom:7px;
}

p {
    margin-top:0;
    margin-bottom:7px;
}

/* Emphasis */
html.dark strong, html.dark b {
    color: rgb(96 165 250);
}

/* Blockquotes */
blockquote {
    text-align: center
}

/* Links */
a {
    color: #6d6d8a;
    font-weight: bold;
}
html.dark a {
    color: #A6A6A6;
}

a:hover, a:active {
    background-color: #6d6d8a;
    color: #FFFFFF;
    text-shadow: 1px 1px 1px #333;
}
html.dark a:hover, html.dark a:active {
    background-color: #A6A6A6;
    color: #FFFFFF;
    text-shadow: 1px 1px 1px #111;
}

/* Horizontal separators */
hr {
    color: #A6A6A6;
}
html.dark hr {
    color: #4b5563;
}

/* Tables */
table {
    width: 100%;
}

/* Utilities */
.extra-top-space {
    margin-top: 2em;
}

.section-color,
.section-color > blockquote > p > a,
.section-color > blockquote > p > strong {
    color: #6d6d8a;
}
html.dark section-color,
html.dark .section-color > blockquote > p > a,
html.dark .section-color > blockquote > p > strong {
    color: #a188d3;
}

/* Theme toggle button */
.theme-toggle {
    position: fixed;
    top: 12px;
    right: 56px;
    padding: 8px;
    border-radius: 8px;
    background: #ffffff;
    color: #6d6d8a;
    border: 1px solid rgba(109, 109, 138, 0.3);
    box-shadow: 0 1px 2px rgba(0,0,0,0.08);
    cursor: pointer;
    line-height: 0;
}
.theme-toggle:hover {
    background: #f9fafb;
}
html.dark .theme-toggle {
    background: #1f2937;
    color: #c6c6df;
    border-color: rgba(198,198,223,0.3);
}
html.dark .theme-toggle:hover {
    background: #334155;
}

/* Print button */
.print-button {
    position: fixed;
    top: 12px;
    right: 12px;
    padding: 8px;
    border-radius: 8px;
    background: #ffffff;
    color: #6d6d8a;
    border: 1px solid rgba(109, 109, 138, 0.3);
    box-shadow: 0 1px 2px rgba(0,0,0,0.08);
    cursor: pointer;
    line-height: 0;
}
.print-button:hover {
    background: #f9fafb;
}
html.dark .print-button {
    background: #1f2937;
    color: #c6c6df;
    border-color: rgba(198,198,223,0.3);
}
html.dark .print-button:hover {
    background: #334155;
}

/* Screen reader only */
.sr-only {
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip: rect(0, 0, 0, 0);
    white-space: nowrap;
    border: 0;
}

@media print {
.theme-toggle, .print-button { display: none !important; }
}
</style>
<script>
  (function () {
    function detectInitial() {
      try {
        const ls = localStorage.getItem('theme');
        const prefersDark =
          window.matchMedia &&
          window.matchMedia('(prefers-color-scheme: dark)').matches;
        return ls === 'dark' || (!ls && prefersDark);
      } catch (e) { return false; }
    }

    function renderIcon(isDark) {
      return isDark
        ? '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="4" /><path d="M12 2v2M12 20v2M4 12H2M22 12h-2M5.64 5.64L4.22 4.22M19.78 19.78l-1.42-1.42M18.36 5.64l1.42-1.42M4.22 19.78l1.42-1.42" /></svg><span class="sr-only">Switch to light mode</span>'
        : '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 12.79A9 9 0 1111.21 3 7 7 0 0021 12.79z" /></svg><span class="sr-only">Switch to dark mode</span>';
    }

    function updateButton(isDark) {
      var btn = document.getElementById('theme-toggle');
      if (!btn) return;
      btn.setAttribute('aria-label', isDark ? 'Switch to light mode' : 'Switch to dark mode');
      btn.innerHTML = renderIcon(isDark);
    }

    function setDark(useDark, opts) {
      document.documentElement.classList.toggle('dark', !!useDark);
      if (!opts || opts.persist !== false) {
        try { localStorage.setItem('theme', useDark ? 'dark' : 'light'); } catch (e) {}
      }
      updateButton(!!useDark);
    }

    function ensureButton() {
      if (document.getElementById('theme-toggle')) return;
      var btn = document.createElement('button');
      btn.id = 'theme-toggle';
      btn.className = 'theme-toggle';
      var currentDark = document.documentElement.classList.contains('dark');
      btn.innerHTML = renderIcon(currentDark);
      btn.setAttribute('aria-label', currentDark ? 'Switch to light mode' : 'Switch to dark mode');
      btn.addEventListener('click', function () {
        var next = !document.documentElement.classList.contains('dark');
        setDark(next);
      });
      document.body.appendChild(btn);

      var pbtn = document.createElement('button');
      pbtn.id = 'print-button';
      pbtn.className = 'print-button';
      pbtn.setAttribute('aria-label', 'Print');
      pbtn.innerHTML = '<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 6 2 18 2 18 9"></polyline><path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path><rect x="6" y="14" width="12" height="8"></rect></svg><span class="sr-only">Print</span>';
      pbtn.addEventListener('click', function () {
        try {
          printInitiatedByButton = true;
          if (previousThemeForPrint === null) {
            previousThemeForPrint = document.documentElement.classList.contains('dark');
          }
          var mql = window.matchMedia && window.matchMedia('print');
          printStarted = false;
          if (printStartTimeout) {
            clearTimeout(printStartTimeout);
          }
          printStartTimeout = setTimeout(openPdfFallback, 1200);
          window.print();
          if (mql && mql.matches) {
            printStarted = true;
            if (printStartTimeout) {
              clearTimeout(printStartTimeout);
              printStartTimeout = null;
            }
          }
        } catch (e) {
          /* leave the timer to trigger fallback */
        }
      });
      document.body.appendChild(pbtn);
    }

    // Initialize theme
    var initial = detectInitial();
    document.documentElement.classList.toggle('dark', !!initial);
    if (document.readyState === 'loading') {
      document.addEventListener('DOMContentLoaded', ensureButton);
    } else {
      ensureButton();
    }

    // Force light mode for printing and restore afterward
    var previousThemeForPrint = null;
    var printInitiatedByButton = false;
    var printStartTimeout = null;
    var printStarted = false;

    function openPdfFallback() {
      if (printStarted) return;
      var href = window.location.href;
      var pdfHref;
      if (/\.html(\?|#|$)/.test(href)) {
        pdfHref = href.replace(/\.html(\?|#|$)/, '.pdf$1');
      } else if (/\/(\?|#|$)/.test(href)) {
        pdfHref = href.replace(/\/(\?|#|$)/, '/index.pdf$1');
      } else {
        pdfHref = href + '.pdf';
      }
      try { window.open(pdfHref, '_blank', 'noopener'); } catch (e) {}
      handleAfterPrint();
    }

    function handleBeforePrint() {
      if (previousThemeForPrint === null) {
        previousThemeForPrint = document.documentElement.classList.contains('dark');
      }
      setDark(false, { persist: false });
      printStarted = true;
      if (printStartTimeout) { clearTimeout(printStartTimeout); printStartTimeout = null; }
    }

    function handleAfterPrint() {
      if (previousThemeForPrint !== null) {
        setDark(!!previousThemeForPrint, { persist: false });
        previousThemeForPrint = null;
      }
      if (printStartTimeout) { clearTimeout(printStartTimeout); printStartTimeout = null; }
      printStarted = false;
      printInitiatedByButton = false;
    }

    if (typeof window !== 'undefined') {
      if ('onbeforeprint' in window) {
        window.addEventListener('beforeprint', handleBeforePrint);
        window.addEventListener('afterprint', handleAfterPrint);
      }
      var mql = window.matchMedia && window.matchMedia('print');
      if (mql) {
        var mqHandler = function (e) { e.matches ? handleBeforePrint() : handleAfterPrint(); };
        if (mql.addEventListener) mql.addEventListener('change', mqHandler);
        else if (mql.addListener) mql.addListener(mqHandler);
      }
    }
  })();
</script>
