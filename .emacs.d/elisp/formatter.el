;;; formatter.el --- formatting helpers -*- lexical-binding: t; -*-

;;; Commentary:
;; This file defines functions and keybindings for format-all.

;;; Code:

(defun emacs/format ()
  "Auto-format whole buffer."
  (interactive)
  (if (derived-mode-p 'prolog-mode)
      (prolog-indent-buffer)
    (format-all-buffer)))

(use-package format-all
                      :straight t 
		      :ensure t
		      :hook ((prog-mode . format-all-mode)
			     (format-all-mode . format-all-ensure-formatter))
		      :config
		      (setq-default format-all-formatters
				    '(("C"     (astyle "--mode=c"))
				      ("Shell" (shfmt "-i" "4" "-ci"))))
		      :bind (("C-c f" . emacs/format)))


(provide 'formatter)
