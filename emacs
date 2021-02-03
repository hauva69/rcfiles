(require 'package)
;; Add the original Emacs Lisp Package Archive
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("elpa" . "http://tromey.com/elpa/") t)

(package-initialize)
(require 'cl)

(setq-default indent-tabs-mode nil)

(defvar prelude-packages
  '(sass-mode rainbow-mode scss-mode yaml-mode auto-complete)
  "A list of packages to ensure are installed at launch.")

(defun prelude-packages-installed-p ()
  (loop for p in prelude-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (prelude-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Emacs Prelude is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p prelude-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'prelude-packages)
;;; prelude-packages.el ends here

;; commented out on 2021-02-03
;; I don't work with mongo any more and I don't ever remember what nsf is.
;; TODO check if I need them
;; (add-to-list 'load-path "~/.emacs.d/vendor/nsf")
;; (add-to-list 'load-path "~/.emacs.d/vendor/inf-mongo")
;; (require 'inf-mongo)

(require 'auto-complete)
(global-auto-complete-mode t)
;;(ac-config-default)
(add-hook 'before-save-hook 'gofmt-before-save)
(add-to-list 'load-path "~/.emacs.d/vendor/gocode")
;; FIXME go autocomplete, please
;; (require 'go-autocomplete)
(require 'auto-complete-config)
;; (add-hook 'before-save-hook 'gofmt-before-save)

(server-start)

(setq scroll-step 1)

(global-linum-mode 1)

;; key bindings
(when (eq system-type 'darwin) ;; mac specific settings
  (setq mac-option-modifier 'none)
  (setq mac-command-modifier 'meta)
  (global-set-key [kp-delete] 'delete-char) ;; sets fn-delete to be right-delete
  )

;; enable mouse wheel scrolling
;; (mouse-wheel-mode 1)

;; Show line numbers
(line-number-mode 1)

;; Show column numbers
(column-number-mode 1)

;; The default of the tramp mode should be ssh in any sensible environment
(setq tramp-default-mode "ssh")

;; Paragraphs should be justified at a value less than 80
(setq-default fill-column 72)

(require 'epa-file)
(setq epg-gpg-program "/usr/local/bin/gpg")
(epa-file-enable)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(erc-away-nickname "arskaAway")
 '(erc-email-userid "ari.makela@iki.fi")
 '(erc-nick "arska")
 '(erc-port 6667)
 '(erc-prompt-for-password nil)
 '(erc-server "irc.example.com")
 '(erc-user-full-name "Ari Makela"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; TODO make golint work again
;; golint
;; (add-to-list 'load-path (concat (getenv "GOPATH")  "/src/github.com/golang/lint/misc/emacs"))
;; (require 'golint)
