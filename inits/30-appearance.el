;; Menuを隠す
(custom-set-variables
 '(display-time-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces)

;; スクロールバーを消す
(toggle-scroll-bar nil)

;; 現在行を目立たせる
;; cf: http://rubikitch.com/2015/05/14/global-hl-line-mode-timer/
(require 'hl-line)
(defun global-hl-line-timer-function ()
  (global-hl-line-unhighlight-all)
  (let ((global-hl-line-mode t))
    (global-hl-line-highlight)))
(setq global-hl-line-timer
      (run-with-idle-timer 0.05 t 'global-hl-line-timer-function))
;; (cancel-timer global-hl-line-timer)

(defface my-hl-line-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'my-hl-line-face)
