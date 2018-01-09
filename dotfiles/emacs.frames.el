
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

;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-12-*-*-*-m-0-iso10646-1")
;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-13-*-*-*-m-0-iso10646-1")
;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1")
;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-20-*-*-*-m-0-iso10646-1")
;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-26-*-*-*-m-0-iso10646-1")
;;(set-default-font "-apple-andale mono-medium-r-normal--14-100-72-72-m-100-iso10646-1")
;;(set-default-font "-apple-monaco-medium-r-normal--11-0-72-72-m-0-iso10646-1")
;;(set-default-font "-apple-monaco-medium-r-normal--12-0-72-72-m-0-iso10646-1") ; default mac font!
;;(set-default-font "-apple-monaco-medium-r-normal--14-0-72-72-m-0-iso10646-1")


;;(set-default-font "-apple-andale mono-medium-r-normal--14-100-72-72-m-100-iso10646-1")
;;Inconsolata
;; -apple-Andale_Mono-medium-normal-normal-*-14-*-*-*-m-0-fontset-auto1
;; -*-*-*-*-*-*-*-*-*-*-*-*-fontset-default
;; -ns-*-*-*-*-*-10-*-*-*-*-*-fontset-standard
;; -apple-Monaco-medium-normal-normal-*-*-*-*-*-m-0-fontset-startup


;; on a retna 27" monitor...
;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-13-*-*-*-m-0-iso10646-1")
(set-default-font "-apple-inconsolata-medium-r-normal--14-*-*-*-*-*-iso10646-1")
;;(set-default-font "-apple-monaco-medium-r-normal--12-0-72-72-m-0-iso10646-1") ; default mac font!
(setq amiller-frame-top           0 ;; 22 ;; pixels
      amiller-frame-left       1097 ;; pixels
      amiller-frame-width       204 ;; characters
      amiller-frame-height       92 ;; rows
      )

(set-frame-width    (selected-frame) amiller-frame-width)
(set-frame-height   (selected-frame) amiller-frame-height)
(set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)

;; (set-frame-parameter nil 'alpha '(<active> [<inactive>]))
;;(add-to-list 'default-frame-alist '(alpha . (100 95))) ;; 89

;;; -MAKER-FAMILY-WEIGHT-SLANT-WIDTHTYPE-STYLE-PIXELS-HEIGHT-HORIZ-VERT-SPACING-WIDTH-CHARSET


(defun font-big ()
  (interactive)
  (set-default-font "-apple-Inconsolata-medium-normal-normal-*-26-*-*-*-m-0-iso10646-1")
  )
(defun font-medium ()
  (interactive)
  (set-default-font "-apple-Inconsolata-medium-normal-normal-*-18-*-*-*-m-0-iso10646-1")
  )
(defun font-normal ()
  (interactive)
  (set-default-font "-apple-Inconsolata-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
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
