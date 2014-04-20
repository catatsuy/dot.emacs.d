(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(setq auto-mode-alist (cons '("\\.ctp$" . html-mode) auto-mode-alist))

(add-hook 'php-mode-hook
          (lambda ()
            (c-set-style "pear")))
