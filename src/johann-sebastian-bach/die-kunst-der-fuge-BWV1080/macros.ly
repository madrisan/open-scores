greyTextColor = #(x11-color "dimgray")
lightGrey = #(x11-color 'grey65)
middleGrey = #(x11-color 'grey45)

red = {
  \once\override Accidental.color = #(x11-color 'red)
  \once\override NoteHead.color = #(x11-color 'red)
  %\once\override Stem.color = #(x11-color 'red)
  %\once\override Flag.color = #(x11-color 'black)
  %\once\override Staff.LedgerLineSpanner.color = #(x11-color 'red)
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

#(define my-eyeglassespath
  '((moveto   -3.57   1.80)
     (curveto  -3.65   1.90  -3.55   2.22  -3.33   2.22)
     (curveto  -3.17   2.22  -3.15   2.15  -3.10   2.10)
     (lineto   -2.02   0.94)
     (moveto   -2.06   0.65)
     (curveto  -2.06   1.00  -1.75   1.28  -1.45   1.28)
     (curveto  -1.10   1.28  -1.07   1.05  -1.07   0.90)
     (curveto  -1.07   0.62  -1.30   0.27  -1.70   0.27)
     (curveto  -1.85   0.25  -2.06   0.40  -2.06   0.65)
     (closepath)
     (moveto   -1.14   1.20)
     (curveto  -1.00   1.44  -0.72   1.52  -0.57   1.35)
     (moveto   -0.61   1.05)
     (curveto  -0.61   1.42  -0.30   1.68   0.00   1.68)
     (curveto   0.22   1.68   0.37   1.52   0.37   1.28)
     (curveto   0.37   0.96   0.06   0.65  -0.25   0.64)
     (curveto  -0.30   0.64  -0.61   0.65  -0.61   1.05)
     (closepath)
     (moveto    0.12   1.68)
     (lineto   -1.10   2.69)
     (curveto  -1.50   3.05  -1.80   2.75  -1.71   2.45)))

#(define-markup-command (ieyeglasses layout props)
  ()
  "Prints out alternative eyeglasses (see define-markup-commands.scm)"
  (interpret-markup layout props
    #{
       \markup
       \override #'(line-cap-style . butt)
       \path #0.15
       \my-eyeglassespath
    #}))


#(define-markup-command (subject layout props dest num)
  (number-pair? number?)
  "Draw an annotation (a circle around the subject number)."
  (let ((x (car dest))
        (y (cdr dest)))
  (interpret-markup layout props
    (markup
      #:override '(box-padding . 0.3)
      #:hspace x #:lower y #:circle #:normal-text #:teeny
      (make-with-color-markup greyTextColor
        (cond ((eq? num 1) (make-musicglyph-markup "one"))
              ((eq? num 2) (make-musicglyph-markup "two"))
              ((eq? num 3) (make-musicglyph-markup "three"))
              ((eq? num 4) (make-musicglyph-markup "four"))))))))

#(define (override-color-for-all-grobs color)
  (lambda (context)
   (let loop ((x all-grob-descriptions))
    (if (not (null? x))
     (let ((grob-name (caar x)))
      (ly:context-pushpop-property context grob-name 'color color)
      (loop (cdr x)))))))

% usage:
%  | d2
%    -\tweak layer #-1
%    ^\markup\yellowMarker #61 #9

#(define-markup-command (yellowMarker layout props colorWidth colorHeight) (number? number?)
  (interpret-markup layout props
   (markup #:line (#:with-dimensions (cons 0 0)(cons 0 0)
                    (#:with-color (list 1.0 1.0 0.0) ;; => yellow
                      ;; other options (e.g.):
                      ;;;; red: 	(list 1.0 0.0 0.0)
                      ;;;; green: 	(list 0.0 1.0 0.0)
                      ;;;; cyan: 	(list 0.0 1.0 1.0)
                      ;;;; magenta: 	(list 1.0 0.0 1.0)
                      ;;;;;; see also: http://lilypond.org/doc/v2.18/Documentation/notation/list-of-colors
                       (#:filled-box (cons -1.7 colorWidth)
                                     (cons (* -1 colorHeight) 1) 0))))))
