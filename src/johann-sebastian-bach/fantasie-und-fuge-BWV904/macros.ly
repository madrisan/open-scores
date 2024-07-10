greyTextColor = #(x11-color "dimgray")

% set ""subjectFirstColor to
%  subjectFirstColor = #(x11-color 'black)
% to disable the subject coloring feature
subjectFirstColor = #(x11-color 'darkblue)
subjectSecondColor = #(x11-color 'darkred)

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
     \override Script.color = #color
     \override Stem.color = #color
     \override Tie.color = #color
     %\override Staff.LedgerLineSpanner.color = #color
     #music
     %\revert Staff.LedgerLineSpanner.color
     \revert Script.color
     \revert Rest.color
     \revert NoteHead.color
     \revert Dots.color
     \revert Accidental.color
     \unHighlightSubject
     %\stopStaff
     %\startStaff
   #})

highlightSubjectFirst =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues (first) subjets"
   #{ \markWithColorExtended \subjectFirstColor #music #})

highlightSubjectSecond =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues second subjets"
   #{ \markWithColorExtended \subjectSecondColor #music #})

unHighlightSubject = {
  \revert Tie.color
  \revert Stem.color
  \revert Beam.color
}
