(setq default-input-method "MacOSX")

;; 日本語入力時でもC-x系を使えるようにする
;; cf: https://qiita.com/takaxp/items/a86ee2aacb27c7c3a902
(mac-auto-ascii-mode 1)

;; cf: https://qiita.com/takaxp/items/a86ee2aacb27c7c3a902
(defvar my:cursor-color-ime-on "#FF9300")
(defvar my:cursor-color-ime-off "#91C3FF") ;; #FF9300, #999999, #749CCC
(defvar my:cursor-type-ime-on '(bar . 2)) ;; box
(defvar my:cursor-type-ime-off '(bar . 2))

(when (fboundp 'mac-input-source)
    (defun my:mac-keyboard-input-source ()
      (if (string-match "\\.\\(Roman\\|ABC\\|US\\)$" (mac-input-source))
          (progn
            (setq cursor-type my:cursor-type-ime-off)
            (add-to-list 'default-frame-alist
                         `(cursor-type . ,my:cursor-type-ime-off))
            (set-cursor-color my:cursor-color-ime-off))
        (progn
          (setq cursor-type my:cursor-type-ime-on)
          (add-to-list 'default-frame-alist
                       `(cursor-type . ,my:cursor-type-ime-on))
          (set-cursor-color my:cursor-color-ime-on))

        )))

(when (and (fboundp 'mac-auto-ascii-mode)
           (fboundp 'mac-input-source))
      ;; IME ON/OFF でカーソルの種別や色を替える
      (add-hook 'mac-selected-keyboard-input-source-change-hook
                'my:mac-keyboard-input-source)
      (my:mac-keyboard-input-source))

;; たまにカーソルの色が残ってしてしまう．
;; IME ON で英文字打ったあととに，色が変更されないことがある．禁断の対処方法．
(when (fboundp 'mac-input-source)
  (run-with-idle-timer 3 t 'my:mac-keyboard-input-source))


(defvar mac-win-last-ime-status 'off) ;; {'off|'on}
(defun mac-win-save-last-ime-status ()
  (setq mac-win-last-ime-status
        (if (string-match "\\.\\(Roman\\|ABC\\|US\\)$" (mac-input-source))
            'off 'on)))

(defun mac-win-restore-ime ()
  (when (and mac-auto-ascii-mode (eq mac-win-last-ime-status 'on))
    (mac-select-input-source
     "com.justsystems.inputmethod.atok31.Japanese")))

(defun advice:mac-auto-ascii-setup-input-source (&optional _prompt)
  "Extension to store IME status"
  (mac-win-save-last-ime-status))
(advice-add 'mac-auto-ascii-setup-input-source :before
            #'advice:mac-auto-ascii-setup-input-source)

(defun mac-win-restore-ime-target-commands ()
  (when (and mac-auto-ascii-mode
             (eq mac-win-last-ime-status 'on))
    (mapc (lambda (command)
            (when (string-match
                   (format "^%s" command) (format "%s" this-command))
              (mac-select-input-source
               "com.justsystems.inputmethod.atok31.Japanese")))
          mac-win-target-commands)))
(add-hook 'pre-command-hook 'mac-win-restore-ime-target-commands)

;; M-x でのコマンド選択でもIMEを戻せる．
;; ただし，移動先で q が効かないことがある（要改善）
(add-hook 'minibuffer-setup-hook 'mac-win-save-last-ime-status)
(add-hook 'minibuffer-exit-hook 'mac-win-restore-ime)

;; 自動で ASCII入力から日本語入力に引き戻したい関数（デフォルト設定）
(defvar mac-win-target-commands
  '(find-file save-buffer other-window delete-window split-window mark-whole-buffer delete-backward-char backward-delete-char-untabify markdown-outdent-or-delete))
