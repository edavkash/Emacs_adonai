(use-package harpoon
  :straight t
  :config
  ;; On vanilla (You can use another prefix instead C-c h)

  ;; You can use this hydra menu that have all the commands
  (global-set-key (kbd "C-c h") 'harpoon-quick-menu-hydra)
  (global-set-key (kbd "C-c a") 'harpoon-add-file))
