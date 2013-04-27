(require 'google-c-style)
(setq auto-mode-alist
      (append '(("\\.h\\(\\..+\\)?$" . c++-mode))
              auto-mode-alist))
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
