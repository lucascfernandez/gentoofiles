;; Startup UI
(setq inhibit-startup-message t)
(setq  frame-resize-pixelwise t)
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)            ; Disable the menu bar

(save-place-mode 1)

;; Set up the visible bell
(setq visible-bell t)
(setq ring-bell-function 'ignore)

;; No Ugly button for checkboxes
(setq widget-image-enable nil)

;;Set Default Font
(add-to-list 'default-frame-alist
                       '(font . "Ubuntu Mono-12"))

;;; PACKAGE LIST
(setq package-archives 
      '(("melpa" . "https://melpa.org/packages/")
        ("elpa" . "https://elpa.gnu.org/packages/")))

;;; BOOTSTRAP USE-PACKAGE
(package-initialize)
(setq use-package-always-ensure t)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package no-littering)

(use-package olivetti)

(use-package vertico)

(vertico-mode 1)

;; theme scheme
(use-package modus-themes
  :ensure
  :init
  ;; Add all your customizations prior to loading the themes
  (setq modus-themes-italic-constructs t
        modus-themes-bold-constructs nil
        modus-themes-region '(bg-only no-extend))

  ;; Load the theme files before enabling a theme
  (modus-themes-load-themes)
  :config
  ;; Load the theme of your choice:
  (modus-themes-load-operandi) ;; OR (modus-themes-load-vivendi)
  :bind ("<f5>" . modus-themes-toggle))


(require 'org)

(setq org-agenda-start-with-log-mode t)
(setq org-log-done 'time)
(setq org-log-into-drawer t)

(use-package dired-open
  :config
  (setq dired-open-extensions '(("png" . "sxiv")
				("svg" . "sxiv")
                                ("mkv" . "mpv"))))

(use-package dired-hide-dotfiles
  :hook (dired-mode . dired-hide-dotfiles-mode))

(use-package pdf-tools)

(pdf-tools-install)

;; Latex Config
(with-eval-after-load 'ox-latex
(add-to-list 'org-latex-classes
             '("org-plain-latex"
               "\\documentclass{article}
           [NO-DEFAULT-PACKAGES]
           [PACKAGES]
           [EXTRA]"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")
               ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))


(require 'logos)

;; If you want to use outlines instead of page breaks (the ^L)
(setq logos-outlines-are-pages t)
(setq logos-outline-regexp-alist
      `((emacs-lisp-mode . "^;;;+ ")
        (org-mode . "^\\*+ +")
        (markdown-mode . "^\\#+ +")
        (t . ,(or outline-regexp logos--page-delimiter))))

;; These apply when `logos-focus-mode' is enabled.  Their value is
;; buffer-local.
(setq-default logos-hide-mode-line t
              logos-hide-buffer-boundaries t
              logos-hide-fringe t
              logos-variable-pitch t
              logos-buffer-read-only nil
              logos-scroll-lock nil
              logos-olivetti t)

;; Also check this manual for `logos-focus-mode-extra-functions'.  It is
;; a hook that lets you extend `logos-focus-mode'.

(let ((map global-map))
  (define-key map [remap narrow-to-region] #'logos-narrow-dwim)
  (define-key map [remap forward-page] #'logos-forward-page-dwim)
  (define-key map [remap backward-page] #'logos-backward-page-dwim)
  (define-key map (kbd "<f9>") #'logos-focus-mode))

(setq olivetti-body-width 0.7
      olivetti-minimum-body-width 80
      olivetti-recall-visual-line-mode-entry-state t)

(require 'lin)

(setq lin-face 'lin-red)
   
(setq lin-mode-hooks
           '(bongo-mode-hook
             dired-mode-hook
             elfeed-search-mode-hook
             git-rebase-mode-hook
             grep-mode-hook
             ibuffer-mode-hook
             ilist-mode-hook
             ledger-report-mode-hook
             log-view-mode-hook
             magit-log-mode-hook
             mu4e-headers-mode
             notmuch-search-mode-hook
             notmuch-tree-mode-hook
             occur-mode-hook
	     org-mode-hook
             org-agenda-mode-hook
             proced-mode-hook
             tabulated-list-mode-hook))

(lin-global-mode 1)   

;; Load the `tmr' library
(require 'tmr)

;; set to nil to disable the sound
(setq tmr-sound-file
      "~/Dropbox/bell.wav")

(setq tmr-notification-urgency 'normal)
(setq tmr-descriptions-list (list "Boil water" "Prepare tea" "Bake bread"))

;; OPTIONALLY set global key bindings:
(let ((map global-map))
  (define-key map (kbd "C-c t t") #'tmr)
  (define-key map (kbd "C-c t T") #'tmr-with-description)
  (define-key map (kbd "C-c t l") #'tmr-tabulated-view) ; "list timers" 
  (define-key map (kbd "C-c t c") #'tmr-clone)
  (define-key map (kbd "C-c t k") #'tmr-cancel)
  (define-key map (kbd "C-c t K") #'tmr-remove-finished))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7397cc72938446348521d8061d3f2e288165f65a2dbb6366bb666224de2629bb" "a44bca3ed952cb0fd2d73ff3684bda48304565d3eb9e8b789c6cca5c1d9254d1" default))
 '(hl-sexp-background-color "#efebe9")
 '(package-selected-packages
   '(tmr lin logos denote fira-code-mode no-littering vertico elfeed pdf-tools olivetti rainbow-mode modus-themes ox-reveal visual-fill-column use-package shrink-path rainbow-delimiters ox-pandoc org-bullets goto-chg elisp-refs dired-open dired-hide-dotfiles annalist)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
