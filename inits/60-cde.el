;; Emacs の現在のバッファに対応するディレクトリに cd する
;; cf: http://d.hatena.ne.jp/syohex/20111026/1319606395
(defun elscreen-current-directory ()
  (let* (current-dir
        (active-file-name
         (with-current-buffer
             (let* ((current-screen (car (elscreen-get-conf-list 'screen-history)))
                    (property (cadr (assoc current-screen
                                           (elscreen-get-conf-list 'screen-property)))))
               (marker-buffer (nth 2 property)))
           (progn
             (setq current-dir (expand-file-name (cadr (split-string (pwd)))))
             (buffer-file-name)))))
    (if active-file-name
        (file-name-directory active-file-name)
      current-dir)))

(defun non-elscreen-current-directory ()
  (let* (current-dir
         (current-buffer
          (nth 1 (assoc 'buffer-list
                        (nth 1 (nth 1 (current-frame-configuration))))))
         (active-file-name
          (with-current-buffer current-buffer
            (progn
              (setq current-dir (expand-file-name (cadr (split-string (pwd)))))
              (buffer-file-name)))))
    (if active-file-name
        (file-name-directory active-file-name)
      current-dir)))
