(require 'lsp-mode)

(add-hook 'go-mode-hook #'lsp-deferred)
