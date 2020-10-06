;; Package repositories
(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; Basic Settings
(setq inhibit-startup-screen t)
(menu-bar-mode 0)
(tool-bar-mode 0)
(ido-mode 1)
(add-to-list 'default-frame-alist '(font . "Source Code Pro Medium-13"))
(set-face-attribute 'default t :font "Source Code Pro Medium-13")

;; Theme
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages '(groovy-mode haskell-mode smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Emacs save files
(setq backup-directory-alist '(("." . "~/.emacs_saves")))

;; Alternate Key Bindings
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Powerline
(require 'powerline)
(require 'moe-theme)
(powerline-moe-theme)
