;;(setq debug-on-error t)

;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Initial configuration...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp"))
(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/lilypond"))

;;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/ecb-2.32"))
(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/ecb-latest"))

;;(setq favorite-jde-version '2.3.5.1)
(setq favorite-jde-version 'test)
(cond ((eq '2.3.3 favorite-jde-version)
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/eieio-0.17"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/elib-1.0"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/semantic-1.4.4"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/speedbar-0.14beta4"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/jde-2.3.3/lisp"))
       )
      ((eq '2.3.5.1 favorite-jde-version)
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/jde/lisp"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/cedet-1.0pre3/common"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/cedet-1.0pre3"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/elib-1.0"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/jde-2.3.5.1/lisp"))
       (load-file (expand-file-name "~/devtools/emacs/site-lisp/cedet-1.0pre3/common/cedet.el"))
       )
      ((eq 'test favorite-jde-version)
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/cedet-1.0/common"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/cedet-1.0"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/elib-1.0"))
       (add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/jdee-2.4.0.1/lisp"))
       (load-file (expand-file-name "~/devtools/emacs/site-lisp/cedet-1.0/common/cedet.el"))
       )
      )

;;(load-file (expand-file-name "~/devtools/emacs/site-lisp/jdee-2.4.0.1/lisp/jde.el"))

(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/emacs-goodies-el-13"))
(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/html-helper-mode-2.19.1.1"))

(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/psgml-1.3.1/"))
(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/xae-1.0beta8/lisp"))

(load-file (expand-file-name "~/devtools/emacs/site-lisp/revbufs.el"))

;;(autoload 'js2-mode "js2" nil t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(setq semanticdb-default-save-directory "~/.semantic.cache")

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
 '(ecb-before-activate-hook (quote (amiller-ecb-before-activate-hook)))
 '(ecb-deactivate-hook (quote (amiller-ecb-deactivate-hook)))
 '(ecb-history-make-buckets (quote directory))
 '(ecb-kill-buffer-clears-history (quote auto))
 '(ecb-layout-name "amiller-left-analysis")
 '(ecb-layout-window-sizes (quote (
                                   ("amiller-left-analysis"
                                    (ecb-methods-buffer-name 0.3 . 0.25)
                                    (ecb-directories-buffer-name 0.3 . 0.5)
                                    (ecb-history-buffer-name 0.3 . 0.25)
                                    )
                                   )
                                  )
                           )
 '(ecb-options-version "2.40")
 '(ecb-run-ediff-in-ecb-frame t)
 '(ecb-show-sources-in-directories-buffer (quote always))
 '(ecb-source-file-regexps (quote ((".*" ("\\(^\\(\\.\\|#\\)\\|\\(~$\\|\\.\\(elc\\|obj\\|o\\|class\\|lib\\|dll\\|a\\|so\\|cache\\|png\\|gif\\|DS_Store\\|jpg\\|psp\\|Icon
\\)$\\)\\)") ("^\\.\\(emacs\\|gnus\\|ruler\\|aliases\\|profile\\|inputrc\\|Xdefaults\\|classpath\\|project\\|.*\\.el\\)$")))))
 '(ecb-source-path
   (quote
    (
     ;; bloom bloomhealth
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/grails-app/controllers/com/bloomhealthco/controller/" "bloomhealth/../controllers")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/grails-app/domain/com/bloomhealthco/domain/" "bloomhealth/../domain")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/grails-app/jobs/com/bloomhealthco/job/" "bloomhealth/../jobs")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/grails-app/services/com/bloomhealthco/security/" "bloomhealth/../security")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/grails-app/services/com/bloomhealthco/service/" "bloomhealth/../services")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/grails-app/views/" "bloomhealth/grails-app/views")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/grails-app/" "bloomhealth/grails-app")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/src/" "bloomhealth/src")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/web-app/" "bloomhealth/web-app")
     ;;("~/opi/clients/bloom/src/bloomhealth/bloomhealth/" "bloomhealth")

     ;; bloom bloom-common
     ;;("~/opi/clients/bloom/src/bloom-common/grails-app/controllers/com/bloomhealthco/" "bloom-common/../controllers")
     ;;("~/opi/clients/bloom/src/bloom-common/grails-app/domain/com/bloomhealthco/" "bloom-common/../domain")
     ;;("~/opi/clients/bloom/src/bloom-common/grails-app/jobs/com/bloomhealthco/" "bloom-common/../jobs")
     ;;("~/opi/clients/bloom/src/bloom-common/grails-app/services/com/bloomhealthco/" "bloom-common/../services")
     ;;("~/opi/clients/bloom/src/bloom-common/grails-app/views/" "bloom-common/grails-app/views")
     ;;("~/opi/clients/bloom/src/bloom-common/grails-app/" "bloom-common/grails-app")
     ;;("~/opi/clients/bloom/src/bloom-common/src/" "bloom-common/src")
     ;;("~/opi/clients/bloom/src/bloom-common/web-app/" "bloom-common/web-app")
     ;;("~/opi/clients/bloom/src/bloom-common/" "bloom-common")

     ;; bloom bloom-domain
     ;;("~/opi/clients/bloom/src/bloom-domain/grails-app/controllers/com/bloomhealthco/" "bloom-domain/../controllers")
     ;;("~/opi/clients/bloom/src/bloom-domain/grails-app/domain/com/bloomhealthco/" "bloom-domain/../domain")
     ;;("~/opi/clients/bloom/src/bloom-domain/grails-app/jobs/com/bloomhealthco/" "bloom-domain/../jobs")
     ;;("~/opi/clients/bloom/src/bloom-domain/grails-app/services/com/bloomhealthco/" "bloom-domain/../services")
     ;;("~/opi/clients/bloom/src/bloom-domain/grails-app/views/" "bloom-domain/grails-app/views")
     ;;("~/opi/clients/bloom/src/bloom-domain/grails-app/" "bloom-domain/grails-app")
     ;;("~/opi/clients/bloom/src/bloom-domain/src/" "bloom-domain/src")
     ;;("~/opi/clients/bloom/src/bloom-domain/web-app/" "bloom-domain/web-app")
     ;;("~/opi/clients/bloom/src/bloom-domain/" "bloom-domain")

     ;; bloom bhbo
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/grails-app/controllers/com/bloomhealthco/bhbo/controller/" "bhbo/../controllers")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/grails-app/domain/com/bloomhealthco/bhbo/domain/" "bhbo/../domain")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/grails-app/jobs/com/bloomhealthco/bhbo/job/" "bhbo/../jobs")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/grails-app/services/com/bloomhealthco/bhbo/security/" "bhbo/../security")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/grails-app/services/com/bloomhealthco/bhbo/service/" "bhbo/../services")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/grails-app/views/" "bhbo/grails-app/views")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/grails-app/" "bhbo/grails-app")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/src/" "bhbo/src")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/web-app/" "bhbo/web-app")
     ;;("~/opi/clients/bloom/src/bhbo/bhbo/" "bhbo")


     ;; drc sb11-dev-utils
     ("~/opi/clients/drc/github/sb11-dev-utils/" "drc/../dev-utils")
     ("~/opi/clients/drc/github/sb11-dev-utils.wiki/" "drc/../dev-utils.wiki")

     ;; drc sb11-adaptive-simulator
     ("~/opi/clients/drc/github/sb11-adaptive-simulator/domain/src/"      "drc/../adaptive-simulator/domain")
     ("~/opi/clients/drc/github/sb11-adaptive-simulator/persistence/src/" "drc/../adaptive-simulator/persistence")
     ("~/opi/clients/drc/github/sb11-adaptive-simulator/rest/src/"        "drc/../adaptive-simulator/rest")
     ("~/opi/clients/drc/github/sb11-adaptive-simulator/"                 "drc/../adaptive-simulator")

     ;; drc sb11-item-response
     ("~/opi/clients/drc/github/sb11-item-response/domain/src/"      "drc/../item-response/domain")
     ("~/opi/clients/drc/github/sb11-item-response/persistence/src/" "drc/../item-response/persistence")
     ("~/opi/clients/drc/github/sb11-item-response/rest/src/"        "drc/../item-response/rest")
     ("~/opi/clients/drc/github/sb11-item-response/"                 "drc/../item-response")

     ;; drc sb11-item-selection
     ("~/opi/clients/drc/github/sb11-item-selection/domain/src/"      "drc/../item-selection/domain")
     ("~/opi/clients/drc/github/sb11-item-selection/persistence/src/" "drc/../item-selection/persistence")
     ("~/opi/clients/drc/github/sb11-item-selection/rest/src/"        "drc/../item-selection/rest")
     ("~/opi/clients/drc/github/sb11-item-selection/"                 "drc/../item-selection")

     ;; drc sb11-registration
     ("~/opi/clients/drc/github/sb11-registration/domain/src/"      "drc/../registration/domain")
     ("~/opi/clients/drc/github/sb11-registration/persistence/src/" "drc/../registration/persistence")
     ("~/opi/clients/drc/github/sb11-registration/rest/src/"        "drc/../registration/rest")
     ("~/opi/clients/drc/github/sb11-registration/"                 "drc/../registration")

     ;; drc sb11-test-packages
     ("~/opi/clients/drc/github/sb11-test-packages/domain/src/"      "drc/../test-packages/domain")
     ("~/opi/clients/drc/github/sb11-test-packages/persistence/src/" "drc/../test-packages/persistence")
     ("~/opi/clients/drc/github/sb11-test-packages/rest/src/"        "drc/../test-packages/rest")
     ("~/opi/clients/drc/github/sb11-test-packages/"                 "drc/../test-packages")

     ;; drc
     ("~/opi/clients/drc/github/" "drc/github")
     ("~/opi/clients/drc/" "drc")

     ("~/opi/clients/" "opi/clients")
     ("~/dev/opi/" "~/dev/opi")
     ("~/dev/mtm/" "~/dev/mtm")
     ("~/dev/scratch/" "~/dev/scratch")
     ("~/dev/" "~/dev")
     ("~" "~")
     )
    )
   )
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-buffer-style (quote ascii-no-guides))
 '(ecb-tree-indent 2)
 '(ecb-vc-enable-support t)
 '(ecb-wget-setup (quote cons))
 '(font-lock-support-mode (quote jit-lock-mode))
 '(ido-enable-flex-matching t)
 '(indent-tabs-mode nil)
 '(initial-scratch-message nil)
 '(ispell-program-name "aspell" t)
 '(jde-ant-home "$ANT_HOME")
 '(jde-build-function (quote (jde-ant-build)))
 '(jde-checkstyle-style "~/opi/clients/mnscu/hr/code/devtools/checkstyle/checkstyle.xml")
 '(jde-compile-option-debug (quote ("all" (t nil nil))))
 '(jde-compile-option-deprecation t)
 '(jde-compile-option-hide-classpath t)
 '(jde-compiler (quote ("javac" "")))
 '(jde-db-active-breakpoint-face-colors (quote ("black" . "red")))
 '(jde-db-requested-breakpoint-face-colors (quote ("black" . "tomato")))
 '(jde-db-spec-breakpoint-face-colors (quote ("black" . "orange red")))
 '(jde-debugger (quote ("JDEbug")))
 '(jde-jdk (quote ("1.6.0")))
 '(jde-jdk-doc-url "/app/jdk-1.5.0_09/docs")
 '(jde-jdk-registry (quote (("1.5.0" . "/System/Library/Frameworks/JavaVM.framework/Versions/1.5.0")
                            ("1.4.2" . "/System/Library/Frameworks/JavaVM.framework/Versions/1.4.2")
                            ("1.6.0" . "/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0"))))
 '(jde-project-context-switching-enabled-p t)
 '(paren-glint-timeout 10)
 '(paren-match-face (quote paren-face-match-light))
 '(paren-sexp-mode t)
 '(pmd-home "/app/pmd-2.3")
 '(pmd-java-home "/app/jdk-1.5.0_09/bin/java")
 '(pmd-ruleset-list (quote ("rulesets/basic.xml" "rulesets/braces.xml" "rulesets/codesize.xml" "rulesets/coupling.xml" "rulesets/design.xml" "rulesets/imports.xml" "rulesets/strings.xml" "rulesets/unusedcode.xml")))
 '(printer-name nil)
 '(ps-bottom-margin 25)
 '(ps-inter-column 35)
 '(ps-landscape-mode nil)
 '(ps-left-margin 35)
 '(ps-line-number t)
 '(ps-number-of-columns 1)
 '(ps-print-color-p t)
 '(ps-printer-name nil)
 '(ps-right-margin 25)
 '(ps-top-margin 25)
 '(ps-zebra-stripe-height 3)
 '(ps-zebra-stripes t)
 '(show-paren-mode t nil (paren))
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(truncate-partial-width-windows nil)
 )

(require 'paren-glint)
(paren-glint-mode 1)

;; '(jde-checkstyle-style "~/etc/checkstyle.xml")
;;'(jde-checkstyle-style "/app/devAPM-r20/util/checkstyle/conf/checkstyle.xml")

;; '(jde-debugger (quote ("JDEbug")))

;;
;; About IP printers and cygwin/windows...
;;
;; The printer-name variable must be set to a valid UNC.  You can't use a
;; port.  So to use an IP printer you'll have to share it first and give it a
;; name.
;;
;; '(printer-name "//badger/opi-printer" t)
;; '(printer-name "//stpprn02/GDT843709P")
;; '(printer-name "//stpprn02/GDT844020P")
;; '(ps-line-number-step (quote zebra))



;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Buffer and frame setup, etc...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(menu-bar-mode 0)
(tool-bar-mode 0)

;;(standard-display-european t)         ; Allow extended character set
(setq frame-title-format
      ;;(concat "Emacs [" emacs-version "] - %b - %f")
      (concat "Emacs [" emacs-version "] - %f")
      )
(setq scroll-step                   1
      backup-by-copying-when-linked t
      require-final-newline         t
      mail-self-blind               t
      inhibit-startup-message       t
      blink-matching-paren          t
      line-number-mode              t
      column-number-mode            t
      )

(put 'eval-expression 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(global-set-key "" nil)

(load "completion.elc")
(add-to-list 'completion-ignored-extensions ".DS_Store")
(initialize-completions)
(setq *print-next-completion-does-cdabbrev-search-p* t)

;;(global-set-key "." 'tags-search)
;;(global-set-key "," 'tags-loop-continue)

(global-set-key "t" 'transpose-windows)
(fset 'transpose-windows
      "b
ob
ob
")

(global-set-key "p" 'reposition-window)


(global-set-key "4" 'quarter-window-split)
(defun quarter-window-split ()
  (interactive)
  (split-window-vertically -18)
  )


;; file encoding conversion
(defun set2mac ()
  (interactive)
  (set-buffer-file-coding-system 'undecided-mac)
  (save-buffer))
(defun set2unix ()
  (interactive)
  (set-buffer-file-coding-system 'undecided-unix)
  (save-buffer))
(defun set2dos ()
  (interactive)
  (set-buffer-file-coding-system 'undecided-dos)
  (save-buffer))

;;(require 'highlight-completion)
;;(highlight-completion-mode 1)

(require 'browse-kill-ring)
(global-set-key (kbd "C-c k") 'browse-kill-ring)

(autoload 'nuke-trailing-whitespace "whitespace" nil t)
(add-hook 'write-file-hooks 'nuke-trailing-whitespace)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; MacOSX details...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(load-file "~/.emacs.osx.frame-size.el")

;; force Command to be the Meta key!
(setq mac-option-key-is-meta    nil
      mac-command-key-is-meta     t
      mac-command-modifier    'meta
      mac-option-modifier       nil
      )

;; set the Option key as Super
(setq mac-option-modifier 'super)

;; I like to use a single frame
(setq ns-pop-up-frames nil)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Column width...
;;; ----10--------20--------30--------40--------50--------60--------70--------80--------90-------100-------110-------120-------130--

(setq-default fill-column 72)
;;(setq-default fill-column 77)
;;(setq-default fill-column 80)
;;(setq-default fill-column 90)
;;(setq-default fill-column 132)

;; Wide column mode changes the cursor colour when it gets past the fill-column.
;; There's some bug in this that can get the curson colour out of wack.
;;(require 'wide-column)
;;(global-wide-column-mode)

;;(require 'margin)
;;(margin-mode)

(require 'vvb-mode)
;; My personal preference is 85, but I change it from time to time to help satisfy client coding conventions.
(setq-default vvb-column         112
              vvb-sticky-p       nil
              vvb-permanent-p    t
              vvb-horizontal-p   nil
              vvb-right-on-eol-p t
              )
;; face colour is set in colors section below.

(defun turn-on-vvb-mode ()
  "Unconditionally turn on Visible Vertical Bar mode."
  (vvb-mode nil))
(defun turn-off-vvb-mode ()
  "Unconditionally turn off Visible Vertical Bar mode."
  (vvb-mode -1))

;;(setq-default vvb-mode 1)
(add-hook 'html-helper-mode-hook   'turn-on-vvb-mode)
(add-hook 'emacs-lisp-mode-hook    'turn-on-vvb-mode)
(add-hook 'jde-mode-hook           'turn-on-vvb-mode)
(add-hook 'sgml-mode-hook          'turn-on-vvb-mode)
(add-hook 'sql-mode-hook           'turn-on-vvb-mode)
;;(add-hook 'text-mode-hook          'turn-on-vvb-mode)
(add-hook 'xml-mode-hook           'turn-on-vvb-mode)
(add-hook 'shell-script-mode-hook  'turn-on-vvb-mode)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Colors and font lock...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;; font-lock is empirically fastest when I just leave all this alone!
(global-font-lock-mode 1)
;;(setq font-lock-support-mode 'jit-lock-mode)
;;(setq font-lock-support-mode fast-lock-mode)
;;setq font-lock-support-mode 'lazy-lock-mode)
;;setq font-lock-maximum-decoration t)

;;(list-colors-display)
;;(set-background-color "beige")
;;(set-face-background vvb-face "linen")
;;(set-face-background vvb-face "misty rose")
;;(set-face-background vvb-face "cornsilk")

(cond (nil (load-file "~/.emacs.theme.amiller-1.el"))
      (nil (load-file "~/.emacs.theme.amiller-2.el"))
      (t   (load-file "~/.emacs.theme.nightvision.el"))
      )

(require 'color-theme)
;;(color-theme-gnome2)
;;(color-theme-high-contrast)
;;(color-theme-retro-orange)


;;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/emacs-color-theme-solarized"))
;;(require 'color-theme-solarized)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Misc...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
(setq paren-face 'bold)
(setq paren-highlight-offscreen t)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Modes...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode" "Major mode for editing comma-separated value files." t)

(add-to-list 'auto-mode-alist '("\\.rrp" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.shlib" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.ddl" . sql-mode))

;;(require 'vc-hooks)
(require 'vc-hg)
(setq hg-with-rainbow-decoration nil)
(defun vc-hg-annotate-command (file buffer &optional revision)
  "Execute \"hg annotate\" on FILE, inserting the contents in BUFFER.  Optional arg REVISION is a revision to annotate from."
  (if hg-with-rainbow-decoration
      (vc-hg-command buffer 0 file "annotate"
                     ;; default args were -d -n --follow
                     "-d"
                     "-n"
                     ;;"--follow" ;; full pathname
                     ;;"-l"       ;; show line number
                     (when revision (concat "-r" revision))
                     )
    (vc-hg-command buffer 0 file "annotate"
                   "-d"
                   "-n"
                   "-u" ;; list the author, THIS BREAKS THE RAINBOW COLORIZATION !
                   "-q" ;; short date stamp, THIS BREAKS THE RAINBOW COLORIZATION !
                   (when revision (concat "-r" revision))
                   )
    )
  )
(defun hg-toggle-rainbow ()
  (interactive)
  (setq hg-with-rainbow-decoration (not hg-with-rainbow-decoration))
  ;; how do I force a re-render?
  ;;(vc-annotate-prev-revision)
  ;;(vc-annotate-next-revision)
  )

;(defconst vc-hg-annotate-re
;  ;; original regex...
;  "^[ \t]*\\([0-9]+\\) \\(.\\{30\\}\\)\\(?:\\(: \\)\\|\\(?: +\\(.+\\): \\)\\)"
;  ;; a new RE that matches my annotate args...
;  ;;"^.+[ ^t]*\\([0-9]+\\)[ ^t]*\\([0-9]{4}-[0-9]{2}-[0-9]{2}\\)\\(?:\\(: \\)\\|\\(?: +\\(.+\\): \\)\\)"
;  )
;
;(defun vc-hg-annotate-time ()
;  (when (looking-at vc-hg-annotate-re)
;    (goto-char (match-end 0))
;    (vc-annotate-convert-time
;     (date-to-time (match-string-no-properties 2)))))
;
;(defun vc-hg-annotate-extract-revision-at-line ()
;  (save-excursion
;    (beginning-of-line)
;    (when (looking-at vc-hg-annotate-re)
;      (if (match-beginning 3)
;	  (match-string-no-properties 1)
;	(cons (match-string-no-properties 1)
;	      (expand-file-name (match-string-no-properties 4)
;				(vc-hg-root default-directory)))))))

(require 'vc-git)
(defun vc-git-annotate-command (file buf &optional rev)
  (let ((name (file-relative-name file)))
    (vc-git-command buf 'async nil "blame"
                    ;; default args were "--date=iso" "-C" "-C" rev "--" name
                    "--date=iso" "-C" "-C" rev "--" name
                    ;;"--date=iso" rev "--" name
                    ;;"--date=iso" rev "-c" "--" name
                    )
    )
  )


;; Text mode
(setq initial-major-mode 'text-mode)    ; start out in text mode
(setq default-major-mode 'text-mode)    ; default to text mode
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; HTML mode
(autoload 'html-helper-mode "html-helper-mode" "HTML Helper Mode" t)

(add-to-list 'auto-mode-alist '("\\.html" . html-helper-mode))
(add-to-list 'auto-mode-alist '("\\.htm" . html-helper-mode))
(add-to-list 'auto-mode-alist '("\\.jsp"  . html-helper-mode))
(add-to-list 'auto-mode-alist '("\\.gsp"  . html-helper-mode))

(defun amiller-html-mode-hook ()
  (setq html-helper-use-expert-menu     t
        ;;html-helper-dtd-version         "<!DOCTYPE html public \"-//W3C//DTD HTML 4.0 Transistional//EN\">\n"
        html-helper-do-write-file-hooks t
        html-helper-build-new-buffer    t
        html-helper-address-string      "<a href=\"http://www.objectpartners.com/\">Andrew R. Miller &lt;amiller@objectpartners.com&gt;</a>"
        indent-tabs-mode              nil ; Use spaces instead of tabs.
        )
  (setq tab-width 2)
  (setq fill-column 100)
  ;;(load "amiller-html-helper-mode-ext")
  ;;(define-key html-helper-mode-map "\^c?" 'tempo-complete-tag)
  (turn-on-auto-fill)
  )
(add-hook 'html-helper-mode-hook 'amiller-html-mode-hook)
(add-hook 'html-helper-mode-hook 'turn-on-vvb-mode)
;;(add-hook 'html-helper-mode-hook '(lambda () (font-lock-mode 1)))

;; CSS mode
(add-to-list 'auto-mode-alist '("\\.css" . css-mode))
(autoload 'css-mode "css-mode" nil t)


;; SQL mode
(defun amiller-sql-mode-hook ()
  (setq tab-width 2)
  )
(add-hook 'sql-mode-hook 'amiller-sql-mode-hook)
(add-hook 'sql-mode-hook 'turn-on-vvb-mode)

;; Shell scripts
(add-to-list 'auto-mode-alist '("\\.profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.aliases" . shell-script-mode))

;; COBOL mode
(require 'cobol-mode)
(add-to-list 'auto-mode-alist '("\\.cob" . cobol-mode))
(add-to-list 'auto-mode-alist '("\\.cob0l" . cobol-mode))


;; PowerBuilder mode
(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/powerbuilder-mode"))
(require 'powerbuilder-mode)
(add-to-list 'auto-mode-alist '("\\.pbl" . powerbuilder-mode))



;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; SGML and XML
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;(require 'xae)

;(autoload 'sgml-mode "psgml" "Major mode to edit SGML files." t)
;(autoload 'xml-mode "psgml" "Major mode to edit XML files." t)
;(add-to-list 'auto-mode-alist '("\\.dtd" . sgml-mode))
;(add-to-list 'auto-mode-alist '("\\.xml" . xml-mode))

(defun amiller-psgml-mode-hook ()
  (setq indent-tabs-mode   nil          ; Use spaces instead of tabs.
        tab-width          4            ; I prefer 3 spaces for xml

        sgml-set-face      t
        sgml-markup-faces  '((start-tag . font-lock-function-name-face)
                             (end-tag . font-lock-function-name-face)
                             (comment . font-lock-comment-face)
                             (pi . font-lock-type-face)
                             (sgml . font-lock-type-face)
                             (doctype . font-lock-keyword-face)
                             (entity . font-lock-string-face)
                             (shortref . font-lock-string-face)
                             (ignored . font-lock-constant-face)
                             (ms-start . font-lock-constant-face)
                             (ms-end . font-lock-constant-face))

        sgml-auto-activate-dtd  t
        )
  ;;(turn-on-auto-fill)
  )
(add-hook 'sgml-mode-hook 'amiller-psgml-mode-hook)
(add-hook 'xml-mode-hook 'amiller-psgml-mode-hook)
(add-hook 'xae-mode-hook 'turn-on-vvb-mode)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Groovy Development...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/emacs.groovy/groovy-mode-by-jeremy-rayner"))
;;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/emacs.groovy"))
;;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/emacs.groovy/wolfmanjm-grails-mode-eee23a6"))

(add-to-list 'load-path (expand-file-name "~/devtools/emacs/emacs.groovy/groovy-mode-by-russel-winder"))

;; make Groovy mode electric by default.
;;(add-hook 'groovy-mode-hook '(lambda () (require 'groovy-electric) (groovy-electric-mode)) )

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

(defun amiller-groovy-mode-hook ()
  (setq indent-tabs-mode nil          ; Use spaces instead of tabs.
        tab-width          4
        c-basic-offset     4
        fill-column      110
        )
  )
(add-hook 'groovy-mode-hook 'amiller-groovy-mode-hook)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; ECB...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(require 'ecb-autoloads)

(defun amiller-ecb-before-activate-hook ()
  "Enlarges the frame size while preserving the size of the edit pane."
  (set-frame-position (selected-frame) amiller-ecb-frame-left amiller-frame-top)
  (set-frame-width    (selected-frame) amiller-ecb-frame-width)
  t
  )
(defun amiller-ecb-deactivate-hook ()
  "Resets the frame size."
  (set-frame-width    (selected-frame) amiller-frame-width)
  (set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)
  t
  )

(defun ecb-reactivate ()
  (interactive)
  (ecb-deactivate)
  (ecb-activate) )


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Java Development...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(add-to-list 'completion-ignored-extensions ".class") ; Ignore compiled java class files.
(add-to-list 'completion-ignored-extensions "vssver.scc") ; Ignore VSS turds.

;; Ignore TCC diagram stuff.
(add-to-list 'completion-ignored-extensions ".dfPackage")
(add-to-list 'completion-ignored-extensions ".dfSequence")

(global-set-key "c" 'insert-java-class-template)

(setq amiller-java-template-choice 'amiller)
(defun insert-java-class-template ()
  "Insert the java class template at point."
  (interactive)
  (push-mark)
  (cond
   ((eq amiller-java-template-choice 'amiller)    (insert-file "~/etc/class-template.amiller.java"))
   ((eq amiller-java-template-choice 'bi)         (insert-file "~/etc/class-template.bi.java"))
   ((eq amiller-java-template-choice 'bloodhound) (insert-file "~/etc/class-template.bloodhound.java"))
   ((eq amiller-java-template-choice 'bsci)       (insert-file "~/etc/class-template.bsci.java"))
   ((eq amiller-java-template-choice 'cwt)        (insert-file "~/etc/class-template.cwt.java"))
   ((eq amiller-java-template-choice 'fgi)        (insert-file "~/etc/class-template.fgi.java"))
   ((eq amiller-java-template-choice 'guidant)    (insert-file "~/etc/class-template.guidant.java"))
   ((eq amiller-java-template-choice 'mnscu)      (insert-file "~/etc/class-template.mnscu.java"))
   ((eq amiller-java-template-choice 'opi)        (insert-file "~/etc/class-template.opi.java"))
   ((eq amiller-java-template-choice 'buyer)      (insert-file "~/etc/class-template.buyer.groovy"))
   (t                                             (insert-file "~/etc/class-template.java"))
   )
  )

(require 'jde)
(require 'jde-bug)
(defun amiller-jde-mode-hook ()
  ;; Intendation is based on the GNU style (differences are noted.)
  (setq c-basic-offset                  4)
  (setq c-comment-only-line-offset      '(0 . 0))
  (c-set-offset 'statement-block-intro  '+)
  (c-set-offset 'knr-argdecl-intro      5)
  (c-set-offset 'substatement-open      0) ; gnu specifies '+
  (c-set-offset 'label                  0)
  (c-set-offset 'statement-case-open    '+)
  (c-set-offset 'statement-cont         '+)
  (c-set-offset 'arglist-intro          'c-lineup-arglist-intro-after-paren)
  (c-set-offset 'arglist-close          'c-lineup-arglist)
  (c-set-offset 'inline-open            0)
  (c-set-offset 'brace-list-open        '+)
  (setq c-block-comment-prefix          "")

  ;;(setq compile-command "javac ")
  ;;(setq compile-command (concat "jikes " buffer-file-name))
  (setq case-fold-search    t
        comment-column     44
        indent-tabs-mode  nil           ; Use spaces instead of tabs.
        c-auto-newline    nil
        )

  (setq fill-column 110)

  (show-paren-mode)

  ;;(local-set-key "\^c\^v\^p"    'jde-run-set-app-args) ;app parameters
  ;;(local-set-key "\^c\^v\^v"    'jde-run-set-args) ;vm parameters
  ;;(local-set-key "\^c\^v\^o"    'jde-set-compile-options) ;compiler arguments
  )
(add-hook 'jde-mode-hook 'amiller-jde-mode-hook)
(add-hook 'jde-mode-hook 'turn-on-vvb-mode)

(defun amiller-compilation-mode-hook ()
  ;; Number of lines in a compilation window.  If nil, use Emacs default.
  (setq compilation-window-height 17)
  )
(add-hook 'compilation-mode-hook 'amiller-compilation-mode-hook)

(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/pmd-emacs-0.5"))
(autoload 'pmd-current-buffer "pmd" "PMD Mode" t)
(autoload 'pmd-current-dir "pmd" "PMD Mode" t)
(require 'pmd)

;; This removes unsightly ^M characters that would otherwise appear in
;; the output of java applications.
(add-hook 'comint-output-filter-functions
          'comint-strip-ctrl-m)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Code folding...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(autoload 'hideshowvis-enable "hideshowvis" "Highlight foldable regions")

(autoload 'hideshowvis-minor-mode
  "hideshowvis"
  "Will indicate regions foldable with hideshow in the fringe."
  'interactive)

;;(dolist (hook (list 'emacs-lisp-mode-hook
;;                    'c++-mode-hook))
;;  (add-hook hook 'hideshowvis-enable))

(add-hook 'css-mode-hook          'hideshowvis-enable)
(add-hook 'emacs-lisp-mode-hook   'hideshowvis-enable)
(add-hook 'groovy-mode-hook       'hideshowvis-enable)
(add-hook 'html-helper-mode-hook  'hideshowvis-enable)
(add-hook 'html-mode-hook         'hideshowvis-enable)
(add-hook 'java-mode-hook         'hideshowvis-enable)
(add-hook 'jde-mode-hook          'hideshowvis-enable)
(add-hook 'perl-mode-hook         'hideshowvis-enable)
(add-hook 'sgml-mode-hook         'hideshowvis-enable)
(add-hook 'shell-script-mode-hook 'hideshowvis-enable)
(add-hook 'sql-mode-hook          'hideshowvis-enable)
(add-hook 'css-mode-hook          'hideshowvis-enable)
(add-hook 'emacs-lisp-mode-hook   'hideshowvis-enable)
(add-hook 'groovy-mode-hook       'hideshowvis-enable)
(add-hook 'text-mode-hook         'hideshowvis-enable)
(add-hook 'xml-mode-hook          'hideshowvis-enable)

(setq hideshowvis-fancy-decorations-enable t)
(cond (hideshowvis-fancy-decorations-enable
       (define-fringe-bitmap 'hs-marker [0 24 24 126 126 24 24 0])

       (defcustom hs-fringe-face 'hs-fringe-face
         "*Specify face used to highlight the fringe on hidden regions."
         :type 'face
         :group 'hideshow)

       (defface hs-fringe-face
         '((t (:foreground "HotPink4" :background "HotPink4" :box (:line-width 2 :color "HotPink4" :style released-button))))
         "Face used to highlight the fringe on folded regions"
         :group 'hideshow)

       (defcustom hs-face 'hs-face
         "*Specify the face to to use for the hidden region indicator"
         :type 'face
         :group 'hideshow)

       (defface hs-face
         '((t (:background "#ff8" :foreground "black" :box t)))
         "Face to hightlight the ... area of hidden regions"
         :group 'hideshow)

       (defun display-code-line-counts (ov)
         (when (eq 'code (overlay-get ov 'hs))
           (let* ((marker-string "*fringe-dummy*")
                  (marker-length (length marker-string))
                  (display-string (format "(%d)..." (count-lines (overlay-start ov) (overlay-end ov))))
                  )
             (overlay-put ov 'help-echo "Hiddent text. C-c,= to show")
             (put-text-property 0 marker-length 'display (list 'left-fringe 'hs-marker 'hs-fringe-face) marker-string)
             (overlay-put ov 'before-string marker-string)
             (put-text-property 0 (length display-string) 'face 'hs-face display-string)
             (overlay-put ov 'display display-string)
             )))

       (setq hs-set-up-overlay 'display-code-line-counts)
       )
      )


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; lilypond...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(autoload 'LilyPond-mode "lilypond-mode")
(setq auto-mode-alist
      (cons '("\\.ly$" . LilyPond-mode) auto-mode-alist))

(add-hook 'LilyPond-mode-hook (lambda () (turn-on-font-lock)))


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; markdown...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Signatures...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(global-set-key "z" 'insert-long-signature)
(defun insert-long-signature ()
  "Inserts the contents of ~/etc/signature into the current buffer."
  (interactive)
  (push-mark)
  (insert-file "~/etc/signature")
  )


(global-set-key "=" 'insert-short-signature)
(defun insert-short-signature ()
  "Insert username, date and time at point."
  (interactive)
  (push-mark)
  ;;(insert (concat "[" (user-login-name) " - " (current-time-string) "]"))
  ;;(insert (concat "[amiller - " (current-time-string) "]"))
  ;;(insert (concat " // TODO: amiller " (format-time-string "%Y/%m/%d %H:%M") " - "))
  (insert (concat " // TODO: amiller " (format-time-string "%Y/%m/%d") " - "))
  ;;(insert " // TODO: amiller - ")
  (newline)
  )


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Startup...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(ecb-activate)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; End of safe emacs init file.
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Expirimental section...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;(load-file "~/.emacs.win32.el")

;(defun indent-or-complete ()
;  "Complete if point is at end of a word, otherwise indent line."
;  (interactive)
;  (if (looking-at "\\>")
;      (dabbrev-expand nil)
;    (indent-for-tab-command)
;    )
;  )
;(add-hook 'html-helper-mode-hook
;          (function (lambda ()
;                      (local-set-key (kbd "<tab>") 'indent-or-complete)
;                      )
;                    )
;          )


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Frame and font manipulation.
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;; start emacs maximized put this line at the end of your .emacs file:
;;(w32-send-sys-command 61488)

;;; Frame size manipulation.
(defun maximize-frame ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
                       (if (frame-parameter nil 'fullscreen) nil
                         'fullboth)))
;;(maximize-frame)
(global-set-key [(meta return)] 'maximize-frame)


(defun font-big ()
  (interactive)
  (set-default-font "-apple-Inconsolata-medium-normal-normal-*-26-*-*-*-m-0-iso10646-1")
  )
(defun font-medium ()
  (interactive)
  (set-default-font "-apple-Inconsolata-medium-normal-normal-*-20-*-*-*-m-0-iso10646-1")
  )
(defun font-normal ()
  (interactive)
  (set-default-font "-apple-Inconsolata-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
  )


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; END OF FILE
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
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

 '(diff-removed ((t (:foreground "LavenderBlush4" :bold nil :italic t))))
 '(diff-added ((t (:foreground "orange" :bold nil :italic nil))))
 )
