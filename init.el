;; package.el setting
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
;;
;(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)
;;
;;cursor position information
(column-number-mode 1)
;;
;;using <right> <left> <up> <down> to navigate between windows
(global-set-key (kbd "C-x w <right>") 'windmove-right )
(global-set-key (kbd "C-x w <left>") 'windmove-left )
(global-set-key (kbd "C-x w <up>") 'windmove-up )
(global-set-key (kbd "C-x w <down>") 'windmove-down )
;;
;;set buffer auto reverted
(global-auto-revert-mode 1)
;;
;;active evil globally
(evil-mode 1)
;;
;;change short-cut for hs-minor-mode
(global-set-key (kbd "C-x c h") 'hs-hide-block)
(global-set-key (kbd "C-x c H") 'hs-hide-all)
(global-set-key (kbd "C-x c s") 'hs-show-block)
(global-set-key (kbd "C-x c S") 'hs-show-all)
(global-set-key (kbd "C-x c t") 'hs-toggle-hiding)
(global-set-key (kbd "C-x c <right>") 'hs-hide-level)
(add-hook 'prog-mode-hook 'hs-minor-mode)
;;
;;set indentation for fortran90
(setq tab-with 2) ;set tab as two spaces; keep the coding style consistent
;;
;;calling ctags to build tags
;(setq path-to-ctags ::/usr/nin/ctags) ;; <- your ctags path in the system here
;(defun create-tags (dir-name)
;  "Create tags files."
;  (interactive "DDirectory: ")
;  (shell-command
;   (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name)))
; )
;;
;;setting for theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-eighties)))
 '(custom-safe-themes
   (quote
    ("628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
