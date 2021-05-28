;;; erc-loaddefs.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:


;;;### (autoloads nil "erc-autoaway" "erc-autoaway.el" "2bbc75c042c10dfe72221a137718a11a")
;;; Generated autoloads from erc-autoaway.el
(autoload 'erc-autoaway-mode "erc-autoaway")

;;;### (autoloads "actual autoloads are elsewhere" "erc-autoaway"
;;;;;;  "erc-autoaway.el" (0 0 0 0))
;;; Generated autoloads from erc-autoaway.el

(register-definition-prefixes "erc-autoaway" '("erc-auto"))

;;;***

;;;***

;;;### (autoloads nil "erc-button" "erc-button.el" "abdf9636b31058e125ab2f3f84590701")
;;; Generated autoloads from erc-button.el
(autoload 'erc-button-mode "erc-button" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-button" "erc-button.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-button.el

(register-definition-prefixes "erc-button" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-capab" "erc-capab.el" "54ae63197e5883fa7fb43f60b5ee231e")
;;; Generated autoloads from erc-capab.el
(autoload 'erc-capab-identify-mode "erc-capab" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-capab" "erc-capab.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-capab.el

(register-definition-prefixes "erc-capab" '("erc-capab-identify-"))

;;;***

;;;***

;;;### (autoloads nil "erc-dcc" "erc-dcc.el" "1cc58abc39c589322761c4e2c6b4bba0")
;;; Generated autoloads from erc-dcc.el
(autoload 'erc-dcc-mode "erc-dcc")

(autoload 'erc-cmd-DCC "erc-dcc" "\
Parser for /dcc command.
This figures out the dcc subcommand and calls the appropriate routine to
handle it.  The function dispatched should be named \"erc-dcc-do-FOO-command\",
where FOO is one of CLOSE, GET, SEND, LIST, CHAT, etc.

\(fn CMD &rest ARGS)" nil nil)

(autoload 'pcomplete/erc-mode/DCC "erc-dcc" "\
Provide completion for the /DCC command." nil nil)

(defvar erc-ctcp-query-DCC-hook '(erc-ctcp-query-DCC) "\
Hook variable for CTCP DCC queries.")

(autoload 'erc-ctcp-query-DCC "erc-dcc" "\
The function called when a CTCP DCC request is detected by the client.
It examines the DCC subcommand, and calls the appropriate routine for
that subcommand.

\(fn PROC NICK LOGIN HOST TO QUERY)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-dcc" "erc-dcc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-dcc.el

(register-definition-prefixes "erc-dcc" '("erc-" "pcomplete/erc-mode/"))

;;;***

;;;***

;;;### (autoloads nil "erc-desktop-notifications" "erc-desktop-notifications.el"
;;;;;;  "af5df9a3c86c20196a60aaec668a2b2f")
;;; Generated autoloads from erc-desktop-notifications.el
(autoload 'erc-notifications-mode "erc-desktop-notifications" "" t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-desktop-notifications"
;;;;;;  "erc-desktop-notifications.el" (0 0 0 0))
;;; Generated autoloads from erc-desktop-notifications.el

(register-definition-prefixes "erc-desktop-notifications" '("erc-notifications-"))

;;;***

;;;***

;;;### (autoloads nil "erc-ezbounce" "erc-ezbounce.el" "cb4fc7855ff929c885d369364d2a4264")
;;; Generated autoloads from erc-ezbounce.el

(autoload 'erc-cmd-ezb "erc-ezbounce" "\
Send EZB commands to the EZBouncer verbatim.

\(fn LINE &optional FORCE)" nil nil)

(autoload 'erc-ezb-get-login "erc-ezbounce" "\
Return an appropriate EZBounce login for SERVER and PORT.
Look up entries in `erc-ezb-login-alist'.  If the username or password
in the alist is nil, prompt for the appropriate values.

\(fn SERVER PORT)" nil nil)

(autoload 'erc-ezb-lookup-action "erc-ezbounce" "\


\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-notice-autodetect "erc-ezbounce" "\
React on an EZBounce NOTICE request.

\(fn PROC PARSED)" nil nil)

(autoload 'erc-ezb-identify "erc-ezbounce" "\
Identify to the EZBouncer server.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-init-session-list "erc-ezbounce" "\
Reset the EZBounce session list to nil.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-end-of-session-list "erc-ezbounce" "\
Indicate the end of the EZBounce session listing.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-add-session "erc-ezbounce" "\
Add an EZBounce session to the session list.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-select "erc-ezbounce" "\
Select an IRC server to use by EZBounce, in ERC style.

\(fn MESSAGE)" nil nil)

(autoload 'erc-ezb-select-session "erc-ezbounce" "\
Select a detached EZBounce session." nil nil)

(autoload 'erc-ezb-initialize "erc-ezbounce" "\
Add EZBouncer convenience functions to ERC." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-ezbounce"
;;;;;;  "erc-ezbounce.el" (0 0 0 0))
;;; Generated autoloads from erc-ezbounce.el

(register-definition-prefixes "erc-ezbounce" '("erc-ezb-"))

;;;***

;;;***

;;;### (autoloads nil "erc-fill" "erc-fill.el" "d36e49795b74c671abf485a2c1fda7ab")
;;; Generated autoloads from erc-fill.el
(autoload 'erc-fill-mode "erc-fill" nil t)

(autoload 'erc-fill "erc-fill" "\
Fill a region using the function referenced in `erc-fill-function'.
You can put this on `erc-insert-modify-hook' and/or `erc-send-modify-hook'." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-fill" "erc-fill.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-fill.el

(register-definition-prefixes "erc-fill" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-identd" "erc-identd.el" "198dffb91046e6385511f74d2d627701")
;;; Generated autoloads from erc-identd.el
(autoload 'erc-identd-mode "erc-identd")

(autoload 'erc-identd-start "erc-identd" "\
Start an identd server listening to port 8113.
Port 113 (auth) will need to be redirected to port 8113 on your
machine -- using iptables, or a program like redir which can be
run from inetd.  The idea is to provide a simple identd server
when you need one, without having to install one globally on your
system.

\(fn &optional PORT)" t nil)

(autoload 'erc-identd-stop "erc-identd" "\


\(fn &rest IGNORE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-identd" "erc-identd.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-identd.el

(register-definition-prefixes "erc-identd" '("erc-identd-"))

;;;***

;;;***

;;;### (autoloads nil "erc-imenu" "erc-imenu.el" "6c87253133ea1d6cf5457ce5f6af2e6f")
;;; Generated autoloads from erc-imenu.el

(autoload 'erc-create-imenu-index "erc-imenu" nil nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-imenu" "erc-imenu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-imenu.el

(register-definition-prefixes "erc-imenu" '("erc-unfill-notice"))

;;;***

;;;***

;;;### (autoloads nil "erc-join" "erc-join.el" "c98a0441de51ed96da8b0e845fe1e74f")
;;; Generated autoloads from erc-join.el
(autoload 'erc-autojoin-mode "erc-join" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-join" "erc-join.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-join.el

(register-definition-prefixes "erc-join" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-list" "erc-list.el" "f7e153c54bb085f215aeb7c495409760")
;;; Generated autoloads from erc-list.el
(autoload 'erc-list-mode "erc-list")

;;;### (autoloads "actual autoloads are elsewhere" "erc-list" "erc-list.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-list.el

(register-definition-prefixes "erc-list" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-log" "erc-log.el" "061ec5cab9c32933734c2f349490540f")
;;; Generated autoloads from erc-log.el
(autoload 'erc-log-mode "erc-log" nil t)

(autoload 'erc-logging-enabled "erc-log" "\
Return non-nil if logging is enabled for BUFFER.
If BUFFER is nil, the value of `current-buffer' is used.
Logging is enabled if `erc-log-channels-directory' is non-nil, the directory
is writable (it will be created as necessary) and
`erc-enable-logging' returns a non-nil value.

\(fn &optional BUFFER)" nil nil)

(autoload 'erc-save-buffer-in-logs "erc-log" "\
Append BUFFER contents to the log file, if logging is enabled.
If BUFFER is not provided, current buffer is used.
Logging is enabled if `erc-logging-enabled' returns non-nil.

This is normally done on exit, to save the unsaved portion of the
buffer, since only the text that runs off the buffer limit is logged
automatically.

You can save every individual message by putting this function on
`erc-insert-post-hook'.

\(fn &optional BUFFER)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-log" "erc-log.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-log.el

(register-definition-prefixes "erc-log" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-match" "erc-match.el" "e89f031fdcf2bc7a022202cf45a93b4f")
;;; Generated autoloads from erc-match.el
(autoload 'erc-match-mode "erc-match")

(autoload 'erc-add-pal "erc-match" "\
Add pal interactively to `erc-pals'." t nil)

(autoload 'erc-delete-pal "erc-match" "\
Delete pal interactively to `erc-pals'." t nil)

(autoload 'erc-add-fool "erc-match" "\
Add fool interactively to `erc-fools'." t nil)

(autoload 'erc-delete-fool "erc-match" "\
Delete fool interactively to `erc-fools'." t nil)

(autoload 'erc-add-keyword "erc-match" "\
Add keyword interactively to `erc-keywords'." t nil)

(autoload 'erc-delete-keyword "erc-match" "\
Delete keyword interactively to `erc-keywords'." t nil)

(autoload 'erc-add-dangerous-host "erc-match" "\
Add dangerous-host interactively to `erc-dangerous-hosts'." t nil)

(autoload 'erc-delete-dangerous-host "erc-match" "\
Delete dangerous-host interactively to `erc-dangerous-hosts'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-match" "erc-match.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-match.el

(register-definition-prefixes "erc-match" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-menu" "erc-menu.el" "0b25ed896bf52eb553e1a792a3cc564a")
;;; Generated autoloads from erc-menu.el
(autoload 'erc-menu-mode "erc-menu" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-menu" "erc-menu.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-menu.el

(register-definition-prefixes "erc-menu" '("erc-menu-"))

;;;***

;;;***

;;;### (autoloads nil "erc-netsplit" "erc-netsplit.el" "d27b3c21acba5952bdeb8e9b316624f8")
;;; Generated autoloads from erc-netsplit.el
(autoload 'erc-netsplit-mode "erc-netsplit")

(autoload 'erc-cmd-WHOLEFT "erc-netsplit" "\
Show who's gone." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-netsplit"
;;;;;;  "erc-netsplit.el" (0 0 0 0))
;;; Generated autoloads from erc-netsplit.el

(register-definition-prefixes "erc-netsplit" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-notify" "erc-notify.el" "430eb22f4e3f5d80a904793257708870")
;;; Generated autoloads from erc-notify.el
(autoload 'erc-notify-mode "erc-notify" nil t)

(autoload 'erc-cmd-NOTIFY "erc-notify" "\
Change `erc-notify-list' or list current notify-list members online.
Without args, list the current list of notified people online,
with args, toggle notify status of people.

\(fn &rest ARGS)" nil nil)

(autoload 'pcomplete/erc-mode/NOTIFY "erc-notify" nil nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-notify" "erc-notify.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-notify.el

(register-definition-prefixes "erc-notify" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-page" "erc-page.el" "ff2226e32fd4bf3d6625dd2d34466b04")
;;; Generated autoloads from erc-page.el
(autoload 'erc-page-mode "erc-page")

;;;### (autoloads "actual autoloads are elsewhere" "erc-page" "erc-page.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-page.el

(register-definition-prefixes "erc-page" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-pcomplete" "erc-pcomplete.el" "cdb739606e0ca2cb3c9c26d3b77ddebc")
;;; Generated autoloads from erc-pcomplete.el
(autoload 'erc-completion-mode "erc-pcomplete" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-pcomplete"
;;;;;;  "erc-pcomplete.el" (0 0 0 0))
;;; Generated autoloads from erc-pcomplete.el

(register-definition-prefixes "erc-pcomplete" '("erc-pcomplet" "pcomplete"))

;;;***

;;;***

;;;### (autoloads nil "erc-replace" "erc-replace.el" "a838dbaea367057d2cef6247cf21cffc")
;;; Generated autoloads from erc-replace.el
(autoload 'erc-replace-mode "erc-replace")

;;;### (autoloads "actual autoloads are elsewhere" "erc-replace"
;;;;;;  "erc-replace.el" (0 0 0 0))
;;; Generated autoloads from erc-replace.el

(register-definition-prefixes "erc-replace" '("erc-replace-"))

;;;***

;;;***

;;;### (autoloads nil "erc-ring" "erc-ring.el" "796d6ad04d3036625e60cbf1d1d45029")
;;; Generated autoloads from erc-ring.el
(autoload 'erc-ring-mode "erc-ring" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-ring" "erc-ring.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-ring.el

(register-definition-prefixes "erc-ring" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-services" "erc-services.el" "4f457b271dfedcdc4debe90c945d1841")
;;; Generated autoloads from erc-services.el
(autoload 'erc-services-mode "erc-services" nil t)

(autoload 'erc-nickserv-identify-mode "erc-services" "\
Set up hooks according to which MODE the user has chosen.

\(fn MODE)" t nil)

(autoload 'erc-nickserv-identify "erc-services" "\
Send an \"identify <PASSWORD>\" message to NickServ.
When called interactively, read the password using `read-passwd'.

\(fn PASSWORD)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-services"
;;;;;;  "erc-services.el" (0 0 0 0))
;;; Generated autoloads from erc-services.el

(register-definition-prefixes "erc-services" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-sound" "erc-sound.el" "302db1be7a2b8b85429a8419ce66df4b")
;;; Generated autoloads from erc-sound.el
(autoload 'erc-sound-mode "erc-sound")

;;;### (autoloads "actual autoloads are elsewhere" "erc-sound" "erc-sound.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-sound.el

(register-definition-prefixes "erc-sound" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-speedbar" "erc-speedbar.el" "98e3e97a0087046ad2f8f3da858c3f12")
;;; Generated autoloads from erc-speedbar.el

(autoload 'erc-speedbar-browser "erc-speedbar" "\
Initialize speedbar to display an ERC browser.
This will add a speedbar major display mode." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-speedbar"
;;;;;;  "erc-speedbar.el" (0 0 0 0))
;;; Generated autoloads from erc-speedbar.el

(register-definition-prefixes "erc-speedbar" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-spelling" "erc-spelling.el" "251c6f191e631a2dde0c19eec0183ac2")
;;; Generated autoloads from erc-spelling.el
(autoload 'erc-spelling-mode "erc-spelling" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-spelling"
;;;;;;  "erc-spelling.el" (0 0 0 0))
;;; Generated autoloads from erc-spelling.el

(register-definition-prefixes "erc-spelling" '("erc-spelling-"))

;;;***

;;;***

;;;### (autoloads nil "erc-stamp" "erc-stamp.el" "18902603d65ee167b992c46e0ab5f92e")
;;; Generated autoloads from erc-stamp.el
(autoload 'erc-timestamp-mode "erc-stamp" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-stamp" "erc-stamp.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-stamp.el

(register-definition-prefixes "erc-stamp" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-status-sidebar" "erc-status-sidebar.el"
;;;;;;  "db990a13a5c9821c7d73b1578495a323")
;;; Generated autoloads from erc-status-sidebar.el

(autoload 'erc-status-sidebar-open "erc-status-sidebar" "\
Open or create a sidebar." t nil)

(autoload 'erc-status-sidebar-toggle "erc-status-sidebar" "\
Toggle the sidebar open/closed on the current frame." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-status-sidebar"
;;;;;;  "erc-status-sidebar.el" (0 0 0 0))
;;; Generated autoloads from erc-status-sidebar.el

(register-definition-prefixes "erc-status-sidebar" '("erc-status-sidebar-"))

;;;***

;;;***

;;;### (autoloads nil "erc-track" "erc-track.el" "e6f91e8defbc9bf558f49a2e7d7ce2cf")
;;; Generated autoloads from erc-track.el

(defvar erc-track-minor-mode nil "\
Non-nil if Erc-Track minor mode is enabled.
See the `erc-track-minor-mode' command
for a description of this minor mode.")

(custom-autoload 'erc-track-minor-mode "erc-track" nil)

(autoload 'erc-track-minor-mode "erc-track" "\
Toggle mode line display of ERC activity (ERC Track minor mode).

If called interactively, toggle `Erc-Track minor mode'.  If the prefix
argument is positive, enable the mode, and if it is zero or negative,
disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable the
mode if ARG is nil, omitted, or is a positive number.  Disable the
mode if ARG is a negative number.

The mode's hook is called both when the mode is enabled and when it is
disabled.

ERC Track minor mode is a global minor mode.  It exists for the
sole purpose of providing the C-c C-SPC and C-c C-@ keybindings.
Make sure that you have enabled the track module, otherwise the
keybindings will not do anything useful.

\(fn &optional ARG)" t nil)
(autoload 'erc-track-mode "erc-track" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "erc-track" "erc-track.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-track.el

(register-definition-prefixes "erc-track" '("erc-"))

;;;***

;;;***

;;;### (autoloads nil "erc-truncate" "erc-truncate.el" "2f73518efcff4cf29358a81cff48bf3f")
;;; Generated autoloads from erc-truncate.el
(autoload 'erc-truncate-mode "erc-truncate" nil t)

(autoload 'erc-truncate-buffer-to-size "erc-truncate" "\
Truncates the buffer to the size SIZE.
If BUFFER is not provided, the current buffer is assumed.  The deleted
region is logged if `erc-logging-enabled' returns non-nil.

\(fn SIZE &optional BUFFER)" nil nil)

(autoload 'erc-truncate-buffer "erc-truncate" "\
Truncates the current buffer to `erc-max-buffer-size'.
Meant to be used in hooks, like `erc-insert-post-hook'." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-truncate"
;;;;;;  "erc-truncate.el" (0 0 0 0))
;;; Generated autoloads from erc-truncate.el

(register-definition-prefixes "erc-truncate" '("erc-max-buffer-size"))

;;;***

;;;***

;;;### (autoloads nil "erc-xdcc" "erc-xdcc.el" "727293a5cb19a0050607028aab06c99a")
;;; Generated autoloads from erc-xdcc.el
(autoload 'erc-xdcc-mode "erc-xdcc")

(autoload 'erc-xdcc-add-file "erc-xdcc" "\
Add a file to `erc-xdcc-files'.

\(fn FILE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "erc-xdcc" "erc-xdcc.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from erc-xdcc.el

(register-definition-prefixes "erc-xdcc" '("erc-"))

;;;***

;;;***

(provide 'erc-loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; erc-loaddefs.el ends here
