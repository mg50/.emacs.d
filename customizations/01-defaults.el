(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(fset 'yes-or-no-p 'y-or-n-p)

(defun indent-line-and-newline-down ()
  "blah"
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

(defun indent-line-and-newline-up ()
  "blah"
  (interactive)
  (move-beginning-of-line 1)
  (newline-and-indent)
  (previous-line)
  (previous-line)
  (move-end-of-line 1)
  (newline-and-indent)
  (next-line)
  (backward-delete-char 1)
  (move-end-of-line 1))

; (flymake-mode)
(menu-bar-mode -1)

(electric-pair-mode)
(load-theme 'monokai t)

(powerline-default-theme)
(setq confirm-nonexistent-file-or-buffer nil)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(push ".ibc" completion-ignored-extensions)

(ido-mode)
