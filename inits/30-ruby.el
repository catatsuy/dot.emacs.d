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

;; 深すぎるインデントをなくす
(setq ruby-deep-indent-paren-style nil)

;; 閉じ括弧の変なインデントを直す
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))
