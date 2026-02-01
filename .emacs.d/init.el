;;; init.el --- initialisation helpers -*- lexical-binding: t; -*-
;;; Commentary:
;;; This file load all the necessary libraries and packaages needed for running Emacs.
;;; Code:

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;;Installing use-package from straight.el
(straight-use-package 'use-package)

;;Load path were my emacs configuration and packages reside.
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp/"))

;;configuring my custom emacs ui
(require 'interface)

;;configuring inhibit-splash-screen
(require 'welcome)

;;configuring emacs lsp
;;(require 'language-server-protocol)
(require 'lsp)

;; configuring formatter
(require 'formatter)

;;configuring the harpoon plugin
(require 'harpoon)

;; configuaring magit for git integration
(require 'Magit)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-environment '("CC=musl-gcc") t))
