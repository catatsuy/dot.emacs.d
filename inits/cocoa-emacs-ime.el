(setq default-input-method "MacOSX")

(mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `title "あ")

;; カーソルの色
(mac-set-input-method-parameter "com.google.inputmethod.Japanese.base" `cursor-color "red")
(mac-set-input-method-parameter "com.google.inputmethod.Japanese.Roman" `cursor-color "blue")

;; emacs 起動時は英数モードから始める
(add-hook 'after-init-hook 'mac-change-language-to-us)
 
;; minibuffer 内は英数モードにする
(add-hook 'minibuffer-setup-hook 'mac-change-language-to-us)
(mac-translate-from-yen-to-backslash)

;; [migemo]isearch のとき IME を英数モードにする
(add-hook 'isearch-mode-hook 'mac-change-language-to-us)
