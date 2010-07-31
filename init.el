(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ange-ftp-try-passive-mode t)
 '(dabbrev-upcase-means-case-search t)
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq load-path (cons "~/.emacs.d/site-lisp" load-path))
(load-library "window")

(require 'quack)

(autoload 'php-mode "php-mode" "PHP editing mode" t)

(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.text" . markdown-mode) auto-mode-alist))

(load "~/.emacs.d/site-lisp/js.el")
(load "~/.emacs.d/site-lisp/nxhtml/autostart.el")



(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
;;(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/site-lisp/rinari")
(require 'rinari)

;;; rhtml-mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/rhtml")
(require 'rhtml-mode)
(add-to-list 'auto-mode-alist '("\.rjs$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\.builder$" . ruby-mode))

;;; Yaml
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'rhtml-mode-hook
     	  (lambda () (rinari-launch)))

(setq rinari-tags-file-name "TAGS")

(setq-default indent-tabs-mode nil)
