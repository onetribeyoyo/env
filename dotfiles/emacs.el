;;(setq debug-on-error t)
;;(setq stack-trace-on-error t)

;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Package config...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(require 'package)

;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/"))

;;(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
;;                    (not (gnutls-available-p))))
;;       (proto (if no-ssl "http" "https")))
;;  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
;;  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
;;  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
;;  (when (< emacs-major-version 24)
;;    ;; For important compatibility libraries like cl-lib
;;    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))


(package-initialize)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Initial configuration...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp"))

(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/emacs-goodies-el-13"))
;;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/html-helper-mode-2.19.1.1"))

;;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/psgml-1.3.1/"))
;;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/xae-1.0beta8/lisp"))

;;(add-to-list 'load-path (expand-file-name "~/devtools/prettier/prettier-emacs"))

;;(load-file (expand-file-name "~/devtools/emacs/site-lisp/revbufs.el"))

;;(setq semanticdb-default-save-directory "~/.semantic.cache")

;;(require 'printing)
;;(pr-update-menus t)

;;(require 'ido)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Custom variables -- EDIT AT YOUR OWN RISK...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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
 '(truncate-partial-width-windows nil))


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Config details...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(load-file "~/emacs-config/modes.el")
(load-file "~/emacs-config/theme.el")
(load-file "~/emacs-config/fonts-and-frames.el")
(load-file "~/emacs-config/misc.el")
(load-file "~/emacs-config/printing.el")

;;(require 'color-theme)



;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Startup...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(setq default-directory "~/")


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; END OF FILE


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
 '(jde-java-font-lock-public-face ((t (:foreground "khaki" :bold nil :italic nil)))))