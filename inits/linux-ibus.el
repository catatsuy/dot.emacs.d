(require 'ibus)
(add-hook 'after-init-hook 'ibus-mode-on)
(ibus-define-common-key ?\C-\s nil)

;; IBusの状態によってカーソル色を変化させる
(setq ibus-cursor-color '("red" "blue" "limegreen"))

;; C-j で半角英数モードをトグルする
(ibus-define-common-key ?\C-j t)

;; isearch 時はオフに
(ibus-disable-isearch)

;; カーソルの位置に予測候補を表示
(setq ibus-prediction-window-position t)

;; mini buffer ではオフに
(add-hook 'minibuffer-setup-hook 'ibus-disable)

;; Undo の時に確定した位置まで戻る
(setq ibus-undo-by-committed-string t)
