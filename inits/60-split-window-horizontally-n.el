;; cf: http://www.shigemk2.com/entry/20120113/1326463814
(defun split-window-horizontally-n (num_wins)
  (interactive "p")
  (dotimes (i (- num_wins 1))
    (split-window-horizontally))
  (balance-windows))
