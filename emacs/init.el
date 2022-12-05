(require 'org)
(org-babel-load-file (expand-file-name "/home/lucas/.emacs.d/config.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("c505ae23385324c21821b24c9cc1d68d8da6f3cfb117eb18826d146b8ec01b15" "bfe046af7359f81d6bd4c47e09ecba8304940107752616124fbf405208b90c8f" default))
 '(org-gtd-mode t)
 '(package-selected-packages
   '(notmuch corfu org-gtd dired-sidebar org-noter pdf-tools window marginalia org-present visual-fill-column leuven-theme org-roam-ui olivetti toc-org consult orderless vertico use-package))
 '(smtpmail-smtp-server "smtp.google.com" t)
 '(smtpmail-smtp-service 25 t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fixed-pitch ((t (:family "SFMono" :height 160))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display" :height 2.0 :underline nil))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 '(org-level-1 ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display" :height 1.75))))
 '(org-level-2 ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display" :height 1.5))))
 '(org-level-3 ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display" :height 1.25))))
 '(org-level-4 ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "#383a42" :font "SF Pro Display"))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(variable-pitch ((t (:family "SF Pro Display" :height 180 :weight light)))))
