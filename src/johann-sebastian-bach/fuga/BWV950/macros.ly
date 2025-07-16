greyTextColor = #(x11-color "dimgray")

% set ""subjectColor to
%  subjectColor = #(x11-color 'black)
% to disable the subject coloring feature
subjectColor = #(x11-color 'darkblue)
motifColor = #(x11-color 'darkcyan)

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

highlightSubject =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues (first) subjets"
   #{ \markWithColorExtended \subjectColor #music #})

highlightMotif =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight fugues (first) subjets"
   #{ \markWithColorExtended \motifColor #music #})

unHighlightSubject = {
  \revert Tie.color
  \revert Stem.color
  \revert Beam.color
}
