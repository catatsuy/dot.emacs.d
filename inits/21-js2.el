(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(custom-set-variables
 '(js2-basic-offset 2)
)

;; Settings in certain project
(add-hook 'js2-mode-hook
          (lambda ()
            (when (string-match "/ssh:p006:.*/.*\\.js"
                                (or (buffer-file-name) ""))
              (setq tab-width 2 indent-tabs-mode t))))
