(require 'google-translate)

;; 翻訳のデフォルト値を設定(ja -> en)（無効化は C-u する）
(custom-set-variables
 '(google-translate-default-source-language "ja")
 '(google-translate-default-target-language "en"))

;; google-translate.elの翻訳バッファをポップアップで表示させる
(push '("*Google Translate*") popwin:special-display-config)
