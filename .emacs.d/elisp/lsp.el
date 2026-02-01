;;; lsp.el --- language-server-protocol helpers -*- lexical-binding: t; -*-
;;; Commentary:
;; This file defines functions and keybindings for lsp-mode.
;;; Code:

(use-package eglot
  :straight t
  :hook ((c-mode c++-mode objc-mode cuda-mode) . eglot-ensure)
  :config
  (setq eglot-autoshutdown t))

;; Enable Corfu completion UI
;; See the Corfu README for more configuration tips.

(use-package corfu
  :straight t
  ;; Optional customizations
  :custom
  (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
  ;; (corfu-preview-current nil)    ;; Disable current candidate preview
  ;; (corfu-preselect 'prompt)      ;; Preselect the prompt
  ;; (corfu-on-exact-match 'insert) ;; Configure handling of exact matches

  ;; Enable Corfu only for certain modes. See also `global-corfu-modes'.
  :hook ((prog-mode . corfu-mode)
         (shell-mode . corfu-mode)
         (eshell-mode . corfu-mode))

  :init

  ;; Recommended: Enable Corfu globally.  Recommended since many modes provide
  ;; Capfs and Dabbrev can be used globally (M-/).  See also the customization
  ;; variable `global-corfu-modes' to exclude certain modes.
  (global-corfu-mode)
  :config
  ;; Enable optional extension modes:
  ;; (corfu-history-mode)
  (corfu-popupinfo-mode))

(use-package orderless
  :straight t
  :custom
  (completion-styles '(orderless basic))
  (completion-category-overrides '((file (styles partial-completion))))
  (completion-pcm-leading-wildcard t))
;; Add extensions

(use-package cape
  :straight t
  ;; Bind prefix keymap providing all Cape commands under a mnemonic key.
  ;; Press C-c p ? to for help.
  :bind ("C-c p" . cape-prefix-map) ;; Alternative key: M-<tab>, M-p, M-+
  :bind (("C-c p d" . cape-dabbrev)
         ("C-c p h" . cape-history)
         ("C-c p f" . cape-file)))

(use-package which-key
  :straight t
  :config
  (which-key-mode))

;; Eldoc-box for lsp suggestion with eglot

(use-package eldoc-box
  :straight t
  :hook (eglot-managed-mode . eldoc-box-hover-at-point-mode))

(provide 'lsp)
