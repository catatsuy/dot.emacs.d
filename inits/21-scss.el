(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

 ;; 自動コンパイルをオフにする
(setq scss-compile-at-save nil)

