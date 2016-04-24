;; cf: http://qiita.com/0x60df/items/e12544d2699eedbf36e1
(icomplete-mode 1)

(setq read-buffer-completion-ignore-case t)
(setq read-file-name-completion-ignore-case t)

;; ミニバッファで補完を行いたくないコマンドのリスト
(defvar icomplete-exceptional-command-list
  '(dired-create-directory
    dired-do-copy
    dired-do-rename))

;; 起動時のカーソル位置を保持するための変数
(defvar icomplete-initial-point-max nil)
;; 起動時の補完候補リストを保持するための変数
(defvar icomplete-initial-completions nil)
;; 起動時に呼び出し元のコマンド名を保持するための変数
(defvar icomplete-this-command nil)

;; 起動時に上記の変数に値を代入するフックをかける
(add-hook 'icomplete-minibuffer-setup-hook
          (lambda ()
            (setq icomplete-initial-point-max (point-max))
            (setq icomplete-initial-completions
                  (completion-all-sorted-completions
                   (icomplete--field-beg) (icomplete--field-end)))
            (setq icomplete-this-command this-command)))

;; 入力完了のコマンド定義
(defun minibuffer-force-complete-and-exit-dwim ()
  "Complete the minibuffer with first of the matches and exit."
  (interactive)
  (cond ((member icomplete-this-command icomplete-exceptional-command-list)
         (exit-minibuffer))
        ((and (eq (point-max) icomplete-initial-point-max)
              (equal (car (completion-all-sorted-completions
                           (icomplete--field-beg) (icomplete--field-end)))
                     (car icomplete-initial-completions))
              minibuffer-default)
         ;; Use the provided default if there's one (bug#17545).
         (minibuffer-complete-and-exit))
        (t (minibuffer-force-complete)
           (completion--complete-and-exit
            (minibuffer-prompt-end) (point-max) #'exit-minibuffer
            ;; If the previous completion completed to an element which fails
            ;; test-completion, then we shouldn't exit, but that should be rare.
            (lambda () (minibuffer-message "Incomplete"))))))

;; 入力完了をリターンキーにバインド
(define-key icomplete-minibuffer-map [return]
  'minibuffer-force-complete-and-exit-dwim)
