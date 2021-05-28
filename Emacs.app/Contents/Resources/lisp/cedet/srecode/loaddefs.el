;;; loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "srecode/compile" "compile.el" "f4aa4cd5046a41983300ab2fed005468")
;;; Generated autoloads from compile.el

(autoload 'srecode-compile-templates "srecode/compile" "\
Compile a semantic recode template file into a mode-local variable." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/compile"
;;;;;;  "compile.el" (0 0 0 0))
;;; Generated autoloads from compile.el

(register-definition-prefixes "srecode/compile" '("srecode-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/cpp" "cpp.el" "d26f522db18e901213fe76ce9abf9e41")
;;; Generated autoloads from cpp.el

(autoload 'srecode-semantic-handle-:c "srecode/cpp" "\
Add macros into the dictionary DICT based on the current C file.
Adds the following:
FILENAME_SYMBOL - filename converted into a C compat symbol.
HEADER - Shown section if in a header file.

\(fn DICT)" nil nil)

(autoload 'srecode-semantic-handle-:cpp "srecode/cpp" "\
Add macros into the dictionary DICT based on the current c file.
Calls `srecode-semantic-handle-:c'.
Also adds the following:
 - nothing -

\(fn DICT)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/cpp"
;;;;;;  "cpp.el" (0 0 0 0))
;;; Generated autoloads from cpp.el

(register-definition-prefixes "srecode/cpp" '("srecode-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/document" "document.el" "3c8d4c5a95e968e9fc91842d1045a96a")
;;; Generated autoloads from document.el

(autoload 'srecode-document-insert-comment "srecode/document" "\
Insert some comments.
Whack any comments that may be in the way and replace them.
If the region is active, then insert group function comments.
If the cursor is in a comment, figure out what kind of comment it is
  and replace it.
If the cursor is in a function, insert a function comment.
If the cursor is on a one line prototype, then insert post-fcn comments." t nil)

(autoload 'srecode-document-insert-function-comment "srecode/document" "\
Insert or replace a function comment.
FCN-IN is the Semantic tag of the function to add a comment too.
If FCN-IN is not provided, the current tag is used instead.
It is assumed that the comment occurs just in front of FCN-IN.

\(fn &optional FCN-IN)" t nil)

(autoload 'srecode-document-insert-variable-one-line-comment "srecode/document" "\
Insert or replace a variable comment.
VAR-IN is the Semantic tag of the function to add a comment too.
If VAR-IN is not provided, the current tag is used instead.
It is assumed that the comment occurs just after VAR-IN.

\(fn &optional VAR-IN)" t nil)

(autoload 'srecode-document-insert-group-comments "srecode/document" "\
Insert group comments around the active between BEG and END.
If the region includes only parts of some tags, expand out
to the beginning and end of the tags on the region.
If there is only one tag in the region, complain.

\(fn BEG END)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/document"
;;;;;;  "document.el" (0 0 0 0))
;;; Generated autoloads from document.el

(register-definition-prefixes "srecode/document" '("srecode-document-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/el" "el.el" "6fa52fdcc53355e4c8f95623f06936eb")
;;; Generated autoloads from el.el

(autoload 'srecode-semantic-handle-:el "srecode/el" "\
Add macros into the dictionary DICT based on the current Emacs Lisp file.
Adds the following:
  PRENAME - The common name prefix of this file.

\(fn DICT)" nil nil)

(autoload 'srecode-semantic-handle-:el-custom "srecode/el" "\
Add macros into the dictionary DICT based on the current Emacs Lisp file.
Adds the following:
  GROUP - The `defgroup' name we guess you want for variables.
  FACEGROUP - The `defgroup' name you might want for faces.

\(fn DICT)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/el" "el.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from el.el

(register-definition-prefixes "srecode/el" '("srecode-semantic-apply-tag-to-dict"))

;;;***

;;;***

;;;### (autoloads nil "srecode/expandproto" "expandproto.el" "8dd7cd6a450ef7530137106bfb2231c5")
;;; Generated autoloads from expandproto.el

(autoload 'srecode-insert-prototype-expansion "srecode/expandproto" "\
Insert get/set methods for the current class." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/expandproto"
;;;;;;  "expandproto.el" (0 0 0 0))
;;; Generated autoloads from expandproto.el

(register-definition-prefixes "srecode/expandproto" '("srecode-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/getset" "getset.el" "8acd2908b9821d348aeef56312e555ef")
;;; Generated autoloads from getset.el

(autoload 'srecode-insert-getset "srecode/getset" "\
Insert get/set methods for the current class.
CLASS-IN is the semantic tag of the class to update.
FIELD-IN is the semantic tag, or string name, of the field to add.
If you do not specify CLASS-IN or FIELD-IN then a class and field
will be derived.

\(fn &optional CLASS-IN FIELD-IN)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/getset"
;;;;;;  "getset.el" (0 0 0 0))
;;; Generated autoloads from getset.el

(register-definition-prefixes "srecode/getset" '("srecode-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/insert" "insert.el" "df3e882a2e8ebd2ecd5853fe0524ccfa")
;;; Generated autoloads from insert.el

(autoload 'srecode-insert "srecode/insert" "\
Insert the template TEMPLATE-NAME into the current buffer at point.
DICT-ENTRIES are additional dictionary values to add.

\(fn TEMPLATE-NAME &rest DICT-ENTRIES)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/insert"
;;;;;;  "insert.el" (0 0 0 0))
;;; Generated autoloads from insert.el

(register-definition-prefixes "srecode/insert" '("srecode-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/java" "java.el" "34257782c57968b2795fb6f82909a5dd")
;;; Generated autoloads from java.el

(autoload 'srecode-semantic-handle-:java "srecode/java" "\
Add macros into the dictionary DICT based on the current java file.
Adds the following:
FILENAME_AS_PACKAGE - file/dir converted into a java package name.
FILENAME_AS_CLASS - file converted to a Java class name.

\(fn DICT)" nil nil)

;;;***

;;;### (autoloads nil "srecode/map" "map.el" "02b705e686ffc6e8d5a19dc2e7d26183")
;;; Generated autoloads from map.el

(autoload 'srecode-get-maps "srecode/map" "\
Get a list of maps relevant to the current buffer.
Optional argument RESET forces a reset of the current map.

\(fn &optional RESET)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/map"
;;;;;;  "map.el" (0 0 0 0))
;;; Generated autoloads from map.el

(register-definition-prefixes "srecode/map" '("srecode-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/mode" "mode.el" "6b347ae857e8bb3720b78fbf05d3d826")
;;; Generated autoloads from mode.el

(autoload 'srecode-minor-mode "srecode/mode" "\
Toggle srecode minor mode.

If called interactively, toggle `Srecode minor mode'.  If the prefix
argument is positive, enable the mode, and if it is zero or negative,
disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when it is
disabled.

The minor mode can be turned on only if semantic feature is
available and the current buffer was set up for parsing.  Return
non-nil if the minor mode is enabled.

\\{srecode-mode-map}

\(fn &optional ARG)" t nil)

(defvar global-srecode-minor-mode nil "\
Non-nil if Global Srecode minor mode is enabled.
See the `global-srecode-minor-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-srecode-minor-mode'.")

(custom-autoload 'global-srecode-minor-mode "srecode/mode" nil)

(autoload 'global-srecode-minor-mode "srecode/mode" "\
Toggle global use of srecode minor mode.

If called interactively, toggle `Global Srecode minor mode'.  If the
prefix argument is positive, enable the mode, and if it is zero or
negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when it is
disabled.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/mode"
;;;;;;  "mode.el" (0 0 0 0))
;;; Generated autoloads from mode.el

(register-definition-prefixes "srecode/mode" '("srecode-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/srt" "srt.el" "3be7003c5949a20ec955d298797f97a8")
;;; Generated autoloads from srt.el

(autoload 'srecode-semantic-handle-:srt "srecode/srt" "\
Add macros into the dictionary DICT based on the current SRT file.
Adds the following:
ESCAPE_START - This files value of escape_start
ESCAPE_END - This files value of escape_end
MODE - The mode of this buffer.  If not declared yet, guess.

\(fn DICT)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/srt"
;;;;;;  "srt.el" (0 0 0 0))
;;; Generated autoloads from srt.el

(register-definition-prefixes "srecode/srt" '("srecode-read-"))

;;;***

;;;***

;;;### (autoloads nil "srecode/template" "template.el" "38598c0b42427b93176d162969233d0f")
;;; Generated autoloads from template.el

(autoload 'srecode-template-setup-parser "srecode/template" "\
Setup buffer for parse." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/template"
;;;;;;  "template.el" (0 0 0 0))
;;; Generated autoloads from template.el

(register-definition-prefixes "srecode/template" '("semantic-tag-components"))

;;;***

;;;***

;;;### (autoloads nil "srecode/texi" "texi.el" "c219f032e4efe9166cef58cc1ab61a30")
;;; Generated autoloads from texi.el

(autoload 'srecode-semantic-handle-:texi "srecode/texi" "\
Add macros into the dictionary DICT based on the current texinfo file.
Adds the following:
  LEVEL - chapter, section, subsection, etc
  NEXTLEVEL - One below level

\(fn DICT)" nil nil)

(autoload 'srecode-semantic-handle-:texitag "srecode/texi" "\
Add macros into the dictionary DICT based on the current :tag file.
Adds the following:
  TAGDOC - Texinfo formatted doc string for :tag.

\(fn DICT)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "srecode/texi"
;;;;;;  "texi.el" (0 0 0 0))
;;; Generated autoloads from texi.el

(register-definition-prefixes "srecode/texi" '("semantic-insert-foreign-tag" "srecode-texi-"))

;;;***

;;;***

(provide 'loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; loaddefs.el ends here
