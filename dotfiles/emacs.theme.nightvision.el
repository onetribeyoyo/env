(set-cursor-color     "red")            ; 255   0   0
;;(set-cursor-color     "firebrick")

;; original night vision fg / bg
;;(set-foreground-color "gray94")         ; 240 240 240
;;(set-background-color "gray22")         ;  79  79  79


;; for dev...
(set-foreground-color "grey64")
(set-background-color "gray17")
(set-face-background 'region "MidnightBlue")

;; for display...
;;(set-foreground-color "grey74")
;;(set-background-color "gray12")

(set-face-background vvb-face "gray22")
(set-face-background 'show-paren-match-face "IndianRed")

(custom-set-faces

 '(ecb-default-general-face (
                             (
                              ((class color) (background dark) )
                              ;;(:height 0.95 :bold t)
                              (:height 0.95 :bold nil)
                              ;;(:height 0.95 :family "Tahoma" :bold nil)
                              )
                             )
                            )

 ;; fundamental colours for source code
 ;; (increasing vibrancy of blue)
 '(jde-java-font-lock-code-face      ((t (:bold nil))))

 '(font-lock-function-name-face      ((t (:foreground "LightGoldenrod1" :bold nil :italic nil))))
 '(font-lock-variable-name-face      ((t (:foreground "LightGoldenrod1" :bold t   :italic nil))))
 '(font-lock-type-face               ((t (:foreground "LightGoldenrod1" :bold t   :italic nil))))
 '(jde-java-font-lock-package-face   ((t (:foreground "LightGoldenrod1" :bold t   :italic nil))))

 '(jde-java-font-lock-public-face    ((t (:foreground "khaki" :bold nil :italic nil))))
 '(jde-java-font-lock-protected-face ((t (:foreground "khaki" :bold nil :italic nil))))
 '(jde-java-font-lock-private-face   ((t (:foreground "khaki" :bold nil :italic nil))))

 ;; secondary colours, paler than fundamentals for language level constructs
 ;; (increasing vibrancy of plum)
 '(jde-java-font-lock-modifier-face ((t (:foreground "gray94" :bold nil :italic nil))))
 '(font-lock-builtin-face           ((t (:foreground "gray94" :bold nil :italic nil))))
 '(font-lock-keyword-face           ((t (:foreground "gray94" :bold nil :italic nil))))

 ;; accent colours for constants, etc.
 ;; (increasing vibrancy of yellow)
 '(font-lock-string-face            ((t (:foreground "yellow" :bold nil :italic nil))))
 '(jde-java-font-lock-constant-face ((t (:foreground "yellow" :bold nil :italic nil))))
 '(font-lock-reference-face         ((t (:foreground "yellow" :bold nil :italic nil))))
 '(jde-java-font-lock-number-face   ((t (:foreground "yellow" :bold t   :italic nil))))

 ;; tertiary colours, softer than fundamentals, for documentation
 '(font-lock-comment-face          ((t (:foreground "PaleGreen3" :bold nil :italic t))))
 '(font-lock-doc-face              ((t (:foreground "PaleGreen3" :bold nil :italic t))))
 '(jde-java-font-lock-pre-face     ((t (:foreground "PaleGreen4" :bold t   :italic nil :underline nil))))
 '(jde-java-font-lock-doc-tag-face ((t (:foreground "PaleGreen2" :bold nil :italic t :underline nil))))
 '(jde-java-font-lock-link-face    ((t (:foreground "PaleGreen2" :bold nil :italic t :underline t))))
 )
