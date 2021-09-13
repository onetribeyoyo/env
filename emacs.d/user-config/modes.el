
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Column width...
;;; ----10--------20--------30--------40--------50--------60--------70--------80--------90-------100-------110-------120-------130--

;;(setq-default fill-column 72)
;;(setq-default fill-column 77)
;;(setq-default fill-column 80)
(setq-default fill-column 90)
;;(setq-default fill-column 132)

;; Wide column mode changes the cursor colour when it gets past the fill-column.
;; There's some bug in this that can get the curson colour out of wack.
;;(require 'wide-column)
;;(global-wide-column-mode)

;;(require 'margin)
;;(margin-mode)

(require 'vvb-mode)
;; My personal preference is 85, but I change it from time to time to help satisfy coding conventions.
(setq-default vvb-column         112
              vvb-sticky-p       nil
              vvb-permanent-p    t
              vvb-horizontal-p   nil
              vvb-right-on-eol-p t
              )

(defun turn-on-vvb-mode ()
  "Unconditionally turn on Visible Vertical Bar mode."
  (vvb-mode nil))
(defun turn-off-vvb-mode ()
  "Unconditionally turn off Visible Vertical Bar mode."
  (vvb-mode -1))

;;(setq-default vvb-mode 1)
(add-hook 'emacs-lisp-mode-hook    'turn-on-vvb-mode)
;;(add-hook 'text-mode-hook          'turn-on-vvb-mode)
(add-hook 'shell-script-mode-hook  'turn-on-vvb-mode)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Modes...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;; Text mode
(setq initial-major-mode 'text-mode)    ; start out in text mode
(setq default-major-mode 'text-mode)    ; default to text mode
(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; CSS mode
(add-to-list 'auto-mode-alist '("\\.css" . css-mode))
(add-to-list 'auto-mode-alist '("\\.less" . css-mode))
(autoload 'css-mode "css-mode" nil t)

(defun amiller-css-mode-hook ()
  (setq tab-width          4
        //c-basic-offset     4
        )
  )
(add-hook 'css-mode-hook 'amiller-css-mode-hook)

;; go mode
(require 'go-mode-autoloads)

;; SQL mode
(add-to-list 'auto-mode-alist '("\\.ddl" . sql-mode))
(defun amiller-sql-mode-hook ()
  (setq tab-width 2)
  )
(add-hook 'sql-mode-hook 'amiller-sql-mode-hook)
(add-hook 'sql-mode-hook 'turn-on-vvb-mode)

;; Shell scripts
(add-to-list 'auto-mode-alist '("\\.profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.aliases" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.rrp" . perl-mode))
(add-to-list 'auto-mode-alist '("\\.shlib" . shell-script-mode))

;; YAML mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/yaml-mode")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; SGML and XML
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;; nXml mode
(add-to-list 'auto-mode-alist '("\\.jsp"  . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.gsp"  . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.html" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.htm"  . nxml-mode))

(defun amiller-nxml-mode-hook ()
  (setq
   nxml-child-indent   2
   fill-column       120
   )
  (turn-on-auto-fill)
  )
(add-hook 'nxml-mode-hook 'amiller-nxml-mode-hook)
(add-hook 'nxml-mode-hook 'turn-on-vvb-mode)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; javascript Development...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.tsx" . js2-mode))

;; Better imenu
;;(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

(require 'prettier-js)
(add-hook 'js2-mode-hook 'prettier-js-mode)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; kotlin Development...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(require 'kotlin-mode)
(add-to-list 'auto-mode-alist '("\\.kt" . kotlin-mode))


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Groovy Development...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(add-to-list 'load-path "~/.emacs.d/site-lisp/emacs.groovy/emacs-groovy-mode_201311291207")

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;; make Groovy mode electric by default.
;;(add-hook 'groovy-mode-hook '(lambda () (require 'groovy-electric) (groovy-electric-mode)) )

(defun amiller-groovy-mode-hook ()
  (setq indent-tabs-mode nil          ; Use spaces instead of tabs.
        tab-width          4
        c-basic-offset     4
        fill-column      110
        )
  )
(add-hook 'groovy-mode-hook 'amiller-groovy-mode-hook)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Java Development...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(add-to-list 'completion-ignored-extensions ".class") ; Ignore compiled java class files.

(global-set-key "c" 'insert-java-class-template)

(setq amiller-java-template-choice 'amiller)
(defun insert-java-class-template ()
  "Insert the java class template at point."
  (interactive)
  (push-mark)
  (cond
   ((eq amiller-java-template-choice 'amiller) (insert-file "~/etc/class-template.amiller.java"))
   (t                                          (insert-file "~/etc/class-template.java"))
   )
  )


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
(add-hook 'javascript-mode-hook   'hideshowvis-enable)
(add-hook 'markdown-mode-hook     'hideshowvis-enable)
(add-hook 'nxml-mode-hook         'hideshowvis-enable)
(add-hook 'perl-mode-hook         'hideshowvis-enable)
(add-hook 'sgml-mode-hook         'hideshowvis-enable)
(add-hook 'shell-script-mode-hook 'hideshowvis-enable)
(add-hook 'sql-mode-hook          'hideshowvis-enable)
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

(add-to-list 'load-path "~/.emacs.d/site-lisp/lilypond")

(autoload 'LilyPond-mode "lilypond-mode")
(setq auto-mode-alist
      (cons '("\\.ly$" . LilyPond-mode) auto-mode-alist))

(add-hook 'LilyPond-mode-hook (lambda () (turn-on-font-lock)))


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; markdown...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
;;(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(defun amiller-markdown-mode-hook ()
  (setq fill-column 102)
  )
(add-hook 'markdown-mode-hook 'amiller-markdown-mode-hook)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; rust development...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;(add-to-list 'load-path (expand-file-name "~/devtools/rust/rust-mode"))
;;(autoload 'rust-mode "rust-mode" nil t)
;;(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))



;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; org mode...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;; set key for agenda
(global-set-key (kbd "C-c a") 'org-agenda)

;;file to save todo items
(setq org-agenda-files (quote ("/Users/amiller/todo.org")))

;;set priority range from A to C with default A
(setq org-highest-priority ?A)
(setq org-lowest-priority ?C)
(setq org-default-priority ?A)

;;set colours for priorities
(setq org-priority-faces '((?A . (:foreground "#F0DFAF" :weight bold))
                           (?B . (:foreground "LightSteelBlue"))
                           (?C . (:foreground "OliveDrab"))))

;;open agenda in current window
(setq org-agenda-window-setup (quote current-window))

;;capture todo items using C-c c t
(define-key global-map (kbd "C-c c") 'org-capture)
(setq org-capture-templates
      '(("t" "todo" entry (file+headline "/Users/amiller/todo.org" "Tasks")
         "* TODO [#A] %?")))
