greyTextColor = #(x11-color "dimgray")

melodyFirstColor = #(x11-color 'darkblue)
melodySecondColor = #(x11-color 'darkred)
melodyThirdColor = #(x11-color 'darkgreen)
themeColor = #(x11-color 'darkcyan)

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
     \unHighlightColor
     %\stopStaff
     %\startStaff
   #})

highlightTheme =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight the theme"
   #{ \markWithColorExtended \themeColor #music #})
#(define-markup-command (bulletTheme layout props) ()
  (interpret-markup layout props
    #{ \markup \with-color #themeColor \char ##x25a0 #}))

highlightMelodyFirst =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight melody"
   #{ \markWithColorExtended \melodyFirstColor #music #})
#(define-markup-command (bulletMelodyFirst layout props) ()
  (interpret-markup layout props
    #{ \markup \with-color #melodyFirstColor \char ##x25a0 #}))

highlightMelodySecond =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight melody"
   #{ \markWithColorExtended \melodySecondColor #music #})
#(define-markup-command (bulletMelodySecond layout props) ()
  (interpret-markup layout props
    #{ \markup \with-color #melodySecondColor \char ##x25a0 #}))

highlightMelodyThird =
#(define-music-function (music)
   (ly:music?)
   "Colour the given note(s) to highlight melody"
   #{ \markWithColorExtended \melodyThirdColor #music #})
#(define-markup-command (bulletMelodyThird layout props) ()
  (interpret-markup layout props
    #{ \markup \with-color #melodyThirdColor \char ##x25a0 #}))

unHighlightColor = {
  \revert Tie.color
  \revert Stem.color
  \revert Beam.color
}
