(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ange-ftp-try-passive-mode t)
 '(dabbrev-upcase-means-case-search t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq load-path (cons "~/.emacs.d/site-lisp" load-path))
(load-library "window")
 
(autoload 'php-mode "php-mode" "PHP editing mode" t)
(load "~/.emacs.d/site-lisp/js.el")
(load "/usr/lib/nxhtml/autostart.el")
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
