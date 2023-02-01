
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
  (switch-to-buffer (other-buffer))
  )

(defun just-one-space-with-newline ()
  "Call just-one-space with a negative argument"
  (interactive)
  (just-one-space -1))
(global-set-key (kbd "M-1")     'just-one-space-with-newline)


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

;;(require 'browse-kill-ring) ;; from emacs-goodies
;;(global-set-key (kbd "C-c k") 'browse-kill-ring)

(autoload 'nuke-trailing-whitespace "whitespace" nil t)
(add-hook 'write-file-hooks 'nuke-trailing-whitespace)



(setq paren-face 'bold)
(setq paren-highlight-offscreen t)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(defun un-camelcase-word-at-point ()
  "un-camelcase the words in the region, replacing uppercase
   chars with the lowercase version preceded by an underscore.
   The first char, if capitalized (eg, PascalCase) is just
   downcased, no preceding underscore."
  (interactive)
  (save-excursion
    (let ((bounds (bounds-of-thing-at-point 'word)))
      (replace-regexp "\\([A-Z]\\)" "_\\1" nil
                      (1+ (car bounds)) (cdr bounds))
      (downcase-region (car bounds) (cdr bounds))
      )
    )
  )
(global-set-key (kbd "M-_") 'un-camelcase-word-at-point)


;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-
;;; But I really like lower ascii...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

(defun simplify-string-in-buffer (oldString newString)
  "replace string across the entire buffer"
  ;;(push-mark)
  (goto-char (point-min))
  (while (re-search-forward oldString nil t)
    (replace-match newString)
    (goto-char (point-min))
    )
  )

(defun simplify-characters-in-buffer ()
  "swaps extended characters for lower ascii alternatives."
  (interactive)
  (simplify-string-in-buffer "‘" "'")
  (simplify-string-in-buffer "’" "'")
  (simplify-string-in-buffer "“" "\"")
  (simplify-string-in-buffer "”" "\"")
  (simplify-string-in-buffer "…" "...")
  (simplify-string-in-buffer "–" "-")
  (simplify-string-in-buffer "—" "--")
  (simplify-string-in-buffer "•" "-")
  (simplify-string-in-buffer "" "(o)")
  (simplify-string-in-buffer "" "(o)")
  (simplify-string-in-buffer "¤" "(o)")
  (simplify-string-in-buffer " " " ")
  (simplify-string-in-buffer "​" " ")
  (simplify-string-in-buffer " " " ")
  (simplify-string-in-buffer "" ":(")
  (simplify-string-in-buffer "" "phone") ;; mystery charater; maybe a very small space?
  (simplify-string-in-buffer " " " ") ;; phone icon
  (simplify-string-in-buffer "·" "-")
  (simplify-string-in-buffer "●" "-")
  (simplify-string-in-buffer "⋅" "-")
  (simplify-string-in-buffer "﻿" " ")
  )


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
;;; editorconfig...
;;; -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=- -=-=-

;(add-to-list 'load-path (expand-file-name "~/devtools/emacs/site-lisp/editorconfig-emacs-master"))
;(require 'editorconfig)
;(editorconfig-mode 1)
