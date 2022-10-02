(require 'org)
(org-babel-load-file (expand-file-name "/home/lucas/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7397cc72938446348521d8061d3f2e288165f65a2dbb6366bb666224de2629bb" "a44bca3ed952cb0fd2d73ff3684bda48304565d3eb9e8b789c6cca5c1d9254d1" default))
 '(diary-file "/home/lucas/.emacs.d/var/diary")
 '(global-display-line-numbers-mode nil)
 '(hl-sexp-background-color "#efebe9")
 '(olivetti-style 'fancy)
 '(org-agenda-files '("/home/lucas/Dropbox/notes/agenda.org"))
 '(org-num-face nil)
 '(org-startup-indented t)
 '(org-startup-numerated t)
 '(package-selected-packages
   '(orderless ef-themes org-preview-html cursory tmr lin logos fira-code-mode no-littering vertico pdf-tools olivetti rainbow-mode modus-themes ox-reveal visual-fill-column use-package shrink-path rainbow-delimiters org-bullets goto-chg elisp-refs dired-open dired-hide-dotfiles annalist))
 '(pdf-annot-default-annotation-properties
   '((t
      (label . ""))
     (text
      (color . "#ff0000")
      (icon . "Note"))
     (highlight
      (color . "green"))
     (underline
      (color . "blue"))
     (squiggly
      (color . "orange"))
     (strike-out
      (color . "red"))))
 '(pdf-view-continuous nil)
 '(semantic-stickyfunc-indent-string "")
 '(warning-suppress-types
   '(((package reinitialization))
     ((package reinitialization)))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fixed-pitch ((t (:family "Ubuntu Mono" :height 160))))
 '(org-block ((t (:inherit fixed-pitch))))
 '(org-code ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-info ((t (:foreground "dark orange"))))
 '(org-document-info-keyword ((t (:inherit (shadow fixed-pitch)))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "black" :font "ETBembo" :height 2.0 :underline nil))))
 '(org-indent ((t (:inherit (org-hide fixed-pitch)))))
 '(org-level-1 ((t (:inherit default :weight bold :foreground "black" :font "ETBembo" :height 1.75))))
 '(org-level-2 ((t (:inherit default :weight bold :foreground "black" :font "ETBembo" :height 1.5))))
 '(org-level-3 ((t (:inherit default :weight bold :foreground "black" :font "ETBembo" :height 1.25))))
 '(org-level-4 ((t (:inherit default :weight bold :foreground "black" :font "ETBembo" :height 1.1))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "black" :font "ETBembo"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "black" :font "ETBembo"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "black" :font "ETBembo"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "black" :font "ETBembo"))))
 '(org-link ((t (:foreground "royal blue" :underline t))))
 '(org-meta-line ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-property-value ((t (:inherit fixed-pitch))) t)
 '(org-special-keyword ((t (:inherit (font-lock-comment-face fixed-pitch)))))
 '(org-table ((t (:inherit fixed-pitch :foreground "#83a598"))))
 '(org-tag ((t (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
 '(org-verbatim ((t (:inherit (shadow fixed-pitch)))))
 '(variable-pitch ((t (:family "ETBembo" :height 180 :weight thin)))))
