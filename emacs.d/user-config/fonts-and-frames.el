
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Fonts, frame size and position...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-


;;(set-frame-width    (selected-frame) 146)
;;(set-frame-height   (selected-frame) 92)
;;(set-frame-position (selected-frame) 1497 22)

;;(modify-frame-parameters (selected-frame) '((font . "-*-courier-medium-r-*--*-140-*-*-*-*-*-*")))
;;(modify-frame-parameters (selected-frame) '((font . "-apple-monaco-medium-r-normal--12-0-72-72-m-0-iso10646-1")))
;;(modify-frame-parameters (selected-frame) '((font . "-apple-monaco-medium-r-normal--11-0-72-72-m-0-iso10646-1")))
;;(modify-frame-parameters (selected-frame) '((font . "-apple-monaco-medium-r-normal--14-0-72-72-m-0-iso10646-1")))

;;; -MAKER-FAMILY-WEIGHT-SLANT-WIDTHTYPE-STYLE-PIXELS-HEIGHT-HORIZ-VERT-SPACING-WIDTH-CHARSET

(setq normal-font "-apple-Inconsolata-medium-r-normal-*-14-*-*-*-m-0-iso10646-1"
      bigger-font "-apple-Inconsolata-medium-r-normal-*-15-*-*-*-m-0-iso10646-1"
      medium-font "-apple-Inconsolata-medium-r-normal-*-18-*-*-*-m-0-iso10646-1"
      big-font    "-apple-Inconsolata-medium-r-normal-*-26-*-*-*-m-0-iso10646-1"

      inconsolata-font "inconsolata"

      ;; NOTE: fira is (subjectively) a heavier font than inconsolata
      fira-code-font "Fira Code"
      ;;normal-font "-*-Fira Code-normal-normal-normal-*-12-*-*-*-m-0-fontset-auto1"
      ;;normal-font "-*-Fira Code-normal-normal-normal--13-*-*-*-*-*-iso10646-1"
      )

(when (window-system)
  (set-frame-font normal-font nil t)
  )
;;(set-default-font "-apple-inconsolata-medium-r-normal--14-*-*-*-*-*-iso10646-1")
;;(set-default-font "-*-Fira Code-medium-r-normal--15-*-*-*-*-*-iso10646-1")

;;;
;;;  0 1 2 3 4 5 6 7 8 9
;;;
;;;  ==  ===  !=  <=>  ()  {}  []  [:]
;;;
;;;  a b c d e f g h i j k l m n o p q r s t u v w x y z
;;;
;;;  A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
;;;
;;;  , . / < > ? ; ' : " [ ] \ { } | - = _ + ` ~ ! @ # $ % ^ & * ( )
;;;

;; for Fira Code font...
;(let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
;               (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
;               (36 . ".\\(?:>\\)")
;               (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
;               (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
;               (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
;               (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
;               (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
;               (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
;               (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
;               (48 . ".\\(?:x[a-zA-Z]\\)")
;               (58 . ".\\(?:::\\|[:=]\\)")
;               (59 . ".\\(?:;;\\|;\\)")
;               (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
;               (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
;               (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
;               (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
;               (91 . ".\\(?:]\\)")
;               (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
;               (94 . ".\\(?:=\\)")
;               (119 . ".\\(?:ww\\)")
;               (123 . ".\\(?:-\\)")
;               (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
;               (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
;               )
;             ))
;  (dolist (char-regexp alist)
;    (set-char-table-range composition-function-table (car char-regexp)
;                          `([,(cdr char-regexp) 0 font-shape-gstring]))
;    )
;  )

(setq amiller-frame-top               0 ;; 22 ;; pixels
      amiller-frame-right            -1 ;; pixels

      amiller-external-frame-height  92 ;; rows
      amiller-external-frame-left  1040 ;; pixels
      amiller-external-frame-width  212 ;; characters

      amiller-macbook-frame-height   49 ;; rows
      amiller-macbook-frame-left    455 ;; pixels
      amiller-macbook-frame-width   132 ;; characters
      )

;;(set-frame-width    (selected-frame) amiller-external-frame-width)
;;(set-frame-height   (selected-frame) amiller-frame-height)
;;(set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)
;;(set-frame-position (selected-frame) (- (display-pixel-width) 100) amiller-frame-top)

;; (set-frame-parameter nil 'alpha '(<active> [<inactive>]))
;;(add-to-list 'default-frame-alist '(alpha . (100 95))) ;; 89

(defun frame-size-for-external-display ()
  (interactive)
  (set-frame-font normal-font nil t)
  (set-frame-width    (selected-frame) amiller-external-frame-width)
  (set-frame-height   (selected-frame) amiller-external-frame-height)
  (set-frame-position (selected-frame) amiller-external-frame-left amiller-frame-top)
  )

(defun frame-size-for-macbook-display ()
  (interactive)
  (set-frame-font medium-font nil t)
  (set-frame-width    (selected-frame) amiller-macbook-frame-width)
  (set-frame-height   (selected-frame) amiller-macbook-frame-height)
  (set-frame-position (selected-frame) amiller-macbook-frame-left amiller-frame-top)
  )

(defun auto-detect-frame-size ()
  (interactive)
  (if (<= (x-display-pixel-width) 1680)
      (frame-size-for-macbook-display)
    (frame-size-for-external-display)
    )
  )


;;; -MAKER-FAMILY-WEIGHT-SLANT-WIDTHTYPE-STYLE-PIXELS-HEIGHT-HORIZ-VERT-SPACING-WIDTH-CHARSET


(defun font-normal ()
  (interactive)
  (set-frame-font normal-font nil t)
  )
(defun font-bigger ()
  (interactive)
  (set-frame-font bigger-font nil t)
  )
(defun font-medium ()
  (interactive)
  (set-frame-font medium-font nil t)
  )
(defun font-big ()
  (interactive)
  (set-frame-font big-font nil t)
  )

(defun font-fira ()
  (interactive)
  (set-frame-font fira-code-font nil t)
  )

(defun font-inconsolata ()
  (interactive)
  (set-frame-font inconsolata-font nil t)
  )


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Frame decorations...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;; ----10--------20--------30--------40--------50--------60--------70--------80--------90-------100-------110-------120-------130-------140-------150-------160-------170-------180

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

;;(menu-bar-mode -1) ;; leave the menu bar visible
(tool-bar-mode -1) ;; hide the tool bar

;;(standard-display-european t)         ; Allow extended character set
(setq frame-title-format
      ;;(concat "Emacs [" emacs-version "] - %b - %f")
      (concat "Emacs [" emacs-version "] - %f")
      )
