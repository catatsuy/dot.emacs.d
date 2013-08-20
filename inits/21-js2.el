(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Settings in certain project
(add-hook 'js2-mode-hook
          (lambda ()
            (when (string-match ".*ixiv\\.ne.*/.*\\.js"
                                (or (buffer-file-name) ""))
              (setq tab-width 2 indent-tabs-mode t))))
