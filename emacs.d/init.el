;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs Setting File
;;                  Written by Atsushi Abe

;; Time-stamp: <2019-07-25 19:26:03 piste>

;; XEmacs backwards compatibility file
(if (string-match "XEmacs" emacs-version)
    (load (expand-file-name "~/.emacs.d/xemacs.el") nil t nil)
  (cond
   ((= emacs-major-version 26)
    (load (expand-file-name "~/.emacs.d/emacs26.el") nil t nil))

   ((= emacs-major-version 25)
    (load (expand-file-name "~/.emacs.d/emacs25.el") nil t nil))

   ((= emacs-major-version 24)
    (load (expand-file-name "./emacs24.el") nil t nil))
   )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; END OF FILE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
