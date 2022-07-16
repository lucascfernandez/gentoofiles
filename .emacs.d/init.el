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

 
 (require 'denote)
 
 ;; Remember to check the doc strings of those variables.
 (setq denote-directory (expand-file-name "~/Dropbox/notes/"))
 (setq denote-known-keywords
       '("computador" "filosofia" "politica" "derecho"))
 (setq denote-infer-keywords t)
 (setq denote-sort-keywords t)
 (setq denote-file-type nil) ; Org is the default, set others here
 
 ;; We allow multi-word keywords by default.  The author's personal
 ;; preference is for single-word keywords for a more rigid workflow.
 (setq denote-allow-multi-word-keywords t)
 
 (setq denote-date-format nil) ; read doc string
 
 ;; You will not need to `require' all those individually once the
 ;; package is available.
 (require 'denote-retrieve)
 (require 'denote-link)
 
 ;; By default, we fontify backlinks in their bespoke buffer.
 (setq denote-link-fontify-backlinks t)
 
 ;; Also see `denote-link-backlinks-display-buffer-action' which is a bit
 ;; advanced.
 
 ;; If you use Markdown or plain text files (Org renders links as buttons
 ;; right away)
 (add-hook 'find-file-hook #'denote-link-buttonize-buffer)
 
 (require 'denote-dired)
 (setq denote-dired-rename-expert nil)
 
 ;; We use different ways to specify a path for demo purposes.
 (setq denote-dired-directories
       (list denote-directory
 	    (thread-last denote-directory (expand-file-name "attachments"))
 	    (expand-file-name "~/Dropbox/books")))
 
 ;; Generic (great if you rename files Denote-style in lots of places):
 ;; (add-hook 'dired-mode-hook #'denote-dired-mode)
 ;;
 ;; OR if only want it in `denote-dired-directories':
 (add-hook 'dired-mode-hook #'denote-dired-mode-in-directories)
 
 ;; Here is a custom, user-level command from one of the examples we
 ;; showed in this manual.  We define it here and add it to a key binding
 ;; below.
 (defun my-denote-journal ()
   "Create an entry tagged 'journal', while prompting for a title."
   (interactive)
   (denote
    (denote--title-prompt)
    "journal"))
 
 ;; Denote does not define any key bindings.  This is for the user to
 ;; decide.  For example:
 (let ((map global-map))
   (define-key map (kbd "C-c n j") #'my-denote-journal) ; our custom command
   (define-key map (kbd "C-c n n") #'denote)
   (define-key map (kbd "C-c n N") #'denote-type)
   (define-key map (kbd "C-c n d") #'denote-date)
   (define-key map (kbd "C-c n s") #'denote-subdirectory)
   ;; If you intend to use Denote with a variety of file types, it is
   ;; easier to bind the link-related commands to the `global-map', as
   ;; shown here.  Otherwise follow the same pattern for `org-mode-map',
   ;; `markdown-mode-map', and/or `text-mode-map'.
   (define-key map (kbd "C-c n i") #'denote-link) ; "insert" mnemonic
   (define-key map (kbd "C-c n I") #'denote-link-add-links)
   (define-key map (kbd "C-c n l") #'denote-link-find-file) ; "list" links
   (define-key map (kbd "C-c n b") #'denote-link-backlinks)
   ;; Note that `denote-dired-rename-file' can work from any context, not
   ;; just Dired bufffers.  That is why we bind it here to the
   ;; `global-map'.
   (define-key map (kbd "C-c n r") #'denote-dired-rename-file))
 
 (with-eval-after-load 'org-capture
   (require 'denote-org-capture)
   (setq denote-org-capture-specifiers "%l\n%i\n%?")
   (add-to-list 'org-capture-templates
 	       '("n" "New note (with denote.el)" plain
 		 (file denote-last-path)
 		 #'denote-org-capture
 		 :no-save t
 		 :immediate-finish nil
 		 :kill-buffer t
 		 :jump-to-captured t)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit outline-1 :height 1.4))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.3))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.2))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.1))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.0)))))

(setq org-hide-emphasis-markers t)

(use-package yasnippet
  :config
  (setq yas-snippet-dirs '("~/Dropbox/templates/snippets/"))
  (yas-global-mode 1))

(require 'cursory)

(setq cursory-presets
      '((bar
	 :cursor-type (bar . 2)
	 :cursor-in-non-selected-windows hollow
	 :blink-cursor-blinks 10
	 :blink-cursor-interval 0.5
	 :blink-cursor-delay 0.2)
	(box
	 :cursor-type box
	 :cursor-in-non-selected-windows hollow
	 :blink-cursor-blinks 10
	 :blink-cursor-interval 0.5
	 :blink-cursor-delay 0.2)
	(underscore
	 :cursor-type (hbar . 3)
	 :cursor-in-non-selected-windows hollow
	 :blink-cursor-blinks 50
	 :blink-cursor-interval 0.2
	 :blink-cursor-delay 0.2)))

(setq cursory-latest-state-file (locate-user-emacs-file "cursory-latest-state"))

;; Set last preset or fall back to desired style from `cursory-presets'.
(cursory-set-preset (or (cursory-restore-latest-preset) 'bar))

;; The other side of `cursory-restore-latest-preset'.
(add-hook 'kill-emacs-hook #'cursory-store-latest-preset)

;; We have to use the "point" mnemonic, because C-c c is often the
;; suggested binding for `org-capture'.
(define-key global-map (kbd "C-c p") #'cursory-set-preset)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7397cc72938446348521d8061d3f2e288165f65a2dbb6366bb666224de2629bb" "a44bca3ed952cb0fd2d73ff3684bda48304565d3eb9e8b789c6cca5c1d9254d1" default))
 '(hl-sexp-background-color "#efebe9")
 '(olivetti-style 'fancy)
 '(org-agenda-files '("~/Dropbox/notes/20220626T110325--tareas__journal.org"))
 '(org-num-face nil)
 '(org-startup-indented t)
 '(org-startup-numerated t)
 '(package-selected-packages
   '(yasnippet cursory tmr lin logos denote fira-code-mode no-littering vertico elfeed pdf-tools olivetti rainbow-mode modus-themes ox-reveal visual-fill-column use-package shrink-path rainbow-delimiters ox-pandoc org-bullets goto-chg elisp-refs dired-open dired-hide-dotfiles annalist)))

