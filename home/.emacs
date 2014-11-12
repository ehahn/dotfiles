(require 'color-theme)
(color-theme-initialize)
(color-theme-solarized-light)

(tool-bar-mode -1)
(set-face-font 'menu "-*-terminus-*-*-*-*-12-*-*-*-*-*-*-*")
(set-face-font 'default "-*-terminus-*-*-*-*-12-*-*-*-*-*-*-*")

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(setq vc-make-backup-files 1)
(setq vc-follow-symlinks nil)

(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
      package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
      package-archives)
(package-initialize)

(setq evil-want-C-i-jump nil)
(require 'evil)
(evil-mode 1)

(require 'org)
(setq org-directory "~/org")
(setq org-agenda-files (list "~/org/notes.org"))
(define-key global-map "\C-ca" 'org-agenda)
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-log-done t)

(setq org-mobile-directory "~/Dropbox/Apps/MobileOrg")
(add-hook 'after-init-hook 'org-mobile-pull)
(add-hook 'kill-emacs-hook 'org-mobile-push)

(require 'evil-org)

(add-to-list 'org-modules 'org-timer)
(setq org-timer-default-timer 25)
(add-hook 'org-clock-in-hook (lambda ()
      (if (not org-timer-current-timer) 
      (org-timer-set-timer '(16)))))





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-default-init t)
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
