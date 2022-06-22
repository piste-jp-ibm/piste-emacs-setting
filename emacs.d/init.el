;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs Setting File
;;                  Written by Atsushi Abe
;;
;; Time-stamp: <2019-07-25 19:26:03 piste>

;; XEmacs backwards compatibility file
(cond
 ((= emacs-major-version 28)
  (load (expand-file-name "~/.emacs.d/emacs28.el") nil t nil))
 
 ((= emacs-major-version 27)
  (load (expand-file-name "~/.emacs.d/emacs27.el") nil t nil))

 ((= emacs-major-version 26)
  (load (expand-file-name "~/.emacs.d/emacs26.el") nil t nil))

 ((= emacs-major-version 24)
  (load (expand-file-name "~/.emacs.d/emacs24.el") nil t nil))
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; END OF FILE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company-org-block company-c-headers grip-mode syslog-mode rainbow-delimiters powerline markdown-mode company use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
