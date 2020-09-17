;;; protocols.el --- Protocol database access functions.
;; Copyright 2000,2001 by Dave Pearson <davep@davep.org>
;; $Revision: 1.3 $

;; protocols.el is free software distributed under the terms of the GNU
;; General Public Licence, version 2. For details see the file COPYING.

;;; Commentary:
;;
;; protocols.el provides a set of functions for accessing the protocol
;; details list.
;;
;; The latest protocols.el is always available from:
;;
;;   <URL:http://www.davep.org/emacs/#protocols.el>

;;; BUGS:
;;
;; o Large parts of this code look like large parts of the code you'll find
;;   in services.el, this is unfortunate and makes me cringe. However, I
;;   also wanted them to be totally independant of each other. Suggestions
;;   of how to sweetly remedy this situation are welcome.

;;; INSTALLATION:
;;
;; o Drop protocols.el somwehere into your `load-path'. Try your site-lisp
;;   directory for example (you might also want to byte-compile the file).
;;
;; o Add the following autoload statement to your ~/.emacs file:
;;
;;   (autoload 'protocols-lookup "protocols" "Perform a protocol lookup" t)

;;; Code:

;; Things we need:

(eval-when-compile
  (require 'cl))

;; Attempt to handle older/other emacs.

(eval-and-compile
  
  ;; If `line-beginning-position' isn't available provide one.
  (unless (fboundp 'line-beginning-position)
    (defun line-beginning-position (&optional n)
      "Return the `point' of the beginning of the current line."
      (save-excursion
        (beginning-of-line n)
        (point))))

  ;; If `line-end-position' isn't available provide one.
  (unless (fboundp 'line-end-position)
    (defun line-end-position (&optional n)
      "Return the `point' of the end of the current line."
      (save-excursion
        (end-of-line n)
        (point)))))

;; Main code.

(defsubst proto-name (proto)
  "Return the name of protocol PROTO."
  (car proto))

(defsubst proto-number (proto)
  "Return the number of protocol PROTO."
  (cadr proto))

(defsubst proto-aliases (proto)
  "Return the alias list of protocol PROTO."
  (cadr (cdr proto)))

(defun protocols-line-to-list (line)
  "Convert LINE from a string into a structured protocol list."
  (let ((words (split-string line)))
    (list
     (car words)
     (string-to-int (cadr words))
     (loop for s in (cddr words)
           while (not (= (aref s 0) ?#))
           collect s))))

(defun* protocols-read (&optional (file "/etc/protocols"))
  "Read the protocol list from FILE.

If FILE isn't supplied /etc/protocols is used."
  (when (file-readable-p file)
    (with-temp-buffer
      (insert-file-contents-literally file)
      (setf (point) (point-min))
      (loop until (eobp)
            do (setf (point) (line-beginning-position))
            unless (or (looking-at "^[ \t]*#") (looking-at "^[ \t]*$"))
            collect (protocols-line-to-list (buffer-substring (line-beginning-position) (line-end-position)))
            do (forward-line)))))

(defun* protocols-find-by-name (name &optional (protocols (protocols-read)))
  "Find the protocol whose name is NAME."
  (assoc name protocols))

(defun* protocols-find-by-number (number &optional (protocols (protocols-read)))
  "Find the protocol whose number is NUMBER."
  (loop for protocol in protocols
        when (= (proto-number protocol) number) return protocol))

(defun* protocols-find-by-alias (alias  &optional (protocols (protocols-read)))
  "Find the protocol that has an alias of ALIAS."
  (loop for protocol in protocols
        when (member alias (proto-aliases protocol)) return protocol))

;;;###autoload
(defun protocols-lookup (search)
  "Find a protocol and display its details."
  (interactive "sProtocol search: ")
  (let* ((protocols (protocols-read))
         (protocol (or (when (string-match "^[0-9]+$" search)
                         (protocols-find-by-number (string-to-int search) protocols))
                       (protocols-find-by-name search protocols)
                       (protocols-find-by-name (downcase search) protocols)
                       (protocols-find-by-name (upcase search) protocols)
                       (protocols-find-by-alias search protocols)
                       (protocols-find-by-alias (downcase search) protocols)
                       (protocols-find-by-alias (upcase search) protocols))))
    (if protocol
        (message "Protocol: %s  ID: %d  Aliases: %s"
                 (proto-name protocol)
                 (proto-number protocol)
                 (with-output-to-string
                     (loop for alias in (proto-aliases protocol)
                           do (princ alias) (princ " "))))
      (error "Can't find a protocol matching \"%s\"" search))))

(provide 'protocols)

;;; protocols.el ends here.
