;;; doom-tomorrow-day-theme.el -- port of tomorrow theme -*- no-byte-compile: t; -*-
;;; Commentary:
;; This file is part of emacs-doom-themes, which provides license
;; information.
;;; Code:

(require 'doom-themes)

(defgroup doom-pencil-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-pencil-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line.
Can be an integer to determine the exact padding."
  :group 'doom-pencil-theme
  :type '(choice integer boolean))

;; This is basically adapted from vim pencil theme
(def-doom-theme doom-pencil
  "A light theme based off of Chris Kempson's Tomorrow Dark."

  ;; name        gui       256       16
  ((bg         '("#f1f1f1" "white"   "white" ))
   (bg-alt     '("#e4e4e4" nil       nil     )) ; prev #eaeaea
   (base0      '("#f2f2f2" "white"   "white" ))
   (base1      '("#e4e4e4" "#e4e4e4"         ))
   (base2      '("#dedede" "#cccccc"         ))
   (base3      '("#d6d4d4" "#cccccc" "silver"))
   (base4      '("#C0bfbf" "#c0c0c0" "silver"))
   (base5      '("#a3a1a1" "#adadad" "silver"))
   (base6      '("#8a8787" "#949494" "silver"))
   (base7      '("#696769" "#6b6b6b" "silver"))
   (base8      '("#000000" "#000000" "black" ))
   (fg         '("#4d4d4c" "#3a3a3a" "black"))
   (fg-alt     (doom-darken fg 0.6))

   (black           "#212121")
   (medium-gray     "#767676")
   (white           "#f1f1f1")
   (actual-white    "#ffffff")
   (light-black     "#424242")
   (lighter-black   "#545454")

   (subtle-black    "#303030")
   (light-gray      "#b2b2b2")
   (lighter-gray    "#c6c6c6")

   (pink            "#fb007a")
   (dark-red        "#c30071")
   (light-red       "#e32791")
   (orange          "#d75f5f")

   (darker-blue     "#005f87")
   (dark-blue       "#008ec4")
   (blue            "#20bbfc")
   (light-blue      "#b6d6fd")
   (dark-cyan       "#20a5ba")
   (light-cyan      "#4fb8cc")

   (dark-green      "#10a778")
   (light-green     "#5fd7a7")

   (dark-purple     "#523c79")
   (light-purple    "#6855de")

   (yellow          "#f3e430")
   (dark-yellow     "#a89c14")

   (grey       '("#a5a4a5" "#999999" "silver"))
   (red        '("#c82829" "#cc3333" "red"))
   (orange     '("#f5871f" "#ff9933" "brightred"))
   (yellow     '("#eab700" "#ffcc00" "yellow"))
   (green      '("#718c00" "#669900" "green"))
   ;; (blue       '("#3e999f" "#339999" "brightblue"))
   ;; (dark-blue  '("#4271ae" "#336699" "blue"))
   (teal       blue) ; FIXME replace with real teal
   (magenta    '("#c9b4cf" "#c9b4cf" "magenta"))
   (violet     '("#8959a8" "#996699" "brightmagenta"))
   (cyan       '("#8abeb7" "#8abeb7" "cyan"))
   ;; (dark-cyan  (doom-lighten cyan 0.4))

   ;; face categories
   (highlight      blue)
   (vertical-bar   base0)
   (selection      light-blue) ; prev base3
   (builtin        blue)
   (comments       light-gray) ;prev grey
   (doc-comments   (doom-darken grey 0.1))
   (constants      dark-green) ;prev orange
   (functions      blue)
   (keywords       dark-red) ;prev violet
   (methods        blue)
   (operators      fg)
   (type           dark-blue) ;prev yello
   (strings        light-cyan) ;prev green
   (variables      light-black) ;prev red
   (numbers        light-cyan) ;prev orange
   (region         selection)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    fg-alt)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-bg     `(,(doom-darken (car bg) 0.1) ,@(cdr base3)))
   (modeline-bg-alt `(,(doom-darken (car bg) 0.14) ,@(cdr base1)))
   (modeline-fg     base8)
   (modeline-fg-alt comments)
   (-modeline-pad
    (when doom-pencil-padded-modeline
      (if (integerp doom-pencil-padded-modeline)
          doom-pencil-padded-modeline
        4))))

  ;; --- faces ------------------------------
  ((doom-modeline-buffer-path       :foreground violet :bold bold)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path)

   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground blue :bold bold)

   (ivy-current-match :background region :distant-foreground grey :weight 'ultra-bold)
   (ivy-minibuffer-match-face-1
    :foreground base5
    :weight 'light)

   (ivy-minibuffer-match-face-2 :inherit 'ivy-minibuffer-match-face-1 :foreground violet :weight 'ultra-bold)
   (ivy-minibuffer-match-face-3 :inherit 'ivy-minibuffer-match-face-2 :foreground blue)
   (ivy-minibuffer-match-face-4 :inherit 'ivy-minibuffer-match-face-2 :foreground red)

   ;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground pink) ;prev violet
   (rainbow-delimiters-depth-2-face :foreground orange)   ;prev blue
   (rainbow-delimiters-depth-3-face :foreground dark-red) ;prev orange

   (org-level-1 :foreground pink :height 1.4)
   (org-level-2 :foreground blue :height 1.2)
   (org-level-3 :foreground dark-blue :height 1.0)
   (org-level-4 :foreground darker-blue :height 1.0)
   (org-level-5 :foreground dark-red :height 1.0)
   (org-level-6 :foreground pink :height 1.0)
   (org-level-7 :foreground blue :height 1.0)
   (org-level-8 :foreground dark-blue :height 1.0)

   ;; (rainbow-delimiters-depth-4-face :foreground blue)
   ;; (rainbow-delimiters-depth-5-face :foreground magenta)
   ;; (rainbow-delimiters-depth-6-face :foreground yellow)
   ;; (rainbow-delimiters-depth-7-face :foreground teal)

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt)))

   ;; org
   (org-block-begin-line         :foreground base7 :background base3 :extend t)

   ;; treemacs
   (treemacs-git-untracked-face :foreground yellow)
   )

  ;; --- variables --------------------------
  ;; ()
  )

(provide 'doom-pencil-theme)
;;; doom-tomorrow-day-theme.el ends here

