;; indent
(add-hook 'sh-mode-hook '(lambda () (interactive)
                           (setq sh-basic-offset 2 sh-indentation 2)))

;; .zshrc.* を shell-script-mode に
(add-to-list 'auto-mode-alist '("\\.zshrc" . shell-script-mode))
