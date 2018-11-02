;;; split-and-move.el --- Split current GNU Emacs window and move point to the new pane
;;
;;; Copyright (C) 2018  Free Software Foundation, Inc.
;;
;; Author: Eric Crosson <eric.s.crosson@utexas.edu>
;; Version: 0.0.1
;; Keywords: split window move point active pane
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/EricCrosson/split-and-move
;;
;;
;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.
;;
;;
;;; Commentary:
;;
;; This package provides functions to
;; split the current window and move cursor to the new window.
;;
;; Anytime I desire a window split it's to show new information in the
;; other pane; with default Emacs commands that would be two actions
;; (C-x 3 C-x o).  This package provides alternate commands to perform
;; this sequence atomically.
;;
;; I recommend binding these actions over the default functions like so
;;
;; (use-package split-and-move
;;   :quelpa (split-and-move
;;            :fetcher github
;;            :repo "EricCrosson/split-and-move")
;;   :bind (("C-x 2" . split-and-move-below)
;;          ("C-x 3" . split-and-move-right)))
;;
;; Or, without `use-package'
;;
;; (require 'split-and-move)
;; (bind-keys
;;  ("C-x 2" . split-and-move-below)
;;  ("C-x 3" . split-and-move-right))


;;; Code:

;;;###autoload
(defun split-and-move-below ()
  "Split the selected window into two windows, one above the other.
The original window is above.  The selected window is the newly
split-off window below and it displays the same buffer."
  (interactive)
  (split-window-below)
  (other-window 1))

;;;###autoload
(defun split-and-move-right ()
  "Split the selected window into two side-by-side windows.
The original window is on the left.  The selected window is the newly
split-off window to the right and it displays the same buffer."
  (interactive)
  (split-window-right)
  (other-window 1))


(provide 'split-and-move)

;;; split-and-move.el ends here
