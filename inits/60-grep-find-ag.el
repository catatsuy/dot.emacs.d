(when (and (executable-find "ag")
           (setq grep-find-command "ag --nocolor --nogroup ")
           ))

(push '("*grep*") popwin:special-display-config)
