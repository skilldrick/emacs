(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(dabbrev-upcase-means-case-search t)
 '(inhibit-startup-screen t)
 '(quack-fontify-style (quote emacs)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "grey10"))))
 '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "grey15")))))

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
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . javascript-mode))
;;(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)

;; Vimpulse
(require 'vimpulse)

;; Rinari
(add-to-list 'load-path "~/.emacs.d/site-lisp/rinari")
(require 'rinari)

;;; rhtml-mode
(add-to-list 'load-path "~/.emacs.d/site-lisp/rhtml")
(require 'rhtml-mode)
(add-to-list 'auto-mode-alist '("\.rjs$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\.builder$" . ruby-mode))

;;; Color Theme
(require 'color-theme)
(color-theme-initialize)
(load-file "~/.emacs.d/site-lisp/themes/color-theme-railscasts.el")
(color-theme-railscasts)

;;; Yaml
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'rhtml-mode-hook
     	  (lambda () (rinari-launch)))

(setq rinari-tags-file-name "TAGS")

(setq-default indent-tabs-mode nil)
