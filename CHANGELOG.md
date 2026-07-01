# Changelog

## [0.1.0] - 2026-07-01

_Initial release._

### Added

- Wire the [texlab](https://github.com/latex-lsp/texlab) language server into Claude Code via `.lsp.json`, covering LaTeX (`.tex`, `.sty`, `.cls`, `.clo`, `.def`, `.lco`, `.rnw`) and BibTeX (`.bib`, `.bibtex`) ([c0a6c36])
- Add `README.md` with installation, usage, and supported-extensions documentation ([558cbe4])
- Add `validation/` scripts and a `Justfile` (`verify`, `static-analysis`) for local and CI checks ([e927571])
- Add a GitHub Actions workflow validating the plugin on Ubuntu and macOS ([3cc8066])

[0.1.0]: https://github.com/taehun-kmu/latex-lsp/releases/tag/v0.1.0
[c0a6c36]: https://github.com/taehun-kmu/latex-lsp/commit/c0a6c36
[558cbe4]: https://github.com/taehun-kmu/latex-lsp/commit/558cbe4
[e927571]: https://github.com/taehun-kmu/latex-lsp/commit/e927571
[3cc8066]: https://github.com/taehun-kmu/latex-lsp/commit/3cc8066
