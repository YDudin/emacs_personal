(require 'multiple-cursors)

(setq path-to-ctags "/usr/local/bin/ctags")

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-*") 'mc/mark-all-like-this)

(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "C-$") 'ispell-word)

(global-set-key (kbd "C-c C-f") 'neotree-toggle)

;; Set custom font
(set-face-attribute 'default nil :font "Monaco" )
(set-frame-font "Monaco" nil t)

;; Custom theme settings
(load-theme 'tango-dark)
(set-face-background 'mode-line "#262626")
(set-face-background 'highlight "#E8E8E8")
(set-face-foreground'highlight "Purple")

;; Default line length
(setq whitespace-line-column 100)

;; FUNCTIONS

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name)))
  )
