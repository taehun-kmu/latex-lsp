# latex-lsp

LaTeX/BibTeX language server (**[TeXLab](https://github.com/latex-lsp/texlab)**) for Claude Code, providing code intelligence, diagnostics, and completion.

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](LICENSE)
[![LaTeX](https://img.shields.io/badge/LaTeX-008080?logo=latex&logoColor=white)](https://www.latex-project.org/)
[![BibTeX](https://img.shields.io/badge/BibTeX-008080)](https://ctan.org/pkg/bibtex)
[![Claude Plugin](https://img.shields.io/badge/Claude-Plugin-D97757?logo=claude&logoColor=white)](https://docs.claude.com/en/docs/claude-code)
[![Marketplace](https://img.shields.io/badge/Marketplace-lsp--marketplace-8250DF)](https://github.com/taehun-kmu/lsp-marketplace)

## Supported Extensions

`.tex`, `.sty`, `.cls`, `.clo`, `.def`, `.lco`, `.rnw`, `.bib`, `.bibtex`

## Installation

### Via mise (recommended)

```bash
mise use -g github:latex-lsp/texlab
```

### Via cargo

```bash
cargo install --git https://github.com/latex-lsp/texlab --locked --tag v5.25.1
```

**[TeXLab](https://github.com/latex-lsp/texlab)** no longer publishes to crates.io, so install from Git. Requires a recent stable Rust toolchain.

### Via Homebrew (macOS)

```bash
brew install texlab
```

### Via package manager (Linux)

```bash
# Debian/Ubuntu
sudo apt install texlab
```

- Ensure [`texlab`](https://github.com/latex-lsp/texlab) is on your `PATH` so Claude Code can launch it.
- Verify with `texlab --version`.

## More Information

- [TeXLab on GitHub](https://github.com/latex-lsp/texlab)
- [Installation & Configuration](https://github.com/latex-lsp/texlab/blob/master/README.md)
