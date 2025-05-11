greyTextColor = #(x11-color "dimgray")
lightGrey =     #(x11-color 'grey65)
middleGrey =    #(x11-color 'grey45)
%white =        #(rgb-color 1.0 1.0 1.0)

episodeColor =             #(x11-color 'dimgrey)
expositionColor =          #(rgb-color 0.70 0.00 0.00)
secondExpositionColor =    #(rgb-color 0.83 0.13 0.18)
thirdExpositionColor =     #(rgb-color 0.99 0.26 0.36)

subjectPresentationColor = #(rgb-color 0.00 0.40 0.13)
subjectStrettoColor =      #(rgb-color 0.90 0.45 0.00)
endColor =                 #(rgb-color 0.00 0.00 0.40)
unknownColor =             #(rgb-color 0.00 0.00 0.00)

#(define-markup-command (endBullet layout props) ()
  "Prints out a bullet for marking a fuga end (coda)"
  (interpret-markup layout props
    #{ \markup \with-color #endColor \char ##x25a0 #}))
#(define-markup-command (episodeBullet layout props) ()
  "Prints out a bullet for marking the start of a fugue exposition"
  (interpret-markup layout props
    #{ \markup \with-color #episodeColor \char ##x25a0 #}))
#(define-markup-command (expositionBullet layout props) ()
  "Prints out a bullet for marking the start of a fugue exposition"
  (interpret-markup layout props
    #{ \markup \with-color #expositionColor \char ##x25a0 #}))
#(define-markup-command (secondExpositionBullet layout props) ()
  "Prints out a bullet for marking the start of a fugue exposition"
  (interpret-markup layout props
    #{ \markup \with-color #secondExpositionColor \char ##x25a0 #}))
#(define-markup-command (subjectStrettoBullet layout props) ()
  "Prints out a bullet for marking the start of a fugue exposition of type stretto"
  (interpret-markup layout props
    #{ \markup \with-color #subjectStrettoColor \char ##x25a0 #}))
#(define-markup-command (subjectPresentationBullet layout props) ()
  "Prints out a bullet for marking the start of a fugue exposition"
  (interpret-markup layout props
    #{ \markup \with-color #subjectPresentationColor \char ##x25a0 #}))

#(define-markup-command (on-color layout props color arg) (color? markup?)
   (let* ((stencil (interpret-markup layout props arg))
          (X-ext (ly:stencil-extent stencil X)))
     (ly:stencil-add
       (stencil-with-color
         (ly:round-filled-box X-ext '(2 . -1) 0)
         color)
       stencil)))

motifColor = #(x11-color 'darkcyan)

subjectFirstColor = #(x11-color 'darkblue)
subjectFirstInvColor = #(x11-color 'royalblue)

subjectSecondColor = #(x11-color 'darkred)
subjectSecondInvColor = #(x11-color 'maroon)

subjectThirdColor = #(x11-color 'darkgreen)
subjectThirdInvColor = #(x11-color 'forestgreen)

markWithColor =
#(define-music-function (color music)
   (color? ly:music?)
   "Change the color of the given note."
   #{
     %\stopStaff
     %\startStaff
     \override Accidental.color = #color
     \override NoteHead.color = #color
     %\override Staff.LedgerLineSpanner.color = #color
     #music
     %\revert Staff.LedgerLineSpanner.color
     \revert NoteHead.color
     \revert Accidental.color
     %\stopStaff
     %\startStaff
   #})

red =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) in red."
   #{ \markWithColor #(x11-color 'red) #music #})

unHighlightMotif = {
  \revert Tie.color
  \revert Stem.color
  \revert Beam.color
}
unHighlightMotifWithStem = {
  \revert Tie.color
  \revert Beam.color
}
unHighlightSubject = {
  \revert Tie.color
  \revert Stem.color
  \revert Beam.color
}

markWithColorExtended =
#(define-music-function (color music)
   (color? ly:music?)
   "Change the color of the given note."
   #{
     %\stopStaff
     %\startStaff
     \override Accidental.color = #color
     \override Beam.color = #color
     \override Dots.color = #color
     \override NoteHead.color = #color
     \override Rest.color = #color
     \override Stem.color = #color
     \override Tie.color = #color
     %\override Staff.LedgerLineSpanner.color = #color
     #music
     %\revert Staff.LedgerLineSpanner.color
     \revert Rest.color
     \revert NoteHead.color
     \revert Dots.color
     \revert Accidental.color
     \unHighlightSubject
     %\stopStaff
     %\startStaff
   #})

highlightMotif =
#(define-music-function (music)
   (ly:music?)
   "Colour an important motif like the B.A.C.H. signature"
   #{ \markWithColorExtended \motifColor #music #})

highlightSubjectFirst =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues (first) subjets"
   #{ \markWithColorExtended \subjectFirstColor #music #})
highlightSubjectFirstInv =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues (first) inverted subjets"
   #{ \markWithColorExtended \subjectFirstInvColor #music #})

highlightSubjectSecond =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues second subjets"
   #{ \markWithColorExtended \subjectSecondColor #music #})
highlightSubjectSecondInv =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues second interted subjets"
   #{ \markWithColorExtended \subjectSecondInvColor #music #})

highlightSubjectThird =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues third subjets"
   #{ \markWithColorExtended \subjectThirdColor #music #})
highlightSubjectThirdInv =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues third interted subjets"
   #{ \markWithColorExtended \subjectThirdInvColor #music #})

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

#(define-markup-command (subject-augmentatio layout props dest num ratio)
  (number-pair? number? string?)
  "Draw an annotation (a circle around the subject number)."
  (let ((x (car dest))
        (y (cdr dest)))
  (interpret-markup layout props
   (make-concat-markup
    (append
     (list
      (markup
        #:override '(box-padding . 0.3)
        #:hspace x #:lower y #:circle #:normal-text #:teeny
        (make-with-color-markup greyTextColor
        (cond ((eq? num 1) (make-musicglyph-markup "one"))
              ((eq? num 2) (make-musicglyph-markup "two"))
              ((eq? num 3) (make-musicglyph-markup "three"))
              ((eq? num 4) (make-musicglyph-markup "four")))))
      (markup
       #:normal-text #:teeny #:raise 0.4
       (make-with-color-markup greyTextColor
         ratio))))))))

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
