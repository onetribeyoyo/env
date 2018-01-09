;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;; Postscript printing
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;;
;; About IP printers and cygwin/windows...
;;
;; The printer-name variable must be set to a valid UNC.  You can't use a
;; port.  So to use an IP printer you'll have to share it first and give it a
;; name.
;;
;; '(printer-name "//stpprn02/GDT843709P")
;; '(printer-name "//stpprn02/GDT844020P")
;; '(ps-line-number-step (quote zebra))


;; defaults
(setq ps-font-size 9
      ps-header-font-size 8
      ps-header-title-font-size 8
      ;;ps-header-lines 1 ;; only use the filename and page number
      ps-header-offset 18 ;; margin between header and text in 72nds of an inch
      ps-left-margin 36   ;; left margin in 72nds
      ps-right-margin 36  ;; right margin in 72nds
      )

;; Simple print buffer command
;;
(defun sprint-buffer ()
  "Output a postscript file using the defaults."
  (interactive)
  (ps-print-buffer "~/temp.ps")
  (shell-command "open /Applications/Preview.app ~/temp.ps")
  )

;; Simple print region command
;;
(defun sprint-region ()
  "Output a postscript file using the defaults."
  (interactive)
  (ps-print-region (mark) (point) "~/temp.ps")
  (shell-command "open /Applications/Preview.app ~/temp.ps"))

;; Setup the postscript settings
;;
(defun sprint-setup (use-headers use-line-numbers use-landscape)
  (interactive
   (list (y-or-n-p "Headers?")
         (y-or-n-p "Line numbers?")
         (y-or-n-p "Landscape?")))
  (setq ps-print-headers use-headers)
  (setq ps-line-number use-line-numbers)
  (setq ps-landscape-mode use-landscape)
  )
