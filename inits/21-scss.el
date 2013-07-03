(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.\\(scss\\|css\\)\\'" . scss-mode))

(defun scss-custom ()
  "scss-mode-hook"
  (set (make-local-variable 'css-indent-offset) 2)
  )
(add-hook 'scss-mode-hook
  '(lambda() (scss-custom)))

;; 自動コンパイルをオフにする
(setq scss-compile-at-save nil)

