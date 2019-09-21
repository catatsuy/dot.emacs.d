(require 'lsp-mode)

(add-hook 'go-mode-hook #'lsp-deferred)

(with-eval-after-load 'lsp-mode (setq lsp-enable-snippet nil))
