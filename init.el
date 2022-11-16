(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(setq package-enable-at-startup nil)

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(straight-use-package 'org)

(straight-use-package
 '(nano-emacs :type git :host github :repo "rougier/nano-emacs"))

(require 'nano-base-colors)
(require 'nano-colors)
(require 'nano-faces)
(require 'nano-theme-dark)
;;(require 'nano-theme-light)
(require 'nano-theme)
(require 'nano-splash)
(require 'nano-modeline)
(require 'nano-layout)
(require 'nano-defaults)
(require 'nano-session) ; comment to see the bug
(require 'nano-bindings)

(nano-faces)
(nano-theme)


;; (provide 'init)
;; ;;; init.el ends here




(require 'org)
(org-babel-load-file (expand-file-name "/home/lucas/.emacs.d/config.org"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-roam-completion-everywhere t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
