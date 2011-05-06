;; (load-file "~/devel/elisp/ido.el")
;; (require 'ido)

(ido-mode t)

(load-file "~/devel/elisp/netrc.el")
(load-file "~/devel/elisp/sendmail.el")
(load-file "~/devel/elisp/smtpmail.el")
(load-file "~/devel/elisp/xcscope.el")

(load-file "~/devel/elisp/javascript.el")

(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)

;; (load-library "php-mode")

(require 'xcscope)

(load-file "~/devel/elisp/android.el")
(require 'android)

(load-file "~/devel/elisp/android-mode.el")
(require 'android-mode)

;; Configuration variables here
;;(setq semantic-load-turn-useful-things-on t)
;; Load CEDET
;;(require 'cedet)

;;(load-file "~/devel/elisp/eassist.el")


;; (add-to-list 'load-path "~/devel/elisp")
;; (require 'auto-complete-config)
;; (add-to-list 'ac-dictionary-directories "~/devel/elisp/ac-dict")
;; (ac-config-default)

;; (setq rsense-home "/home/pmv/opt/rsense-0.3")
;; (add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)

(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c TAB") 'rsense-complete)))

(defun my-c-mode-common-hook ()
   (define-key c-mode-base-map (kbd "M-o") 'eassist-switch-h-cpp)
   (define-key c-mode-base-map (kbd "M-m") 'eassist-list-methods))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(require 'tramp)
(setq tramp-default-method "ssh")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(android-mode-avd "test")
 '(android-mode-sdk-dir "~/devel/android/android-sdk-linux_86")
 '(auto-save-default nil)
 '(browse-url-browser-function (quote browse-url-firefox))
 '(browse-url-firefox-new-window-is-tab t)
 '(browse-url-galeon-new-window-is-tab t)
 '(browse-url-mozilla-new-window-is-tab t)
 '(browse-url-netscape-program "firefox")
 '(c-basic-indent 8 t)
 '(c-basic-offset 4)
 '(c-default-style "bsd")
 '(c-echo-syntactic-information-p t)
 '(default-input-method nil)
 '(display-time-day-and-date t)
 '(display-time-mail-file "/var/mail/pmv")
 '(display-time-mode t nil (time))
 '(global-hl-line-mode t nil (hl-line))
 '(gnus-article-mode-hook (quote (hl-line-mode)))
 '(gnus-message-archive-group "local-sent")
 '(gnus-message-archive-method (quote (nnml "archive" (nnfolder-inhibit-expiry t) (nnfolder-active-file "~/Mail/sent-mail/active") (nnfolder-directory "~/Mail/sent-mail/") (nnfolder-get-new-mail nil))))
 '(gnus-select-method (quote (nnml "")))
 '(gnus-summary-line-format "%d %U%R%z%I%(%[%4L: %-20,20n%]%) %s
")
 '(gnus-uu-default-view-rules (quote (("\\.te?xt$\\|\\.doc$\\|read.*me\\|\\.c?$\\|\\.h$\\|\\.bat$\\|\\.asm$\\|makefile" "cat %s | sed 's/$//'") ("\\.pas$" "cat %s | sed 's/$//'") ("\\.[1-9]$" "groff -mandoc -Tascii %s | sed s/.//g") ("\\.\\(jpe?g\\|gif\\|tiff?\\|p[pgb]m\\|xwd\\|xbm\\|pcx\\)$" "display") ("\\.tga$" "tgatoppm %s | ee -") ("\\.\\(wav\\|aiff\\|hcom\\|u[blw]\\|s[bfw]\\|voc\\|smp\\)$" "sox -v .5 %s -t .au -u - > /dev/audio") ("\\.au$" "cat %s > /dev/audio") ("\\.midi?$" "playmidi -f") ("\\.mod$" "str32") ("\\.ps$" "ghostview") ("\\.dvi$" "xdvi") ("\\.html$" "xmosaic") ("\\.mpe?g$" "mpeg_play") ("\\.\\(flc\\|fli\\|rle\\|iff\\|pfx\\|avi\\|sme\\|rpza\\|dl\\|qt\\|rsrc\\|mov\\)$" "xanim") ("\\.\\(tar\\|arj\\|zip\\|zoo\\|arc\\|gz\\|Z\\|lzh\\|ar\\|lha\\)$" "gnus-uu-archive") ("\\.pdf$" "evince"))))
 '(grep-command "grep -rin -e  .")
 '(indent-tabs-mode nil)
 '(make-backup-files nil)
 '(mumamo-chunk-coloring 2)
 '(nnmail-crosspost nil)
 '(smiley-data-directory nil)
 '(smiley-regexp-alist (quote (("\\([:;]-?)\\)\\(\\W\\|\\'\\)" 1 "smile.pbm") ("\\(:-[/\\]\\)\\(\\W\\|\\'\\)" 1 "wry.pbm") ("\\(:-[({]\\)\\(\\W\\|\\'\\)" 1 "frown.pbm"))))
 '(smtpmail-auth-credentials (quote (("cebexch01.cebu.infoweapons.com" 25 "pvenegas" "b4card1151*pw1001"))))
 '(smtpmail-debug-info t)
 '(smtpmail-debug-verb t)
 '(smtpmail-default-smtp-server "cebexch01.cebu.infoweapons.com")
 '(smtpmail-local-domain nil)
 '(smtpmail-queue-mail t)
 '(smtpmail-sendto-domain "infoweapons.com")
 '(smtpmail-smtp-server "cebexch01.cebu.infoweapons.com")
 '(smtpmail-starttls-credentials (quote (("mail0.infoweapons.com" 25 "" ""))))
 '(smtpmail-warn-about-unknown-extensions t)
 '(starttls-kill-program (quote /bin/kill))
 '(starttls-program (quote /usr/local/bin/starttls))
 '(starttls-use-gnutls t)
 '(tab-width 8)
 '(tramp-debug-buffer t))

;;(autoload 'php-mode "php-mode" "Mode for editing PHP source files")
;;(add-to-list 'auto-mode-alist '("\\.\\(inc\\|php[s34]?\\)" . php-mode))

(global-set-key "" (quote compile))

(menu-bar-mode nil)
(scroll-bar-mode nil)
(blink-cursor-mode nil)
(tool-bar-mode nil)
(show-paren-mode nil)
(hl-line-mode)

(transient-mark-mode t)

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "#000" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :family "misc-fixed"))))
 '(highlight ((((class color) (background dark)) (:background "#446"))))
 '(menu ((((type x-toolkit)) (:inherit mode-line :height 90))))
 '(mode-line ((t (:background "#c7c1cc" :foreground "black" :box (:line-width 1 :color "#111") :family "helvetica"))))
 '(mumamo-border-face-in ((t (:underline nil :weight normal))))
 '(mumamo-border-face-out ((t (:underline nil :weight normal))))
 '(region ((((class color) (background dark)) (:background "#223")))))


;; my defuns and set-keys

(defun move-line-and-recenter (delta)
  "Shift centered line by delta"
  (interactive)
  (next-line delta)
  (recenter))

(global-set-key (read-kbd-macro "C-M-n")
		(lambda () (interactive) (move-line-and-recenter 1)))

(global-set-key (read-kbd-macro "C-M-p")
		(lambda () (interactive) (move-line-and-recenter -1)))

(global-set-key "" (quote newline-and-indent))
(global-set-key (read-kbd-macro "M-g") 'goto-line)

(defun kill-current-buffer ()
  "duh"
  (interactive)
  (kill-buffer (current-buffer)))

(global-set-key (read-kbd-macro "C-x k") 'kill-current-buffer)
(global-set-key (read-kbd-macro "C-c C-c") 'comment-region)

;; Turn off tabs
(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)

(column-number-mode nil)

;; Bind the TAB key
;; (global-set-key "	" (quote self-insert-command))

;; Set the tab width
(setq default-tab-width 4)
(setq tab-width 4)
(setq c-basic-indent 4)

;; (visit-tags-table "~/TAGS" nil)
(find-file "/home/pmv/notes/todo" t)

(setq insert-date-format "%Y-%m-%d")

(defun insert-date ()
  "Insert the current date according to the variable
\"insert-date-format\"."
  (interactive "*")
  (insert (format-time-string insert-date-format
                              (current-time))))

(global-set-key (quote [f5]) (quote insert-date))
(global-set-key "\215" (quote gnus))

(setq
  user-full-name "Paolo Vanni M. Veñegas"
  user-mail-address "pvenegas@infoweapons.com"
  nnmail-spool-file "/var/mail/pmv"
  display-time-mail-file "/var/mail/pmv"
  message-cite-function 'message-cite-original-without-signature)

(setq nnmail-split-methods
  	  '(("mail.spam" "^Subject.******SPAM*****")
		("mail.work.cvs" "^Subject: CVS Commit.*")
		("mail.work.dsc.support", "^From.*dsc-support@infoweapons.com.*")
		("mail.work.dsc.support", "^Subject.*Monitoring.Report.*")
		("mail.work.dsc.sg" "^To.*dsc-sg@infoweapons.com.*")
		("mail.work.dsc.dev" "^To.*dsc-devs@infoweapons.com.*")
		("mail.work.dsc" "^To.*dsc.*@infoweapons.com.*")
		("mail.work.dsc" "^Cc.*dsc.*@infoweapons.com.*")
		("mail.work" "^To.*@*infoweapons.com.*")
		("mail.work" "^Cc.*@*infoweapons.com.*")
		("mail.lists.cegnulug", "^To.*ce-gnu-lug@yahoogroups.com.*")
		("mail.lists.mensa", "^To.*mensaphilopen@yahoogroups.com.*")
		("mail.lists", "^To.*@yahoogroups.com.*")
		("mail.lists", "^To.*@googlegroups.com.*")
		("mail.misc" "")))

(setq gnus-message-archive-method
	  '(nnfolder "archive"
				 (nnfolder-inhibit-expiry t)
				 (nnfolder-active-file "~/Mail/sent-mail/active")
				 (nnfolder-directory "~/Mail/sent-mail/")
				 (nnfolder-get-new-mail nil)))

(setq message-send-mail-function 'smtpmail-send-it)

(setq message-send-mail-function 'smtpmail-send-it)	; if you use message/Gnus
;; (setq smtpmail-default-smtp-server "ironmail.infoweapons.com") ; set before loading library
;; (setq smtpmail-local-domain "infoweapons.com")
;; (setq smtpmail-sendto-domain "infoweapons.com")
;; (setq smtpmail-debug-info t)			; only to debug problems
;; (setq smtpmail-auth-credentials			; or use ~/.authinfo
;; 	  '(("ironmail.infoweapons.com" 25 "pvenegas" "l4ur4bu$#g4ds")))
;; (setq smtpmail-starttls-credentials
;;  	  '(("ironmail.infoweapons.com" 25 nil nil)))

(setq gnus-secondary-select-methods nil)


(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.[hg]s$"  . haskell-mode)
                ("\\.hi$"     . haskell-mode)
                ("\\.l[hg]s$" . literate-haskell-mode))))
(autoload 'haskell-mode "haskell-mode"
  "Major mode for editing Haskell scripts." t)
(autoload 'literate-haskell-mode "haskell-mode"
  "Major mode for editing literate Haskell scripts." t)

;; Add the following lines according to which modules you want to use:

(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'turn-on-font-lock)

;; (let ((buffer (url-retrieve-synchronously
;; 			   "http://tromey.com/elpa/package-install.el")))
;;   (save-excursion
;;     (set-buffer buffer)
;;     (goto-char (point-min))
;;     (re-search-forward "^$" nil 'move)
;;     (eval-region (point) (point-max))
;;     (kill-buffer (current-buffer))))

(server-start)
(global-font-lock-mode t)

(desktop-save-mode 1)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; (require 'mmm-mode)
;; (require 'mmm-mode)
;; (require 'mmm-auto)
;; (setq mmm-global-mode 'maybe)
;; (setq mmm-submode-decoration-level 2)
;; (mmm-add-classes
;;  '((erb-code
;;     :submode ruby-mode
;;     :match-face (("<%#" . mmm-comment-submode-face)
;;                  ("<%=" . mmm-output-submode-face)
;;                  ("<%" . mmm-code-submode-face))
;;     :front "<%[#=]?"
;;     :back "-?%>"
;;     :insert ((?% erb-code nil @ "<%" @ " " _ " " @ "%>" @)
;;              (?# erb-comment nil @ "<%#" @ " " _ " " @ "%>" @)
;;              (?= erb-expression nil @ "<%=" @ " " _ " " @ "%>" @))
;;     )))
;; (add-hook 'html-mode-hook
;;           (lambda ()
;;             (setq mmm-classes '(erb-code))
;;             (mmm-mode-on)))
;; (add-to-list 'auto-mode-alist '("\.html$" . html-mode))
;; (add-to-list 'auto-mode-alist '("\.html.erb$" . html-mode))

;; (nav)
;; (define-key nav-mode-map [remap find-file-other-window] 'find-file)
(global-set-key "" (quote comment-region))

(load "~/devel/elisp/nxhtml/autostart.el")

;; (setq
;;  nxhtml-global-minor-mode t
;;  mumamo-chunk-coloring 'submode-colored
;;  nxhtml-skip-welcome t
;;  indent-region-mode t
;;  rng-nxml-auto-validate-flag nil
;;  nxml-degraded t)
;; (add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))
;; (add-to-list 'auto-mode-alist '("\\.html\\'" . eruby-nxhtml-mumamo))

(setq load-path (cons (expand-file-name "~/devel/elisp/emacs-rails-reloaded") load-path))
(require 'rails-autoload)