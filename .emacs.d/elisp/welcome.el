

(straight-use-package '(welcome :type git
                                :host github
                                :repo "tomrss/welcome.el"
                                :files ("welcome.el" "asset")))

(setq inhibit-startup-screen t)

(add-hook 'emacs-startup-hook #'welcome-screen)

(provide 'welcome)
