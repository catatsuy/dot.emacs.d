(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))

;; auto-complete環境で補完の大文字小文字を区別する
;; cf: http://qiita.com/tadsan/items/ab3c3b594b5bf6203f02
(add-hook 'ruby-mode-hook
          (lambda ()
            (make-local-variable 'ac-ignore-case)
            (setq ac-ignore-case nil)))
