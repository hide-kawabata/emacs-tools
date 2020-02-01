(defun move-beginning-of-screen-line ()
  "Move point to the beginning of current screen line."
  (interactive
   (interactive-form (vertical-motion 0))))

(defun move-end-of-screen-line ()
  "Move point to the end of current screen line."
  (interactive
    (progn (vertical-motion 1)
	   (backward-char))))
