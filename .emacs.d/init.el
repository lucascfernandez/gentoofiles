;; Startup UI
(setq inhibit-startup-message t)
(setq  frame-resize-pixelwise t)
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)            ; Disable the menu bar


(save-place-mode 1)

(use-package no-littering)

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
(setq org-clock-sound "~/Dropbox/bell.wav")

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory "~/Dropbox/roamnotes/")
  (org-roam-completion-everywhere t)
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n i" . org-roam-node-insert)
	 :map org-mode-map
	 ("C-M-i" . completion-at-point)
         :map org-roam-dailies-map
	 ("Y" . org-roam-dailies-capture-yesterday)
         ("T" . org-roam-dailies-capture-tomorrow))
  :bind-keymap
  ("C-c n d" . org-roam-dailies-map)
  :config
  (org-roam-setup)
  (require 'org-roam-dailies) ;; Ensure the keymap is available
  (org-roam-db-autosync-mode))
	 
(setq org-agenda-files
      '("~/Dropbox/roamnotes/20211226213230-tareas.org"))


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


;; Elfeed config
(setq elfeed-feeds
      '("https://protesilaos.com/master.xml"
	"https://decisia.lexum.com/dppc/cm/es/rss.do"
	"https://decisia.lexum.com/dppc/cs/es/rss.do"
        "https://lukesmith.xyz/rss.xml"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("7397cc72938446348521d8061d3f2e288165f65a2dbb6366bb666224de2629bb" "a44bca3ed952cb0fd2d73ff3684bda48304565d3eb9e8b789c6cca5c1d9254d1" default))
 '(hl-sexp-background-color "#efebe9")
 '(package-selected-packages
   '(logos fira-code-mode no-littering vertico elfeed pdf-tools olivetti rainbow-mode modus-themes ox-reveal visual-fill-column use-package shrink-path rainbow-delimiters ox-pandoc org-roam org-bullets goto-chg elisp-refs dired-open dired-hide-dotfiles annalist)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
