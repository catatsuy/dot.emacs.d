(require 'auto-complete)

;; 辞書追加
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

(require 'auto-complete-config)

(ac-config-default)
(setq ac-use-menu-map t)

(setq ac-auto-start 2)  ;; n文字以上の単語の時に補完を開始
(setq ac-delay 0.05)  ;; n秒後に補完開始
(setq ac-use-fuzzy t)  ;; 曖昧マッチ有効
(setq ac-use-comphist t)  ;; 補完推測機能有効
(setq ac-auto-show-menu 0.05)  ;; n秒後に補完メニューを表示
(setq ac-quick-help-delay 0.5)  ;; n秒後にクイックヘルプを表示

(setq-default ac-sources '(ac-source-words-in-same-mode-buffers))

;; emacs-lisp の設定
(add-hook 'emacs-lisp-mode-hook (lambda () (add-to-list
                                       'ac-sources
                                       'ac-source-symbols t)))

;; ruby-mode の設定
(add-hook 'enh-ruby-mode-hook (lambda () (add-to-list
                                 'ac-sources
                                 'ac-source-abbrev)))

;; 最適化無効でメニュー表示崩れ回避
(setq popup-use-optimized-column-computation nil)

;; あるモードでも動くように
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'yatex-mode)
(add-to-list 'ac-modes 'markdown-mode)
(add-to-list 'ac-modes 'js2-mode)

;; flyspell-mode で補完できない
(ac-flyspell-workaround)

;; 日本語回避
(defadvice ac-word-candidates (after remove-word-contain-japanese activate)
  (let ((contain-japanese (lambda (s) (string-match (rx (category japanese)) s))))
    (setq ad-return-value
          (remove-if contain-japanese ad-return-value))))
