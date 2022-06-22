(require 'package)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("org" . "https://orgmode.org/elpa/")
        ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

(package-refresh-contents)

;; Package to install
(defvar my/favorite-packages
  '(
    company
    company-c-headers
    company-org-block
    company-try-hard
    markdown-mode
    powerline
    rainbow-delimiters
    syslog-mode
    grip-mode
    ))

;; Install packeged not installed yet
;; Kick M-x eval-buffer
(dolist (package my/favorite-packages)
  (unless (package-installed-p package)
    (package-install package)))
