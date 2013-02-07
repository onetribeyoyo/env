;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Fonts...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;; -MAKER-FAMILY-WEIGHT-SLANT-WIDTHTYPE-STYLE-PIXELS-HEIGHT-HORIZ-VERT-SPACING-WIDTH-CHARSET

(setq w32-enable-italics t)    ; This must be done before font settings! (Emacs 20.x)
;;(set-default-font "-*-Courier New-normal-r-*-*-14-*-*-*-c-*-iso8859-1")
;;(set-default-font "-*-Courier New-normal-r-*-*-12-*-*-*-c-*-iso8859-1")
;;(set-default-font "-*-Courier New-normal-r-*-*-13-*-*-*-c-*-iso8859-1")
;;(set-default-font "-*-Courier New-normal-r-*-*-12-*-*-*-c-*-iso8859-1")

;;(set-face-font 'italic "-*-Courier New-normal-i-*-*-15-*-*-*-c-*-iso8859-1")
;;(set-face-font 'bold-italic "-*-Courier New-bold-i-*-*-15-*-*-*-c-*-iso8859-1")


(setq w32-use-w32-font-dialog nil)
(w32-select-font)

;; Courier        -- "-raster-Courier-normal-r-normal-normal-15-112-96-96-c-*-iso10646-1"
;; Courier New    -- "-outline-Courier New-normal-r-normal-normal-15-112-96-96-c-*-iso10646-1"
;; Lucida Console -- "-outline-Lucida Console-normal-r-normal-normal-15-112-96-96-c-*-iso10646-1"

;;(set-default-font "-raster-Courier-normal-r-normal-normal-15-112-96-96-c-*-iso10646-1")
;;(set-default-font "-outline-Courier New-normal-r-normal-normal-15-112-96-96-c-*-iso10646-1")
;;(set-default-font "-outline-Lucida Console-normal-r-normal-normal-15-112-96-96-c-*-iso10646-1")
;;(set-default-font "-outline-Lucida Console-normal-r-normal-normal-13-112-96-96-c-*-iso10646-1")
(set-default-font "-*-Lucida Console-Lucida Console-normal-r-*-*-15-112-96-96-c-*-iso10646-1-")
(set-face-font 'italic "-outline-Lucida Console-normal-i-normal-normal-13-97-96-96-c-*-iso10646-1")
(set-face-font 'bold   "-outline-Lucida Console-bold-r-normal-normal-13-97-96-96-c-*-iso10646-1")
(set-face-font 'bold-italic "-outline-Lucida Console-bold-i-normal-normal-13-97-96-96-c-*-iso10646-1")


;;"-raster-Oloron Program-normal-r-normal-normal-12-90-96-96-c-*-*-*"
;;"-raster-ProFontWindows-normal-r-normal-normal-16-120-96-96-c-*-iso10646-1"
;;"-outline-Comic Sans MS-bold-r-normal-normal-15-112-96-96-p-*-iso10646-1"
;;"-outline-Monaco-normal-r-normal-normal-13-97-96-96-p-*-iso10646-1"
;;"-outline-Lucida Sans Typewriter-normal-r-normal-normal-13-97-96-96-c-*-iso10646-1"
;;"-outline-Lucida Sans Typewriter-normal-i-normal-normal-12-90-96-96-c-*-iso10646-1"
;;"-outline-Lucida Sans Typewriter-demibold-r-normal-normal-12-90-96-96-c-*-iso10646-1"
;;"-outline-Lucida Sans Typewriter-demibold-i-normal-normal-12-90-96-96-c-*-iso10646-1"

;;(set-default-font "-*-Courier New-normal-r-*-*-14-*-*-*-c-*-iso8859-1")
;;(set-face-font 'bold "-*-Courier New-bold-r-*-*-14-*-*-*-c-*-iso8859-1")
;;(set-face-font 'italic "-*-Courier New-normal-i-*-*-14-*-*-*-c-*-iso8859-1")
;;(set-face-font 'bold-italic "-*-Courier New-bold-i-*-*-14-*-*-*-c-*-iso8859-1")


;;(set-default-font "-*-Courier-normal-r-*-*-14-*-*-*-c-*-iso8859-1")
;;(set-face-font 'bold "-*-Courier-bold-r-*-*-14-*-*-*-c-*-iso8859-1")
;;(set-face-font 'italic "-*-Courier-normal-i-*-*-14-*-*-*-c-*-iso8859-1")
;;(set-face-font 'bold-italic "-*-Courier-bold-i-*-*-14-*-*-*-c-*-iso8859-1")

;;(set-default-font "-*-Courier New-normal-r-*-*-12-*-*-*-c-*-iso8859-1")

;;;;;;;;;;(set-default-font "-*-ProFontWindows-normal-r-*-*-12-*-*-*-c-*-iso10646-1")
;;;;;;;;;;(set-face-font 'italic "-*-ProFontWindows-normal-i-*-*-12-*-*-*-c-*-iso10646-1")
;;;;;;;;;;(set-face-font 'bold-italic "-*-ProFontWindows-bold-i-*-*-12-*-*-*-c-*-iso10646-1")

;;(set-default-font "-*-ProFontWindows-normal-r-*-*-14-*-*-*-c-*-iso10646-1")
;;(set-default-font "-*-ProFontWindows-normal-r-*-*-16-*-*-*-c-*-iso10646-1")
;;(set-default-font "-outline-ProFontWindows-normal-r-normal-normal-20-150-96-96-c-*-iso10646-1")

;;"-raster-Oloron Program-normal-r-normal-normal-12-90-96-96-c-*-*-*"


;(set-default-font "-outline-Lucida Sans Typewriter-normal-r-normal-normal-13-97-96-96-c-*-iso10646-1")
;(set-face-font 'italic "-outline-Lucida Sans Typewriter-normal-i-normal-normal-12-90-96-96-c-*-iso10646-1")
;(set-face-font 'bold "-outline-Lucida Sans Typewriter-demibold-r-normal-normal-12-90-96-96-c-*-iso10646-1")
;(set-face-font 'bold-italic "-outline-Lucida Sans Typewriter-demibold-i-normal-normal-12-90-96-96-c-*-iso10646-1"


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;;  Window size and position...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(set-frame-width    (selected-frame) 115)
(set-frame-height   (selected-frame) 66)
(set-frame-position (selected-frame) 835 0)

(setq default-frame-alist '((top . 0) (left . 320) (width . 115) (height . 57))) ; For 14 pt font.
;;(setq default-frame-alist '((top . 0) (left . 318) (width . 102) (height . 57))) ; For 15 pt font.
;;(setq default-frame-alist '((top . 0) (left . 320) (width . 115) (height . 57))) ; For 14 pt Courier New
;;(setq default-frame-alist '((top . 0) (left . 318) (width . 102) (height . 57))) ; For 15 pt Courier New

(setq default-frame-alist '((top . 0) (left . 427) (width . 115) (height . 75))) ; For Lucida Sans Typewriter
