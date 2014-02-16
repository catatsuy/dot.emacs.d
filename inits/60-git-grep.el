;;; git-grep.el --- git grep in Emacs

;; Copyright (C) 2014  Toshiyuki Takahashi

;; Author: Toshiyuki Takahashi (@tototoshi)

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Usage:
;;;
;;; (require 'git-grep) then M-x git-grep
;;;
;;; Code:
;;;

;;; URL: https://github.com/tototoshi/git-grep-el/blob/master/git-grep.el

(defun git-grep ()
  (interactive)
  (let ((root (locate-dominating-file default-directory ".git")))
    (cond (root (let* ((ggrep (format "cd %s && git --no-pager grep -i -n --no-color" root))
                       (command
                        (read-from-minibuffer
                         "COMMAND: "
                         `(,(format "%s '%s'"  ggrep (or (current-word) "")) . ,(+ 3 (length ggrep))))))
                  (grep-find command)))
          (t (message "%s is not in a git working tree" default-directory)))))

(provide 'git-grep)

;;; git-grep.el ends here
