# Emacs Configuration

A lightweight and modular Emacs configuration focused on **C/C++ development**, **LSP support**, and efficient keyboard-driven workflow.

---

## Features

* **Language Server Protocol** via `eglot`
* **Completion UI** with `corfu` and `orderless`
* **Enhanced documentation popups** with `eldoc-box`
* **Harpoon plugin** for quick file navigation (Primeagen style)
* **Minimal, fast, and keyboard-centric**
* **Which-key integration** for keybinding hints

---

## Installation

### Prerequisites

* Emacs 29+ (recommended)
* `git` installed
* Optional: `clangd` for C/C++ LSP

### Setup

Clone the repository:

```bash
git clone https://github.com/yourusername/emacs-config.git ~/.emacs.d
```

Start Emacs. `straight.el` will automatically install all packages on first launch.

---

## Keybindings

### Harpoon

* `C-c h` → Harpoon quick menu (hydra)
* `C-c h a` → Add file
* `C-c h t` → Toggle file
* `C-c h c` → Clear marks
* `C-c h 1–9` → Jump to corresponding mark

### Eglot + Corfu

* Auto-completion and inline documentation at point
* Hover docs appear via `eldoc-box`
* Works out-of-the-box for C, C++, Objective-C, CUDA

---

## Recommended Plugins

* `which-key` → Shows available keybindings after your prefix
* `cape` → Extra completion sources (dabbrev, file, history)

---

## Customization

You can edit keybindings and add packages in `~/.emacs.d/elisp/`:

* `lsp.el` → LSP + completion setup
* `harpoon.el` → Harpoon keybindings

---

## Usage

* Open a source file (e.g., `.c` or `.cpp`)
* Start Emacs — `eglot` will automatically connect if supported
* Use `C-c h` to quickly navigate files with Harpoon
* Start typing to see Corfu completions and pop-up documentation

---

## License

MIT License

---
