(add-to-list 'load-path "~/github/jaypei/emacs-neotree")
(require 'neotree)


;; us f8
(global-set-key [f8] 'neotree-toggle)

;;(setq projectile-switch-project-action 'neotree-projectile-action)



;; Every time when the neotree window is opened, let it find current file and jump to node.
(setq neo-smart-open t)

;;
;; ...with projectile
;;
;;When running ‘projectile-switch-project’ (C-c p p), ‘neotree’ will change root automatically.

   (setq projectile-switch-project-action 'neotree-projectile-action)
