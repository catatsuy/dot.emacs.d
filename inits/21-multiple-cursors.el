(require 'multiple-cursors)
(require 'smartrep)

(global-set-key (kbd "<C-M-return>") 'mc/edit-lines)
(smartrep-define-key
    global-map "C-." '(("C-n" . 'mc/mark-next-like-this)
                       ("C-p" . 'mc/mark-previous-like-this)
                       ("*"   . 'mc/mark-all-like-this)))
