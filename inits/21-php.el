(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(setq auto-mode-alist (cons '("\\.ctp$" . html-mode) auto-mode-alist))

(setq php-mode-force-pear t)

;; http://d.hatena.ne.jp/gct/20101126/1290755504
(add-hook 'php-mode-hook
          (lambda ()
            (c-set-offset 'case-label' 4)
            (c-set-offset 'arglist-intro' 4)
            (c-set-offset 'arglist-cont-nonempty' 4)
            (c-set-offset 'arglist-close' 0)))
