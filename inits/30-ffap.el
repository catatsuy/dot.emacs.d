;; http://rubikitch.com/2015/07/16/ffap-dired/
;;; ファイル名補完キーマップで?をそのまま入力できるようにする
(define-key minibuffer-local-filename-completion-map (kbd "?") nil)

;;; ffapでワイルドカードを指定するとdiredを開くようにする
(setq ffap-pass-wildcards-to-dired t)

;;; C-x C-fなどをffap関係のコマンドに割り当てる
(ffap-bindings)
