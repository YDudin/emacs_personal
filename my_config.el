(require 'multiple-cursors)

(setq path-to-ctags "/usr/local/bin/ctags")

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)

(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C-$") 'ispell-word)

;; FUNCTIONS

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name)))
  )
