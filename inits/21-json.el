(add-hook 'json-mode-hook
          (lambda ()
            (setq json-reformat:indent-width 2)
            (setq json-reformat:pretty-string? t)

            (setq tab-width 2)
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))
