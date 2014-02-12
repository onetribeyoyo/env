;;; ----10--------20--------30--------40--------50--------60--------70--------80--------90-------100-------110-------120-------130-------140-------150-------160-------170-------180
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Fonts, window size and position...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-


;;(set-frame-width    (selected-frame) 250)
;;(set-frame-height   (selected-frame) 74)
;;(set-frame-position (selected-frame) 619 0)

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




(cond

 (nil ;; for 17" macbook pro... ecb layout: amiller-left
  (set-default-font "-apple-Inconsolata-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
  (setq amiller-frame-top           0 ;; pixels
        amiller-frame-left       1000 ;; pixels
        amiller-frame-width       150 ;; characters
        amiller-frame-height       76 ;; rows
        amiller-ecb-frame-left    130 ;; pixels
        amiller-ecb-browser-width  45 ;; characters
        amiller-ecb-frame-width   250 ;; ???
        )
  (setq amiller-frame-left        619 ;; pixels
        amiller-frame-width       180 ;; characters
        )
  )

 (t ;; on a bigger (27") monitor... for ecb layout: amiller-left
  ;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-13-*-*-*-m-0-iso10646-1")
  (set-default-font "-apple-monaco-medium-r-normal--12-0-72-72-m-0-iso10646-1") ; default mac font!
  (setq amiller-frame-top           0 ;; pixels
        amiller-frame-left       1000 ;; pixels
        amiller-frame-width       132 ;; characters
        amiller-frame-height       76 ;; rows
        amiller-ecb-frame-left    347 ;; pixels
        amiller-ecb-browser-width  45 ;; characters
        amiller-ecb-frame-width   219 ;; ???
        )
  ;; same size window for ecb or not
  (setq amiller-frame-left        133 ;; pixels
        amiller-frame-width       219 ;; characters
        )
  )





 (nil ;; for ecb layout: amiller-left-right
  (setq amiller-frame-top           0 ;; pixels
        amiller-frame-left       1000 ;; pixels
        amiller-frame-width       132 ;; characters
        amiller-frame-height       74 ;; rows
        amiller-ecb-frame-left      0 ;; pixels
        amiller-ecb-browser-width  45 ;; characters
        amiller-ecb-frame-width   268 ;; ???
        )
  )

 (nil ;; for ecb layout: amiller-left and default mac font
  (setq amiller-frame-top           0 ;; pixels
        amiller-frame-left       1000 ;; pixels
        amiller-frame-width       132 ;; characters
        amiller-frame-height       74 ;; rows
        amiller-ecb-frame-left    477 ;; pixels
        amiller-ecb-browser-width  45 ;; characters
        amiller-ecb-frame-width   200 ;; ???
        )
  )

 (nil ;; for ecb layout: amiller-left and andale mono font
  (set-default-font "-apple-andale mono-medium-r-normal--14-100-72-72-m-100-iso10646-1")
  (setq amiller-frame-top           0 ;; pixels
        amiller-frame-left       1000 ;; pixels
        amiller-frame-width       132 ;; characters
        amiller-frame-height       74 ;; rows
        amiller-ecb-frame-left    287 ;; pixels
        amiller-ecb-browser-width  45 ;; characters
        amiller-ecb-frame-width   200 ;; ???
        )
  )

 (nil ;; for ecb layout: amiller-left and andale mono font
  ;;(set-default-font "-apple-andale mono-medium-r-normal--14-100-72-72-m-100-iso10646-1")

  ;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-14-*-*-*-m-0-iso10646-1")
  ;;(set-default-font "-apple-Inconsolata-medium-normal-normal-*-15-*-*-*-m-0-iso10646-1")
  (set-default-font "-apple-Inconsolata-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1")

  (setq amiller-frame-top           0 ;; pixels
        amiller-frame-left       1000 ;; pixels
        amiller-frame-width       132 ;; characters
        amiller-frame-height       71 ;; rows
        amiller-ecb-frame-left    133 ;; pixels
        amiller-ecb-browser-width  45 ;; characters
        amiller-ecb-frame-width   219 ;; ???
        )
  ;; same size window for ecb or not
  (setq amiller-frame-left        133 ;; pixels
        amiller-frame-width       219 ;; characters
        )
  )

 (nil ;; for ecb layout: amiller-left and the default font (12pt monaco)
  (setq amiller-frame-top           0 ;; pixels
        amiller-frame-left       1000 ;; pixels
        amiller-frame-width       150 ;; characters
        amiller-frame-height       76 ;; rows
        amiller-ecb-frame-left    130 ;; pixels
        amiller-ecb-browser-width  45 ;; characters
        amiller-ecb-frame-width   250 ;; ???
        )
  ;; same size window for ecb or not
  (setq amiller-frame-left        133 ;; pixels
        amiller-frame-width       219 ;; characters
        )
  )

 (nil
  (set-default-font "-apple-monaco-medium-r-normal--14-0-72-72-m-0-iso10646-1")
  (setq amiller-frame-top           0 ;; pixels
        amiller-frame-left       1000 ;; pixels
        amiller-frame-width       132 ;; characters
        amiller-frame-height       74 ;; rows
        amiller-ecb-frame-left    140 ;; pixels
        amiller-ecb-browser-width  45 ;; characters
        amiller-ecb-frame-width   219 ;; ???
        )
  )
 )
(set-frame-width    (selected-frame) amiller-frame-width)
(set-frame-height   (selected-frame) amiller-frame-height)
(set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)

;; (set-frame-parameter nil 'alpha '(<active> [<inactive>]))
(add-to-list 'default-frame-alist '(alpha . (100 95))) ;; 89

;;; -MAKER-FAMILY-WEIGHT-SLANT-WIDTHTYPE-STYLE-PIXELS-HEIGHT-HORIZ-VERT-SPACING-WIDTH-CHARSET
