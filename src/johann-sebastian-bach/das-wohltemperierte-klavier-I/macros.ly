greyTextColor = #(x11-color "dimgray")
middleGrey =    #(x11-color 'grey45)

% set ""subjectFirstColor to
%  subjectFirstColor = #(x11-color 'black)
% to disable the subject coloring feature
subjectFirstColor = #(x11-color 'darkblue)
subjectFirstInvColor = #(x11-color 'royalblue)

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

highlightSubject =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues (first) subjets"
   #{ \markWithColorExtended \subjectFirstColor #music #})

highlightSubjectInv =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues (first) inverted subjets"
   #{ \markWithColorExtended \subjectFirstInvColor #music #})

unHighlightSubject = {
  \revert Tie.color
  \revert Stem.color
  \revert Beam.color
}

%#(define-markup-command (subject layout props dest)
%  (number-pair?)
%  "Draw an annotation (a circle around a letter T)."
%  (let ((x (car dest))
%        (y (cdr dest)))
%  (interpret-markup layout props
%    (markup
%      #:override '(box-padding . 0.3)
%      #:hspace x #:lower y #:circle #:normal-text #:teeny
%      (make-with-color-markup greyTextColor "T" )))))

voiceFive  = #(context-spec-music (make-voice-props-set 4)  'Voice)

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

#(define-markup-command (subjectBullet layout props) ()
  (interpret-markup layout props
    #{ \markup \with-color #subjectFirstColor \char ##x25a0 #}))
#(define-markup-command (subjectInvBullet layout props) ()
  (interpret-markup layout props
    #{ \markup \with-color #subjectFirstInvColor \char ##x25a0 #}))
