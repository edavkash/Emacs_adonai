;; Some default configuration for emacs

(scroll-bar-mode -1) ;; remove scroll bar
(tool-bar-mode -1) ;; remove tool-bar
(menu-bar-mode -1) ;; remove menu-bar
(global-display-line-numbers-mode 1) ;; display line numbers
(setq display-line-numbers-type 'relative) ;; display relative line numbers

;; Configuring my preferred font
;; Note: in the future I am switch to my preferred font kanagawa
(add-to-list 'default-frame-alist
             '(font . "IosevkaTermSlab Nerd Font Mono-15"))

(straight-use-package 'gruber-darker-theme)
(load-theme 'gruber-darker t)


(defun sudo-shell-command (command)
  ;;To be able to use sudo by running M-x sudo-shell-command
  (interactive "MShell command (root): ")
  (let ((default-directory "/sudo::/"))

    (async-shell-command command)))

;; Split pane/window when running M-x compile
(setq display-buffer-alist
      '(("\\*compilation\\*"

         (display-buffer-at-bottom)
         (window-height . 0.5))))

(add-to-list 'display-buffer-alist
             `(,(rx bos "*Flycheck errors*" eos)
               (display-buffer-reuse-window
		display-buffer-in-side-window)
               (side            . bottom)
               (reusable-frames . visible)
               (window-height   . 0.5)))

;; I prefer using <...> to "..." in my configuration

(setq lsp-clients-clangd-args
      '("--header-insertion=never"
        "--completion-style=detailed"))


(require 'compile)
(setenv "cc" "musl-gcc")
(setq exec-path (cons "/usr/local/musl/bin/musl-gcc" exec-path))
(setenv "PATH" (concat "/usr/local/musl/bin:" (getenv "PATH")))

(provide 'interface)
