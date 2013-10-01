;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Win32 details...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(setq w32-num-mouse-buttons 2)
(set-message-beep 'ok)

(require 'gnuserv)
;; Disable the multiple frame crap.
(setq gnuserv-frame (selected-frame))
(gnuserv-start)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Fonts, window size and position...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;; -MAKER-FAMILY-WEIGHT-SLANT-WIDTHTYPE-STYLE-PIXELS-HEIGHT-HORIZ-VERT-SPACING-WIDTH-CHARSET

;;(setq w32-enable-synthesized-fonts t)  ; This must be done before font settings! (Emacs 20.x)

(cond
 (t (set-default-font "-*-Inconsolata-normal-r-*-*-17-*-*-*-c-*-*-")
    (setq amiller-frame-top           0
          amiller-frame-left        690
          amiller-frame-width       132
          amiller-frame-height       67
          amiller-ecb-frame-left    222
          amiller-ecb-browser-width  45
          amiller-ecb-frame-width   184
          )
    (set-frame-width    (selected-frame) amiller-frame-width)
    (set-frame-height   (selected-frame) amiller-frame-height)
    (set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)
    )

 (nil (set-default-font "-*-Bitstream Vera Sans Mono-normal-r-*-*-17-*-*-*-c-*-*-")
    (setq amiller-frame-top           0
          amiller-frame-left        690
          amiller-frame-width       132
          amiller-frame-height       40
          amiller-ecb-frame-left    410
          amiller-ecb-browser-width  45
          amiller-ecb-frame-width   160
          )
    (set-frame-width    (selected-frame) amiller-frame-width)
    (set-frame-height   (selected-frame) amiller-frame-height)
    (set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)
    )

 (nil (set-default-font "-*-Courier New-normal-r-*-*-17-*-*-*-c-*-*-")
    (setq amiller-frame-top           0
          amiller-frame-left        540
          amiller-frame-width       132
          amiller-frame-height       57
          amiller-ecb-frame-left    260
          amiller-ecb-browser-width  45
          amiller-ecb-frame-width   160
          )
    (set-frame-width    (selected-frame) amiller-frame-width)
    (set-frame-height   (selected-frame) amiller-frame-height)
    (set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)
    )

 (nil (set-default-font "-*-Lucida Sans Typewriter-normal-r-*-*-15-*-*-*-c-*-*-")
    (setq amiller-frame-top           0
          amiller-frame-left        677
          amiller-frame-width       132
          amiller-frame-height       67
          amiller-ecb-frame-left      0
          amiller-ecb-browser-width  70
          amiller-ecb-frame-width   207
          )
    (set-frame-width    (selected-frame) amiller-frame-width)
    (set-frame-height   (selected-frame) amiller-frame-height)
    (set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)
    )

 (nil (set-default-font "-*-Lucida Sans Typewriter-normal-r-*-*-16-*-*-*-c-*-*-")
      (setq amiller-frame-top           0
            amiller-frame-left        715
            amiller-frame-width       115
            amiller-frame-height       63
            amiller-ecb-browser-width  55
            amiller-ecb-frame-left    160
            )
      (setq amiller-ecb-frame-width (+ amiller-frame-width amiller-ecb-browser-width))
      (set-frame-width (selected-frame) amiller-frame-width)
      (set-frame-height (selected-frame) amiller-frame-height)
      (set-frame-position (selected-frame) amiller-frame-left amiller-frame-top)
      )

 ;; save!!!
 (nil  (set-default-font "-*-Lucida Sans Typewriter-normal-r-*-*-16-*-*-*-c-*-*-")
       (setq default-frame-alist '((top . 0) (left . 715) (width . 115) (height . 63))
             amiller-ecb-activated-full-screen-width 161
             amiller-before-ecb-activated-screen-x 715
             )
       )

 (nil (set-default-font "-*-Lucida Sans Typewriter-normal-r-*-*-15-*-*-*-c-*-*-")0
      (setq default-frame-alist '((top . 0) (left . 835) (width . 115) (height . 66))
            amiller-ecb-activated-full-screen-width 206
            amiller-before-ecb-activated-screen-x 835
            )
      )

 (nil (set-default-font "-*-Lucida Sans Typewriter-normal-r-*-*-12-*-*-*-c-*-*-")
      (set-face-font 'italic "-*-Lucida Sans Typewriter-normal-i-*-*-11-*-*-*-c-*-*-")
      (set-face-font 'bold "-*-Lucida Sans Typewriter-demibold-r-*-*-11-*-*-*-c-*-*-")
      (set-face-font 'bold-italic "-*-Lucida Sans Typewriter-demibold-i-*-*-11-*-*-*-c-*-*-")
      (setq default-frame-alist '((top . 0) (left . 427) (width . 115) (height . 75)))
      )
 )

;;(set-frame-width    (selected-frame) 184)
;;(set-frame-height   (selected-frame) 63)
;;(set-frame-position (selected-frame) 222 0)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; Modes...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(defun dired-w32-open ()
  "Function to open the viewer associated with that filetype"
  (interactive)
  (w32-shell-execute "open" (dired-get-filename))
  )

(defun amiller-dired-mode-hook ()
  (local-set-key "\C-cf"  'find-dired)
  (local-set-key "\C-cg"  'find-grep-dired)
  (local-set-key "\C-cx"  'dired-w32-open)
  )
(add-hook 'dired-mode-hook 'amiller-dired-mode-hook)
