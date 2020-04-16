;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs25 Setting File
;;                  Written by Atsushi Abe
;;
;; Time-stamp: <2018-12-17 15:03:32 piste>
;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Launch server mode
;(require 'server)
;(eval-when-compile (require 'server))
;(when (and (functionp 'server-running-p)
;           (not (server-running-p)))
;  (server-start))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Using color definitions

;; For Dark theme
(setq color_zouge         "#f8f4e6")
(setq color_binrojizome   "#433d3c")
(setq color_kurotsurubami "#544a47")
(setq color_miruiro       "#726d40")
(setq color_soho          "#ab6953")
(setq color_genjinezu     "#888084")
(setq color_nijiiro       "#f6bfbc")
(setq color_momohanairo   "#e198b4")
(setq color_awafujiiro    "#bbc8e6")
(setq color_shojyohi      "#e2041b")
(setq color_asamurasaki   "#c4b3ef")
(setq color_kamenozoki    "#a2d7dd")
(setq color_wakanairo     "#d8e698")
(setq color_urahayanagi   "#c1d8ac")
(setq color_kenpoiro      "#543f32")
(setq color_tyojicha      "#b4866b")
(setq color_suzuiro       "#9ea1a3")
(setq color_urumiiro      "#c8c2be")
(setq color_rikyusirocha  "#b3ada0")

(setq color_sunairo       "#bcd3b2")
(setq color_natsumushi    "#cee4ae")
(setq color_yuuou         "#f9c89b")
(setq color_tankou        "#f8e58c")
(setq color_sosyoku       "#eae5e3")
(setq color_kogane        "#e6b422")
(setq color_koikurenai    "#a22041")

;; For Light theme
(setq color_torinokoiro   "#fff1cf")
(setq color_karekusairo   "#ede4cd")
(setq color_budouiro      "#522f60")
(setq color_seiran        "#274a78")
(setq color_aiiro         "#165e83")
(setq color_chitosemidori "#316745")
(setq color_mushiao       "#3a5b52")
(setq color_hiwamoegi     "#82ae46")
(setq color_oitakeiro     "#769164")
(setq color_biroudo       "#2f5d50")
(setq color_tokusairo     "#3b7960")
(setq color_benikikyou    "#4d4398")
(setq color_shiraai       "#c1e4e9")
(setq color_shirahanairo  "#e8ecef")
(setq color_uguisucha     "#715c1f")
(setq color_tetsukon      "#17184b")
(setq color_ebizome       "#7a4171")
(setq color_moegiiro      "#006e54")
(setq color_azukiiro      "#96415d")
(setq color_mirucha       "#5a544b")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Color setting definitions

;; Switch theme

(if (string= (getenv "DARK") "YES")
    (progn
      (setq theme "Dark")
      )
  (setq theme "Light")
  )

;; Base color (Light)
(setq foreground-light color_binrojizome)
(setq background-light color_torinokoiro)

;; Base color (Dark)
(setq foreground-dark  color_zouge)
(setq background-dark  color_binrojizome)
(setq yank-bg-dark     color_kurotsurubami)

(if (string= theme "Dark")
    (progn
      (setq color-fg foreground-dark)
      (setq color-bg background-dark)
      (set-foreground-color color-fg)
      (set-background-color color-bg)
      (set-face-attribute 'region nil :background yank-bg-dark)

      ;; Powerline
      (setq color-bg-powerline-active0 "DarkOliveGreen1")
      (setq color-bg-powerline-active1 "SpringGreen4")
      (setq color-bg-powerline-active2 "LightGoldenrod4")
      (setq color-bg-powerline-inactive0 "gray30")
      (setq color-fg-powerline-inactive0 "gray70")
      (setq color-bg-powerline-inactive1 "gray70")
      (setq color-bg-powerline-inactive2 "gray70")

      ;; White spaces
      (setq color-fg-trailing color_zouge)
      (setq color-bg-trailing color_miruiro)
      (setq color-bg-tab      color_kurotsurubami)
      (setq color-bg-db       color_kurotsurubami)

      ;; Programming (Bold)
      (setq color-fg-warning  color_shojyohi)
      (setq color-fg-keyword  color_nijiiro)
      (setq color-fg-builtin  color_momohanairo)
      (setq color-fg-type     color_awafujiiro)
      (setq color-fg-constant color_urahayanagi)
      (setq color-fg-pp       color_asamurasaki)

      ;; Programming (Normal)
      (setq color-fg-function color_kamenozoki)
      (setq color-fg-variable color_wakanairo)
      (setq color-fg-string   color_urumiiro)
      (setq color-bg-string   color_kenpoiro)
      (setq color-fg-lablel   color_urahayanagi)
      (setq color-fg-doc      color_rikyusirocha)
      (setq color-fg-comment  color_genjinezu)

      ;; Rainbow
      (setq color-fg-rainbow1  color_kamenozoki)
      (setq color-fg-rainbow2  color_kamenozoki)
      (setq color-fg-rainbow3  color_sunairo)
      (setq color-fg-rainbow4  color_natsumushi)
      (setq color-fg-rainbow5  color_yuuou)
      (setq color-fg-rainbow6  color_tankou)
      (setq color-fg-rainbow7  color_awafujiiro)
      (setq color-fg-rainbow8  color_sosyoku)
      (setq color-fg-rainbow9  color_momohanairo)
      (setq color-fg-unmatched color_zouge)
      (setq color-bg-unmatched color_koikurenai)
      (setq color-fg-mismatch  color_binrojizome)
      (setq color-bg-mismatch  color_kogane)
      )

  ;; Face color setting for Light mode
  (setq color-fg foreground-light)
  (setq color-bg background-light)

  (set-foreground-color color-fg)
  (set-background-color color-bg)

  ;; Powerline
  (setq color-bg-powerline-active0   "DarkOliveGreen1")
  (setq color-bg-powerline-active1   "SpringGreen4")
  (setq color-bg-powerline-active2   "LightGoldenrod4")
  (setq color-bg-powerline-inactive0 "gray30")
  (setq color-fg-powerline-inactive0 "gray70")
  (setq color-bg-powerline-inactive1 "gray70")
  (setq color-bg-powerline-inactive2 "gray70")

  ;; White spaces
  (setq color-fg-trailing color_binrojizome)
  (setq color-bg-trailing color_shirahanairo)
  (setq color-bg-tab      color_shiraai)
  (setq color-bg-db       color_kurotsurubami)

  ;; Programming (Bold)
  (setq color-fg-warning  color_shojyohi)
  (setq color-fg-keyword  color_budouiro)
  (setq color-fg-builtin  color_seiran)
  (setq color-fg-type     color_aiiro)
  (setq color-fg-constant color_chitosemidori)
  (setq color-fg-pp       color_mushiao)

  ;; Programming (Normal)
  (setq color-fg-function color_biroudo)
  (setq color-fg-variable color_tokusairo)
  (setq color-fg-string   color_binrojizome)
  (setq color-bg-string   color_karekusairo)
  (setq color-fg-lablel   color_benikikyou)
  (setq color-fg-doc      color_hiwamoegi)
  (setq color-fg-comment  color_oitakeiro)

  ;; Rainbow
  (setq color-fg-rainbow1  color_biroudo)
  (setq color-fg-rainbow2  color_biroudo)
  (setq color-fg-rainbow3  color_uguisucha)
  (setq color-fg-rainbow4  color_tetsukon)
  (setq color-fg-rainbow5  color_koikurenai)
  (setq color-fg-rainbow6  color_ebizome)
  (setq color-fg-rainbow7  color_moegiiro)
  (setq color-fg-rainbow8  color_azukiiro)
  (setq color-fg-rainbow9  color_mirucha)
  (setq color-fg-unmatched color_zouge)
  (setq color-bg-unmatched color_koikurenai)
  (setq color-fg-mismatch  color_binrojizome)
  (setq color-bg-mismatch  color_kogane)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Character code setting
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; OS generic setting
(require 'generic-x)

;; When opened from Desktep entry, PATH won't be set to shell's value.
(if (eq system-type 'darwin)
    (let ((path-str
           (replace-regexp-in-string
            "\n+$" "" (shell-command-to-string "echo $PATH"))))
      (setenv "PATH" path-str)
      (setq exec-path (nconc (split-string path-str ":") exec-path)))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Global Setting
(global-linum-mode t)
(setq line-number-mode t)
(setq column-number-mode t)
(display-time-mode)
(which-function-mode)
(setq kill-whole-line t)
(define-key global-map "\C-z" nil)
(setq-default major-mode 'text-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Powerline
(require 'powerline)

;(setq powerline-default-separator 'utf-8)
;(setq powerline-current-separator 'utf-8)

(powerline-default-theme)
;(powerline-center-theme)
;(powerline-center-evil-theme)
;(powerline-vim-theme)
;(powerline-nano-theme)

(setq ns-use-srgb-colorspace nil)

(set-face-attribute 'powerline-active0 nil
                    :background "DarkOliveGreen1")
(set-face-attribute 'powerline-active1 nil
                    :background "SpringGreen4")
(set-face-attribute 'powerline-active2 nil
                    :background "LightGoldenrod4")

(set-face-attribute 'powerline-inactive0 nil
                    :foreground "gray30"
                    :background "gray60")
(set-face-attribute 'powerline-inactive1 nil
                    :foreground "gray70"
                    :background "gray70")
(set-face-attribute 'powerline-inactive2 nil
                    :foreground "gray70"
                    :background "gray70")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; linum setting
(unless window-system
  (add-hook 'linum-before-numbering-hook
            (lambda ()
              (setq-local linum-format-fmt
                          (let ((w (length (number-to-string
                                            (count-lines (point-min) (point-max))))))
                            (concat "%" (number-to-string w) "d"))))))

(defun linum-format-func (line)
  (concat
   (propertize (format linum-format-fmt line) 'face 'linum)
   (propertize " " 'face 'mode-line)))

(unless window-system
  (setq linum-format 'linum-format-func))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Window color
(if window-system
    (progn
      (set-foreground-color "black")
      (set-background-color "AntiqueWhite")
      ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Enable Clipboard
(setq x-select-enable-clipboard t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Font setting on X
(if window-system
    (progn
     (if (eq system-type 'darwin)
         (setq mac-allow-anti-aliasing t)      ;; turn on anti-aliasing (default)
       ;;(setq mac-allow-anti-aliasing nil)  ;; turn off anti-aliasing
       )

     (if (>= emacs-major-version 23)
         (if (eq system-type 'darwin)
             (progn
               (let ((size (if (>= (x-display-pixel-width) 1900) 12 10)))
                 (condition-case err
                     ;;(let* ((font-family "DejaVu Sans Mono for Powerline")
                     (let* ((font-family "DejaVu Sans Mono")
                            (jp-font-family "IPAGothic")
                            ;;(jp-font-family "MigMix 1M Regular")
                            (font-size size)
                            (font-height (* font-size size) )
                            )
                       (set-face-attribute 'default nil :family font-family :height font-height)
                       (let ((name (frame-parameter nil 'font))
                             (jp-font-spec (font-spec :family jp-font-family))
                       (jp-characters '(katakana-jisx0201
                                        cp932-2-byte
                                        japanese-jisx0212
                                        japanese-jisx0213-2
                                        japanese-jisx0213.2004-1))
                       (font-spec (font-spec :family font-family))
                       (characters '((?\u00A0 . ?\u00FF)    ; Latin-1
                                     (?\u0100 . ?\u017F)    ; Latin Extended-A
                                     (?\u0180 . ?\u024F)    ; Latin Extended-B
                                     (?\u0250 . ?\u02AF)    ; IPA Extensions
                                     (?\u0370 . ?\u03FF)))) ; Greek and Coptic
                         (dolist (jp-character jp-characters)
                           (set-fontset-font name jp-character jp-font-spec))
                         (dolist (character characters)
                           (set-fontset-font name character font-spec))
                         (add-to-list 'face-font-rescale-alist
                                      '("IPAGothic" . 1.2))
                                      ;;'("MigMix 1M Regular" . 2.0))
                         ))
                   (error (message "%s" err))))
               )

;;           (progn
;;             (set-default-font "DejaVu Sans Mono-9"))
           )
       )

     ;; Frame size at start time
     (if (>= (x-display-pixel-width) 1900)
         (setq initial-frame-alist
               (append (list
                        '(width . 120)
                        '(height . 80)
                        )
                       initial-frame-alist))
         (setq initial-frame-alist
               (append (list
                        '(width . 120)
                        '(height . 60)
                        )
                       initial-frame-alist))
         )
     (setq default-frame-alist initial-frame-alist)
     )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setting of Anthy
;(load "anthy")
;(global-set-key "\C-o" 'anthy-mode)
;(setq anthy-wide-space " ")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Editing configurations
;(setq default-tab-width 8)
(setq-default indent-tabs-mode nil)
(setq-default outline-minor-mode t)
;(setq indent-line-function 'indent-relative-maybe)
;(setq-default case-fold-search t)
;(setq case-replace t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Cursor Configurations
(setq next-line-add-newlines nil)
(setq require-final-newline t)
(setq next-screen-context-lines 15)
(setq scroll-step 0)
(setq scroll-conservatively 0)
(setq scroll-margin 2)
(setq scroll-preserve-screen-position nil)
(setq transient-mark-mode 1)
(setq mouse-yank-at-point t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Window setting
(setq-default truncate-lines nil)
(setq-default truncate-partial-width-windows t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Scroll bar setting
(set-scroll-bar-mode 'right)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Startup setting
(setq inhibit-startup-message t)   ; No startup message
(setq initial-scratch-message nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Misc
(setq completion-ignore-case t)
(setq message-log-max 10000)
(setq repeat-message-function 'ignore)
(setq use-dialog-box nil)
;;(setq suggest-key-bindings nil)
;;(setq view-read-only t)
(setq enable-recursive-minibuffers t)

;; garbage correction setting
(setq gc-cons-threshold 40000000)
(setq garbage-collection-messages t) ;; Print garbage correction message

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; debug/error
(setq debug-on-error nil)
(setq eval-expression-print-level nil)
(setq eval-expression-print-length nil)
(setq eval-expression-debug-on-error nil)
(setq edebug-print-length 1000)
(setq edebug-print-level 1000)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto fill of update time
;; Insert date automatically if the file has "Time-stamp: <>" or
;; "Time-stamp: " "" within 20 lines at the top of the file
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-line-limit 20)

;; Magic text format
;; (setq time-stamp-start "Time-stamp:[ \t]+\\\\?[\"<]+")
;; (setq time-stamp-end "\\\\?[\">]")

;; Time stump format
(setq time-stamp-format "%:y-%02m-%02d %02H:%02M:%02S %u")

;; Suppress warning
(setq time-stamp-old-format-warn nil) ;; default: 'ask

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Highlight parentheses
(show-paren-mode t)

(setq show-paren-style 'parenthesis)
;(setq show-paren-style 'mixed)
;(setq show-paren-style 'expression)

;(setq show-paren-ring-bell-on-mismatch t)
(setq show-paren-delay 0.05)
(set-face-background 'show-paren-match-face "light sky blue")
(set-face-background 'show-paren-mismatch-face  "tomato")

;; Disable default highlight feature by M-:
(setq blink-matching-paren nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rainbow-delimiters configuration
(require 'rainbow-delimiters)
;;(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; Use color setting
(set-face-attribute 'rainbow-delimiters-depth-1-face nil
                    :weight 'bold
                    :foreground color-fg-rainbow1)
(set-face-attribute 'rainbow-delimiters-depth-2-face nil
                    :weight 'bold
                    :foreground color-fg-rainbow2)
(set-face-attribute 'rainbow-delimiters-depth-3-face nil
                    :weight 'bold
                    :foreground color-fg-rainbow3)
(set-face-attribute 'rainbow-delimiters-depth-4-face nil
                    :weight 'bold
                    :foreground color-fg-rainbow4)
(set-face-attribute 'rainbow-delimiters-depth-5-face nil
                    :weight 'bold
                     :foreground color-fg-rainbow5)
(set-face-attribute 'rainbow-delimiters-depth-6-face nil
                    :weight 'bold
                    :foreground color-fg-rainbow6)
(set-face-attribute 'rainbow-delimiters-depth-7-face nil
                    :weight 'bold
                    :foreground color-fg-rainbow7)
(set-face-attribute 'rainbow-delimiters-depth-8-face nil
                    :weight 'bold
                    :foreground color-fg-rainbow8)
(set-face-attribute 'rainbow-delimiters-depth-9-face nil
                    :weight 'bold
                    :foreground color-fg-rainbow9)
(set-face-attribute 'rainbow-delimiters-unmatched-face nil
                     :weight 'bold
                     :foreground color-fg-unmatched
                     :background color-bg-unmatched )
(set-face-attribute 'rainbow-delimiters-mismatched-face nil
                     :weight 'bold
                     :foreground color-fg-mismatch
                     :background color-bg-mismatch)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Set executable bit automatically
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Remove needless white space characters
(defun my-trim-buffer ()
  "Delete excess white space."
  (interactive)
  (save-excursion
    ;; Remove trailing white spaces
    (goto-char (point-min))
    (while (re-search-forward "[ \t]+$" nil t)
      (replace-match "" nil nil))
    ;; Remove trailing empty lines
    (goto-char (point-max))
    (delete-blank-lines)
    ;; Replace white spaces to tab if possible
    ;; (mark-whole-buffer)
    ;; (tabify (region-beginning) (region-end))
    ))
(add-hook 'write-file-hooks 'my-trim-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Delete empty file
(defun my-delete-file-if-no-contents ()
  (when (and
         (buffer-file-name (current-buffer))
         (= (point-min) (point-max)))
    (when (y-or-n-p "Delete file and kill buffer?")
      (delete-file
       (buffer-file-name (current-buffer)))
      (kill-buffer (current-buffer)))))
(if (not (memq 'my-delete-file-if-no-contents after-save-hook))
    (setq after-save-hook
          (cons 'my-delete-file-if-no-contents after-save-hook)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Change yes/no to y/n in finishing emacs
(defadvice save-buffers-kill-emacs
    (around save-buffers-kill-emacs-yornp activate)
  (let ((default (symbol-function 'yes-or-no-p)))
    (fset 'yes-or-no-p 'y-or-n-p)
    ad-do-it
    (fset 'yes-or-no-p default)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Highlighting
(defgroup visible-mark nil
  "Show the position of your mark."
  :group 'convenience
  :prefix "visible-mark-")

(defface visible-mark-face
  `((((type tty) (class color))
     (:background "blue" :foreground "white"))
    (((type tty) (class mono))
     (:inverse-video t))
    (((class color) (background dark))
     (:background "blue"))
    (((class color) (background light))
     (:background "lightblue"))
    (t (:background "gray")))
  "Face for the mark."
  :group 'visible-mark)

(defvar visible-mark-overlay nil
  "The overlay used in this buffer.")
(make-variable-buffer-local
 'visible-mark-overlay)

(defun visible-mark-move-overlay ()
  "Move the overlay in `visible-mark-overlay'
 to a new position."
  (move-overlay visible-mark-overlay
                (mark)
                (1+ (mark))))

(define-minor-mode visible-mark-mode
  "A mode to make the mark visible."
  nil nil nil
  :group 'visible-mark
  (if visible-mark-mode
      (unless visible-mark-overlay
        (setq visible-mark-overlay
              (make-overlay (mark)
                            (1+ (mark))))
        (overlay-put visible-mark-overlay
                     'face 'visible-mark-face)
        (add-hook 'post-command-hook
                  'visible-mark-move-overlay))
    (when visible-mark-overlay
      (delete-overlay visible-mark-overlay)
      (setq visible-mark-overlay nil))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Highlighting double-byte-space tab and trailing white spaces
(require 'whitespace)
(setq whitespace-style '(face           ; Using face
                         trailing       ; trailing spaces
                         tabs           ; Tab
                         empty          ; Following/Trailing empty lines
                         ;space-mark     ; Mark for space
                         ;tab-mark       ; Mark for tab
                         ))
(setq whitespace-display-mappings
      '(
        (space-mark ?\u3000 [?\u2423])
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])
        ))
(setq whitespace-trailing-regexp  "\\([ \u00A0]+\\)$")
(setq whitespace-space-regexp "\\(\u3000+\\)")
(set-face-attribute 'whitespace-trailing nil
                    :foreground color-fg-trailing
                    :background color-bg-trailing
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :foreground color-fg-trailing
                    :background color-bg-tab
                    :underline nil)
(set-face-attribute 'whitespace-space nil
                    :foreground color-fg-trailing
                    :background color-bg-db
                    :underline nil)

(global-whitespace-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Highlighting yanked region
(when window-system
  (defadvice yank (after ys:highlight-string activate)
    (let ((ol (make-overlay (mark t) (point))))
      (overlay-put ol 'face 'highlight)
      (sit-for 0.5)
      (delete-overlay ol)))
  (defadvice yank-pop (after ys:highlight-string activate)
    (when (eq last-command 'yank)
      (let ((ol (make-overlay (mark t) (point))))
        (overlay-put ol 'face 'highlight)
        (sit-for 0.5)
        (delete-overlay ol)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; TRAMP Setting
(require 'tramp)
;(add-to-list 'tramp-remote-process-environment
;             "HISTFILE=/dev/null")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto complete mode
;(require 'auto-complete-config)
;(ac-config-default)
;(add-to-list 'ac-modes 'c-mode)
;(add-to-list 'ac-modes 'c++-mode)
;(ac-set-trigger-key "TAB")
;(setq ac-use-menu-map t)       ;; Can use C-n/C-p
;(setq ac-use-fuzzy t)          ;; Fuzzy match (fuzzy.el is required)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Settings for spell check
(setq-default ispell-program-name "/usr/local/bin/aspell") ;; For aspell
;; For ignoring Japanese text
(eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\0377]+")))

;; Mode hook setting
(mapc
 (lambda (hook)
   (add-hook hook 'flyspell-prog-mode))
 '(
   c-mode-common-hook
   c++-mode-hook
   python-mode-hook
   emacs-lisp-mode-hook
   shell-script-mode-hook
   ))

(mapc
 (lambda (hook)
   (add-hook hook '(lambda () (flyspell-mode 1))))
 '(
   fundamental-mode-hook
   text-mode-hook
   org-mode-hook
   ))

(global-set-key (kbd "C-c C-,") 'flyspell-buffer)
(global-set-key (kbd "C-c C-.") 'flyspell-goto-next-error)
(global-set-key (kbd "C-c C-/") 'flyspell-correct-word-before-point)

(eval-after-load "flyspell"
    '(progn
       (define-key flyspell-mouse-map [down-mouse-3] #'flyspell-correct-word)
       (define-key flyspell-mouse-map [mouse-3] #'undefined)
       (define-key flyspell-mouse-map [down-mouse-2] nil)
       (define-key flyspell-mouse-map [mouse-2] nil)
       )
    )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Close all buffers
(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; recentf setting
(when (require 'recentf-ext nil t)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 100)
  (setq recentf-auto-save-timer (run-with-idle-timer 30 t 'recentf-save-list))
  )

(recentf-mode 1)

;; Open recentf at start time
;(add-hook 'after-init-hook (lambda()
;    (recentf-open-files)
;    ))

;; Key binding of recentf
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-mode setting
(require 'org-install)

(defun set-exec-path-from-shell-PATH ()
  "Set up Emacs' `exec-path' and PATH environment variable to match that used by the user's shell.

This is particularly useful under Mac OSX, where GUI apps are not started from a shell."
  (interactive)
  (let ((path-from-shell (replace-regexp-in-string "[ \t\n]*$" "" (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

(set-exec-path-from-shell-PATH)

;(setenv "PATH" (concat "/Library/TeX/texbin" (getenv "PATH")))
;(setq exec-path (append '("/Library/TeX/texbin") exec-path))

;; Key binds
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cr" 'org-remember)

;; Automode alias
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; Hide leading starts
;;(setq org-hide-leading-stars t)

;; Directory of org-default-notes-file
(setq org-directory "~/org")

;; File name of org-default-notes-file
(setq org-default-notes-file "captured.org")

;; File list for agenda
;;(setq org-agenda-files (list org-directory))
(setq org-agenda-files '("~/org"))

;; Use underline in agenda
(add-hook 'org-agenda-mode-hook '(lambda () (hl-line-mode 1)))
(setq hl-line-face 'underline)

;; Do not use holiday in agenda
(setq calendar-holidays nil)

;; TODO State
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w)" "|" "DONE(d)" "SOMEDAY(s)")))

;; Recored timestamp of TODO completion
(setq org-log-done 'time)

;; org-mode templates
(setq org-remember-templates
      '(("Note" ?n "* %?\n  %i\n  %a" nil "Tasks")
        ("Todo" ?t "* TODO %?\n  %i\n  %a" nil "Tasks")))

(setq org-capture-templates
      '(("l" "Project(LTFS)" entry (file+headline "~/org/projects.org" "LTFS project")
         "* %?\n %U\n %i")
        ("t" "Todo" entry (file+headline "~/org/gtd.org" "Tasks")
     "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree "~/org/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        ("n" "Note" entry (file+headline "~/org/notes.org" "Notes")
         "* %?\n %U\n %i")
        ("i" "Idea" entry (file+headline "~/org/ideas.org" "Ideas")
         "* %?\nIdea: %U\n %i")
        ("p" "Patents" entry (file+headline "~/org/ideas.org" "Patents")
         "* %?\nPatents: %U\n %i")
        ("m" "Meeting" entry (file+headline "~/org/meeting.org" "Meeting")
         "* %?\n %U\n %i")
        ))

;(with-eval-after-load 'ox-latex
;
;  (setq org-latex-default-packages-alist
;  '(("AUTO"     "inputenc"  t)
;    ("T1"       "fontenc"   t)
;    (""         "fixltx2e"  nil)
;    ("dvipdfmx" "graphicx"  t)
;    (""         "longtable" nil)
;    (""         "float"     nil)
;    (""         "wrapfig"   nil)
;    (""         "rotating"  nil)
;    ("normalem" "ulem"  t)
;    (""         "amsmath"   t)
;    (""         "textcomp"  t)
;    (""         "marvosym"  t)
;    (""         "wasysym"   t)
;    (""         "amssymb"   t)
;    (""         "hyperref"  nil)
;    "\\tolerance=1000")
;  )
;
;  (add-to-list 'org-latex-classes
;               '("jsarticle"
;                 "\\documentclass{jsarticle}"
;                 ("\\section{%s}" . "\\section*{%s}")
;                 ("\\subsection{%s}" . "\\subsection*{%s}")
;                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
;                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}")
;                 ))
;
;  (add-to-list 'org-latex-packages-alist '("english" "babel") t)
;  (add-to-list 'org-latex-packages-alist '(
;                                           "top=20truemm,bottom=20truemm,left=15truemm,right=15truemm"
;                                           "geometry")
;                                           t)
;)

(setq org-latex-default-class "jsarticle")
(setq org-confirm-babel-evaluate nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; org-babel setting
(eval-after-load "org"
  '(progn
     (require 'ob-sh)
     (require 'ob-ruby)
     (require 'ob-python)
     (require 'ob-C)
     (require 'ob-dot)
     (require 'ob-gnuplot)
     (require 'ob-latex)
     ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; markdown-mode
(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Configuration of font lock

;(defface font-lock-function-call-face
;  '((t (:foreground "DarkBlue")))
;  "Font lock mode face used to highlight function calls."
;  :group 'font-lock-highlighting-faces)
;(defvar font-lock-function-call-face 'font-lock-function-call-face)
;
;;; Following block is for Emacs24.5.1 or later for highlighting keywords.
;(font-lock-add-keywords 'c-mode
;                        '(
;                          ;("\\<\\(\\sw+\\)(" 1 'font-lock-function-call-face)
;                          ("\\<\\(FIXME:\\|TODO:\\)" 1 'font-lock-warning-face prepend)
;                          ("!!!!!" 0 'font-lock-warning-face prepend)
;                          )
;                        )
;
;(font-lock-add-keywords 'c++-mode
;                        '(
;                          ;("\\<\\(\\sw+\\)(" 1 'font-lock-function-call-face)
;                          ("shard_ptr" . 'font-lock-warning-face)
;                          ("\\<\\(FIXME:\\|TODO:\\)" 1 'font-lock-warning-face prepend)
;                          ("!!!!!" 0 'font-lock-warning-face prepend)
;                          )
;                        )

(progn
  (global-font-lock-mode t)
  (require 'font-lock)
  ;; Bold faces
  (set-face-attribute 'font-lock-warning-face nil
                      :weight     'bold
                      :foreground color-fg-warning
                      :background color-bg
                      :underline  nil)
  (set-face-attribute 'font-lock-keyword-face nil
                      :weight     'bold
                      :foreground color-fg-keyword
                      :background color-bg
                      :underline  nil)
  (set-face-attribute 'font-lock-builtin-face nil
                      :weight     'bold
                      :foreground color-fg-builtin
                      :background color-bg
                      :underline  nil)
  (set-face-attribute 'font-lock-type-face nil
                      :weight     'bold
                      :foreground color-fg-type
                      :background color-bg
                      :underline  nil)
  (set-face-attribute 'font-lock-constant-face nil
                      :weight     'bold
                      :foreground color-fg-constant
                      :background color-bg
                      :underline  nil)
  (set-face-attribute 'font-lock-preprocessor-face nil
                      :weight     'bold
                      :foreground color-fg-pp
                      :background color-bg
                      :underline  nil)
  ;; Normal faces
  (set-face-attribute 'font-lock-function-name-face nil
                      :foreground color-fg-function
                      :background color-bg
                      :underline  nil)
  (set-face-attribute 'font-lock-variable-name-face nil
                      :foreground color-fg-variable
                      :background color-bg
                      :underline nil)
  (set-face-attribute 'font-lock-string-face nil
                      :foreground color-fg-string
                      :background color-bg-string
                      :underline  nil)
  (set-face-attribute 'font-lock-doc-face nil
                      :foreground color-fg-doc
                      :background color-bg
                      :underline  nil)
  (set-face-attribute 'font-lock-comment-face nil
                      :foreground color-fg-comment
                      :background color-bg
                      :underline nil)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Setting for c-mode, c++-mode

(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list
      '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))

;;(setq indent-tabs-mode nil)

;(add-hook 'c-mode-hook '(lambda () (font-lock-mode)))
;(add-hook 'c++-mode-hook '(lambda () (font-lock-mode)))
;(add-hook 'objc-mode-hook '(lambda () (font-lock-mode)))
;(add-hook 'java-mode-hook '(lambda () (font-lock-mode)))
;(add-hook 'emacs-lisp-mode-hook '(lambda () (font-lock-mode)))
;(add-hook 'html-helper-mode-hook '(lambda () (font-lock-mode)))
;(add-hook 'dired-mode-hook '(lambda () (font-lock-mode)))
;(add-hook 'sh-mode-hook '(lambda () (font-lock-mode)))

;(require 'hi-lock)
;(global-hi-lock-mode t)
;(setq hi-lock-file-patterns-policy t)

(add-hook 'c-mode-common-hook
          '(lambda ()
             ; Fixed Setting for LTFS devlopment (Do not change!!!)
             (setq font-lock-keywords c-font-lock-keywords-2)
             (c-set-style "bsd")
             (c-set-offset 'case-label        '+)
             (c-set-offset 'comment-intro     0)
             (c-set-offset 'inextern-lang     0)
             (setq c-basic-offset 4)
             (setq default-tab-width 4)
             (setq tab-width 4)
             (setq indent-tabs-mode t)
             (setq tab-stop-list
                   '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
             ; User Preference
             (setq c-tab-always-indent 10)
             (gtags-mode)
             (ruler-mode)
             (rainbow-delimiters-mode)
             (highlight-phrase "TODO:" 'hi-red-b)
             (highlight-phrase "FIXME:" 'hi-red-b)
             (highlight-phrase "!!!!!" 'hi-red-b)
             )
          )

(add-hook 'c++-mode-hook
          '(lambda ()
             ; Fixed Setting for LTFS devlopment (Do not change!!!)
             (setq font-lock-keywords c++-font-lock-keywords-2)
             (c-set-style "bsd")
             (c-set-offset 'inaccess          0)
             (c-set-offset 'access-label      '-)
             (c-set-offset 'innamespace       '-)
             (c-set-offset 'case-label        '+)
             (c-set-offset 'comment-intro     0)
             (c-set-offset 'inextern-lang     0)
             (setq c-basic-offset 4)
             (setq default-tab-width 4)
             (setq tab-width 4)
             (setq indent-tabs-mode t)
             (setq tab-stop-list
                   '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
             ; User Preference
             (setq c-tab-always-indent 10)
             (gtags-mode)
             (ruler-mode)
             (rainbow-delimiters-mode)
             (highlight-phrase "TODO:" 'hi-red-b)
             (highlight-phrase "FIXME:" 'hi-red-b)
             (highlight-phrase "!!!!!" 'hi-red-b)
             (highlight-phrase "shard_ptr" 'hi-red-b)
             )
          )

(setq auto-mode-alist
      (append
       '(
         ("\\.h$" . c++-mode)
         ("\\.x$" . c++-mode)
         )
       auto-mode-alist))

(add-hook 'perl-mode-hook
          '(lambda ()
             ;(setq c-tab-always-indent t)
             (setq default-tab-width 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (setq tab-stop-list
                   '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
             (gtags-mode)
             (ruler-mode)
             (rainbow-delimiters-mode)
             )
          )

(add-hook 'python-mode-hook
          '(lambda ()
             ;(setq c-tab-always-indent t)
             (setq default-tab-width 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (setq python-indent 4)
             (setq tab-stop-list
                   '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
             (gtags-mode)
             (ruler-mode)
             )
          )

(add-hook 'sh-mode-hook
          '(lambda ()
             (setq default-tab-width 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (setq tab-stop-list
                   '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
             (gtags-mode)
             (ruler-mode)
             )
          )

(add-hook 'sgml-mode-hook
          '(lambda ()
             (setq default-tab-width 4)
             (setq tab-width 4)
             (setq indent-tabs-mode nil)
             (setq tab-stop-list
                   '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))
             (ruler-mode)
             )
          )

(add-hook 'emacs-lisp-mode-hook
          '(lambda ()
            (setq indent-tabs-mode nil)
            (ruler-mode)
            )
          )

(add-hook 'text-mode-hook
          '(lambda ()
             (setq indent-tabs-mode t)
             (ruler-mode)
             )
          )

(add-hook 'fundamental-mode-hook
          '(lambda ()
             (setq indent-tabs-mode t)
             (ruler-mode)
             )
          )

(add-hook 'org-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq truncate-lines t)
             (setq truncate-partial-width-windows t)
             (ruler-mode)
             (font-lock-mode)
             (visual-line-mode)
             )
          )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Settings for Tag Table
(autoload 'gtags-mode "gtags" "" t)
(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; update GTAGS
(defun update-gtags (&optional prefix)
  (interactive "P")
  (let ((rootdir (gtags-get-rootpath))
        (args (if prefix "-v" "-iv")))
    (when rootdir
      (let* ((default-directory rootdir)
             (buffer (get-buffer-create "*update GTAGS*")))
        (save-excursion
          (set-buffer buffer)
          (erase-buffer)
          (let ((result (process-file "gtags" nil buffer nil args)))
            (if (= 0 result)
                (message "GTAGS successfully updated.")
              (message "update GTAGS error with exit status %d" result))))))))
;;(add-hook 'after-save-hook 'update-gtags)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; JavaScript
(autoload 'javascript-mode "javascript-mode" "JavaScript" t)
(autoload 'ecmascript-mode "ecmascript-mode" "ECMAScript" t)
(setq auto-mode-alist
      (append
       '(
         ("\\.js$" . ecmascript-mode)
         )
       auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Syslog
(require 'syslog-mode)
(add-to-list 'auto-mode-alist '("/var/log.*\\'" . syslog-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Definitions of perltidy
(defun perltidy-region ()
  "Run perltidy on the current region."
  (interactive)
  (save-excursion
    (shell-command-on-region (point)
                             (mark) "perltidy -q" nil t)))
(defun perltidy-defun ()
  "Run perltidy on the current defun."
  (interactive)
  (save-excursion (mark-defun)
                  (perltidy-region)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; SCT mode
(autoload 'sct-mode "sct-mode" "SCT" t)
(setq auto-mode-alist (cons '("\\.in$" . sct-mode) auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Dictionary setting on OSX
(if (eq system-type 'darwin)
    (global-set-key
     "\C-cw"
     (lambda ()
       (interactive)
       (let ((url (concat "dict://" (read-from-minibuffer "" (current-word)))))
         (browse-url url))))
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; END OF FILE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
