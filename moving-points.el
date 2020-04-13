(defun move-beginning-of-screen-line ()
  "Move point to the beginning of current screen line."
  (interactive
   (interactive-form (vertical-motion 0))))

(defun move-end-of-screen-line ()
  "Move point to the end of current screen line."
  (interactive
   (progn
     (setq a (progn (vertical-motion 0) (point)))
     (setq b (progn (vertical-motion 1) (vertical-motion 0) (point)))
     (if (= a b) (interactive-form (vertical-motion 1))
       (progn (backward-char))))))
