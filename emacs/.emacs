;; Melpa for packages
;; So far (14-09-2016) I have looked into:
;; org mode, auto-complete-mode, and ido
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(require 'use-package)
;;auto-complete (from Mike Zamansky)
;;
(use-package auto-complete
	     :ensure t
	     :init
	     (progn
	       (ac-config-default)
	       (global-auto-complete-mode t)
	       ))

(use-package org-ac
	     :ensure t
	     :init (progn
		     (require 'org-ac)
		     (org-ac/config-default)
		     ))
;; add dictionary dir
(add-to-list 'ac-user-dictionary-files "~/.emacs-d/dict/dutch")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ido-everywhere t)
 '(package-selected-packages
   (quote
    (use-package mentor org-ac multi-term cedit auctex swiper org evil avy)))
 '(show-paren-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#181a26" :foreground "gray80" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "PfEd" :family "DejaVu Sans Mono"))))
 '(buffer-menu-buffer ((t (:weight bold :height 1.5 :family "Deja Vu Sans Mono")))))
 ;;; Unbind 'C-x f'
(global-unset-key "\C-xf")

;; Use f12 to save current buffer
;; C-x-s is the normal Emacs way
(global-set-key (kbd "<f12>") 'save-buffer)

;; 

;; Activate Evil mode
(global-set-key (kbd "<f9>") 'evil-mode)
;; Deactivate Evil mode
(global-set-key (kbd "<S-f9>") 'evil-emacs-state)

;; Activate Ido mode for buffer swichting (buffers in the modeline)
    (require 'ido)
    (ido-mode t)

    (require 'ivy)
    (ivy-mode t)

;;:::::Heere starteth the init file of one Matthew Ozor
;;:::::We need to pick the options we like and discard the rest.
;;:::::In case of doute we comment the line out, lest we entaminate unpredictable behaviour
;; all roads lead home
(cd "~/")

;; set default load path
;;(setq load-path (cons "~/.emacs.d/" load-path))

;; turn off welcome screen
(setq inhibit-startup-message t) 

;; set frame size and position
(add-to-list 'default-frame-alist '(top . 1))
(add-to-list 'default-frame-alist '(left . 1))
;; home, jd check whether this is OK 
(if (string= (system-name) "shiling")
    (progn
      (add-to-list 'default-frame-alist '(height . 62))
      (add-to-list 'default-frame-alist '(width . 120))))
  
;; Set the text for titlebar and icons
;; not much use in cwm:\)
(if window-system
    (setq frame-title-format (list "GNU Emacs " emacs-version "@" (system-name) " [buffer: %b]"))
          icon-title-format "Emacs")

;; turn on/off menu bar
;;jd Switched off for now because in some modes it's like Help
;;(menu-bar-mode t)

;;turn on/off toolbar
(tool-bar-mode -1)

;; turn on/off scroll bars
(toggle-scroll-bar t)

;; show column-number in mode line
(column-number-mode t)

;; turn on syntax highlighting
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1))        ; GNU Emacs

;; turn on parentheses highlighting
(show-paren-mode)

;;turn on highlight changes
(highlight-changes-mode t)

;; display date and time always
(setq display-time-day-and-date t)
(display-time)

;; show file size
(size-indication-mode)

;; type "y"/"n" instead of "yes"/"no"
(fset 'yes-or-no-p 'y-or-n-p)

;; Save all backup files in this directory.
(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/"))))

;; disable backup files
(setq make-backup-files nil)

;; disable auto save
(auto-save-mode -1)

;; autosave history on eshell
(setq eshell-save-history-on-exit t)

;; keep ediff in one frame
;(ediff-setup-windows-plain)

;; turn off word wrap
;;jd Original: (setq default-truncate-lines 1)
;; From http://stackoverflow.com/questions/3281581/how-to-word-wrap-in-emacs:

(visual-line-mode t)
(global-visual-line-mode t)

;; turn on fancy prompts in the shell
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; turn off shell command echo
(defun my-comint-init () 
  (setq comint-process-echoes t)) 
(add-hook 'comint-mode-hook 'my-comint-init) 

;; line numbers
(if (>= emacs-major-version 23) (require 'linum))
