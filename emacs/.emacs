;; George Craig. This script is placed in the public domain. 
;;
;;      _____________________________________________ 
;;     //:::::::::::::::::::::::::::::::::::::::::::::\\ 
;;    //:::_______:::::::::________::::::::::_____:::::::\\ 
;;   //:::_/   _-"":::_--"""        """--_::::\_  ):::::::::\\ 
;;  //:::/    /:::::_"                    "-_:::\/:::::|^\:::\\ 
;; //:::/   /~::::::I__                      \:::::::::|  \:::\\ 
;; \\:::\   (::::::::::""""---___________     "--------"  /:::// 
;;  \\:::\  |::::::::::::::::::::::::::::""""==____      /:::// 
;;   \\:::"\/::::::::::::::::::::::::::::::::::::::\   /~:::// 
;;     \\:::::::::::::::::::::::::::::::::::::::::::)/~:::// 
;;       \\::::\""""""------_____:::::::::::::::::::::::// 
;;         \\:::"\               """""-----_____::::::// 
;;           \\:::"\    __----__                ):::// 
;;             \\:::"\/~::::::::~\_         __/~::// 
;;               \\::::::::::::::::""----"""::::// 
;;                 \\:::::::::::::::::::::::::// 
;;                   \\:::\^""--._.--""^/:::// 
;;                     \\::"\         /"::// 
;;                       \\::"\     /"::// 
;;                         \\::"\_/"::// 
;;                           \\:::::// 
;;                             \\_// 
;;                               " 
;;                  Superman is for everyone. 
;; 
;; https://gist.github.com/amboy00/5834345
;; 

;;emacs 24 uses customize and color themes
;;(require 'color-theme)
;;(load "C:/.emacs.d/myThemes/color-theme-tango.el")
;;(color-theme-tango)

;;(put 'scroll-left 'disabled nil)

;;(tool-bar-mode -1)
;;(menu-bar-mode -1)

;; Show line numbers
(global-linum-mode 1)

(global-set-key (kbd "C-SPC")   'previous-buffer)  ;Ctrl-Space for left, previous buffer
(global-set-key (kbd "M-SPC")   'next-buffer)  ;Alt-Space for right, next buffer

(global-set-key (kbd "<f9> <f8>")   'switch-to-buffer-other-window)  ;Split screen
(global-set-key (kbd "<f9> <f6>")   'eshell)  ;M-X eshell or better

;;(global-set-key [s-left] 'windmove-left) 
;;(global-set-key [s-right] 'windmove-right) 
;;(global-set-key [s-up] 'windmove-up) 
;;(global-set-key [s-down] 'windmove-down)
 
;;(global-set-key (kbd "<f9> <f6>") 'visual-line-mode)
;;(global-set-key (kbd "<f9> <f7>") 'linum-mode)
;;(global-set-key (kbd "<f9> <f9>") 'shell)
;;(global-set-key (kbd "<f9> <f10>") 'calc)
;;(global-set-key (kbd "<f9> <f11>") 'calendar)
;;(global-set-key (kbd "<f9> <f8>") 'whitespace-mode)
;;(global-set-key (kbd "<f9> 3") 'emacs-lisp-mode)
;;(global-set-key (kbd "<f9> 4") 'python-mode)
;;(global-set-key (kbd "<f9> 5") 'ruby-mode)
;;(global-set-key (kbd "<f9> 6") 'html-mode)
;;(global-set-key (kbd "<f9> SPC") 'flyspell-buffer)

(global-set-key (kbd "<f7>")   'calendar)  ;M-X calendar
(global-set-key (kbd "<f8>")   '(find-file "~/.emacs"))  ;F7 load .emacs
;;<f8>
;;<f9>
;;<f10>
;;<f11>
;;<f12>
;;toggle left/right - and start
;; C-x 2 or 3
;; C-x o toggle 
;; duplicate line
;; move a line 

;;(global-set-key (kbd "<f7> <f8>") 'calendar)    ; F7 F8


;;
;; IntelliJ Compatibility 
;;

;; move line up
(defun move-line-up ()
  (interactive)
  (transpose-lines 1)
  (previous-line 2))

(global-set-key [(control shift up)] 'move-line-up)

;; move line down
(defun move-line-down ()
  (interactive)
  (next-line 1)
  (transpose-lines 1)
  (previous-line 1))

(global-set-key [(control shift down)] 'move-line-down)


;;(kill-buffer "*scratch*")

;; New emacs suddenly defaulted to bar instead of box. 
;; http://www.gnu.org/software/emacs/manual/html_node/elisp/Cursor-Parameters.html
(setq-default cursor-type 'box) ;; 'bar

;; Set cursor color
(set-cursor-color "#ffff00")

;; Show which function the cursor is in.
(which-function-mode t)

;; default the cursor to blinking.
(blink-cursor-mode t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Envy Code R" :foundry "outline" :slant normal :weight normal :height 98 :width normal)))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(inhibit-startup-screen t)
 '(tool-bar-mode nil))
