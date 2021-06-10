;;;;
;; Packages
;;;;

;; Define package repositories
(require 'package)
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(add-to-list 'package-pinned-packages '(cider . "melpa-stable") t)
(add-to-list 'package-pinned-packages '(magit . "melpa-stable") t)


;; Load and activate emacs packages. Do this first so that the packages
;; are loaded before you start trying to modify them.  This also sets
;; the load path.
(package-initialize)

;; Download the ELPA archive description if needed.
;; This informs Emacs about the latest versions of all packages, and
;; makes them available for download.
(when (not package-archive-contents)
  (package-refresh-contents))

;; Define he following variables to remove the compile-log warnings
;; when defining ido-ubiquitous
;; (defvar ido-cur-item nil)
;; (defvar ido-default-item nil)
;; (defvar ido-cur-list nil)
;; (defvar predicate nil)
;; (defvar inherit-input-method nil)

;; The packages you want installed. You can also install these manually
;; with M-x package-install
;; Add in your own as you wish:
(defvar my-packages
  '(;; makes handling lisp expressions much, much easier Cheatsheet:
    ;; http://www.emacswiki.org/emacs/PareditCheatsheet
    paredit

    ;; key bindings and code colorization for Clojure
    ;; https://github.com/clojure-emacs/clojure-mode
    clojure-mode

    ;; extra syntax highlighting for clojure
    clojure-mode-extra-font-locking

    ;; integration with a Clojure REPL
    ;; https://github.com/clojure-emacs/cider
    cider

    ;; allow ido usage in as many contexts as possible. see
    ;; customizations/navigation.el line 23 for a description of ido
    ido-completing-read+

    ;; Enhances M-x to allow easier execution of commands. Provides a
    ;; filterable list of possible commands in the minibuffer
    ;; http://www.emacswiki.org/emacs/Smex
    smex

    ;; project navigation
    projectile

    ;; colorful parenthesis matching
    rainbow-delimiters

    ;; edit html tags like sexps
    tagedit

    ;; git integration
    magit))

;; On OS X, an Emacs instance started from the graphical user interface
;; will have a different environment than a shell in a terminal window,
;; because OS X does not run a shell during the login. Obviously this
;; will lead to unexpected results when calling external utilities like
;; make from Emacs.  This library works around this problem by copying
;; important environment variables from the user's shell.
;; https://github.com/purcell/exec-path-from-shell
(if (eq system-type 'darwin)
    (add-to-list 'my-packages 'exec-path-from-shell))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))


;; Place downloaded elisp files in ~/.emacs.d/site-lisp. You'll then be
;; able to load them.
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs-goodies-el-13")


;;;;
;; Customization
;;;;

;; Add directories to our load path so that when you `load` things
;; below, Emacs knows where to look for the corresponding files.
(add-to-list 'load-path "~/.emacs.d/user-config")
(add-to-list 'load-path "~/.emacs.d/customizations")

(load "modes.el")
(load "theme.el")
(load "fonts-and-frames.el")
(load "misc.el")
(load "printing.el")


;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
;;(load "shell-integration.el")

;; These customizations make it easier for you to navigate files, switch
;; buffers, and choose options from the minibuffer.
;;(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
;;(load "ui.el")

;; These customizations make editing a bit nicer.
;;(load "editing.el")

;; Hard-to-categorize customizations
;;(load "misc.el")

;; For editing lisps
;;(load "elisp-editing.el")

;; Langauage-specific
;;(load "setup-clojure.el")
;;(load "setup-js.el")



;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Startup...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;(setq default-directory "~/")
;;(server-start) ;; for emacsclient


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=--=



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (magit tagedit rainbow-delimiters projectile smex ido-completing-read+ cider clojure-mode-extra-font-locking clojure-mode paredit exec-path-from-shell)))

 '(auto-revert-verbose nil)
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(font-lock-support-mode (quote jit-lock-mode))
 '(ido-enable-flex-matching t)
 '(indent-tabs-mode nil)
 '(initial-scratch-message nil)
 '(ispell-program-name "aspell" t)
 '(package-selected-packages (quote (json-mode js2-mode)))
 '(paren-match-face (quote paren-face-match-light))
 '(paren-sexp-mode t)
 '(printer-name nil)
 '(ps-bottom-margin 25)
 '(ps-inter-column 35)
 '(ps-landscape-mode nil)
 '(ps-left-margin 35 t)
 '(ps-line-number t)
 '(ps-number-of-columns 1)
 '(ps-print-color-p t)
 '(ps-printer-name nil)
 '(ps-right-margin 25 t)
 '(ps-top-margin 25)
 '(ps-zebra-stripe-height 3)
 '(ps-zebra-stripes t)
 '(read-buffer-completion-ignore-case t)
 '(safe-local-variable-values (quote ((nxml-child-indent . 2))))
 '(search-whitespace-regexp nil)
 '(show-paren-mode t nil (paren))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(truncate-partial-width-windows nil)
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(diff-added ((t (:foreground "orange" :bold nil :italic nil))))
 '(diff-removed ((t (:foreground "LavenderBlush4" :bold nil :italic t))))
 '(ecb-default-general-face ((((class color) (background dark)) (:height 0.95 :bold nil))))
 '(ecb-default-highlight-face ((default nil) (nil (:foreground "plum2" :bold nil))))
 '(ecb-history-bucket-node-dir-soure-path-face ((t (:foreground "RosyBrown" :height 0.95 :bold nil))))
 '(font-lock-builtin-face ((t (:foreground "gray94" :bold nil :italic nil))))
 '(font-lock-comment-face ((t (:foreground "PaleGreen3" :bold nil :italic t))))
 '(font-lock-doc-face ((t (:foreground "PaleGreen3" :bold nil :italic t))))
 '(font-lock-function-name-face ((t (:foreground "LightGoldenrod1" :bold nil :italic nil))))
 '(font-lock-keyword-face ((t (:foreground "gray94" :bold nil :italic nil))))
 '(font-lock-reference-face ((t (:foreground "yellow" :bold nil :italic nil))))
 '(font-lock-string-face ((t (:foreground "yellow" :bold nil :italic nil))))
 '(font-lock-type-face ((t (:foreground "LightGoldenrod1" :bold t :italic nil))))
 '(font-lock-variable-name-face ((t (:foreground "LightGoldenrod1" :bold t :italic nil))))
 '(jde-java-font-lock-code-face ((t (:bold nil))))
 '(jde-java-font-lock-constant-face ((t (:foreground "yellow" :bold nil :italic nil))))
 '(jde-java-font-lock-doc-tag-face ((t (:foreground "PaleGreen2" :bold nil :italic t :underline nil))))
 '(jde-java-font-lock-link-face ((t (:foreground "PaleGreen2" :bold nil :italic t :underline t))))
 '(jde-java-font-lock-modifier-face ((t (:foreground "gray94" :bold nil :italic nil))))
 '(jde-java-font-lock-number-face ((t (:foreground "yellow" :bold t :italic nil))))
 '(jde-java-font-lock-package-face ((t (:foreground "LightGoldenrod1" :bold t :italic nil))))
 '(jde-java-font-lock-pre-face ((t (:foreground "PaleGreen4" :bold t :italic nil :underline nil))))
 '(jde-java-font-lock-private-face ((t (:foreground "khaki" :bold nil :italic nil))))
 '(jde-java-font-lock-protected-face ((t (:foreground "khaki" :bold nil :italic nil))))
 '(jde-java-font-lock-public-face ((t (:foreground "khaki" :bold nil :italic nil))))
 )
