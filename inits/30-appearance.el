;; Menuを隠す
(custom-set-variables
 '(display-time-mode t)
 '(tool-bar-mode nil)
 '(menu-bar-mode nil)
 '(transient-mark-mode t))
(custom-set-faces)

;; スクロールバーを消す
(toggle-scroll-bar nil)

;;; 現在行を目立たせる
(defface my-hl-line-face
  '((((class color)
      (background dark))
     (:background "dark slate gray"))
    (((class color)
      (background light))
     (:background "#232323"))
    (t
     ()))
  "*Face used by hl-line.")
(setq hl-line-face 'my-hl-line-face)
(global-hl-line-mode)
