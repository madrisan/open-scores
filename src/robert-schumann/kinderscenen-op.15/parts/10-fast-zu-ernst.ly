Global = {
  \key b \major
  \time 2/8
  \include "../global.ly"
}

bottom = \change Staff = "lower"
ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritard " } }
top = \change Staff = "upper"

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 16 { dis,16~\( }
  %1
  | dis16[ gis8 b16~]
  | b16[ ais8 fisis16~]
  | fisis16[ gis8 ais16~]
  | ais16[ b8 cis16~]
  %5
  | cis16[ dis8 e16~]
  | e16[ cis8 dis16~]
  | dis16 b8.~]
  | b8\fermata\) r16 \stemUp fis_~\(
  \repeat volta 2 {
  | fis16[ b8 dis16~]
  %10
  | dis16[ cis8 ais16~]
  | ais16[ b8 cis16~]
  | cis16[ dis8 eis16~]
  | eis16[ fis8 gis16~]
  | gis16[ eis8 fis16~]
  %15
  | fis16[ dis8.~]
  | dis8\fermata\) r16 \stemDown dis~\(
  | \stemUp dis16[ e8 cis16~]
  | cis16[_\markup { "ritard." } dis8 b16~]
  | b16[ b8 gis16~]
  %20
  | gis16[ fisis8 ais16~]
  | ais8\fermata\) r16 dis,~\(
  | dis16[ gis8 ais16~]
  | ais16[ b8 cis16~]
  | cis16[ dis8 cis16~]
  %25
  | cis16[ b]\) r b~\(
  | b16[ b8 ais16~]
  }
  \alternative {
    \volta 1 {
  |   ais16[ gis8 b16~]\)
  |   b16[\( ais8 fisis16~]
  |   fisis16[ gis8 ais16~]
  %30
  |   ais16[ b8 cis16~]
  |   cis16[ dis8 e16~]
  |   e16[ cis8 dis16~]
  |   dis16 b8.~
  |   b8\fermata\) r16 fis\laissezVibrer
    }
  %35
    \volta 2 {
  |   ais16[\repeatTie gis8 ais16~]^\<
  |   ais16[ b8 dis16~]
    }
  }
  | dis16[ gis8\!
    \shape #'((-13 . -8) (0 . 2) (0 . 2) (0 . 1.2)) Slur
    ais,,16_~](
  | ais16[ b8 dis16_~]
  | <dis gis>2*1/4\fermata)
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  | g,16\rest gis'[ b,8]
  | b16\rest ais'[ cis,8]
  | a16\rest gis'[ b,8]
  | b16\rest b'[ b,8]
  %5
  | d16\rest dis'[ dis,8]
  | e16\rest cis'[ e,8]
  | e16\rest b'[ dis,8~]
  | dis8 s
  | b16\rest b'[ dis,8]
  %10
  | b16\rest cis'[ e,8]
  | c16\rest b'[ dis,8]
  | e16\rest dis'[ dis,8]
  | g16\rest fis'[ fis,8]
  | g16\rest eis'[ gis,8]
  %15
  | g16\rest dis'[ fis,8~]
  | fis8 s8
  | f16\rest e'[ fisis,8]
  | f16\rest dis'[ gis,8]
  | d16\rest b'[ cisis,8]
  %20
  | b16\rest fisis'[ dis8~]
  | dis8 s8
  | g,16\rest gis'[ b,8]
  | b16\rest b'[ cis,8]
  | b16\rest dis'[ cis,8]
  %25
  | b16\rest b'[ b,8]
  | b16\rest b'16 cis,16.[ dis32~]
  | dis16[ gis b,8]
  | c16\rest ais'[ cis,8]
  | b16\rest gis'[ b,8]
  %30
  | c16\rest b'[ b,8]
  | d16\rest dis'[ dis,8]
  | e16\rest cis'[ e,8]
  | e16\rest b'[ dis,8~]
  | dis8 s
  %35
  | dis16[\repeatTie gis b,8]
  | d16\rest b'[ b,8]
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set tieWaitForNote = ##t
  \tieUp
  \mergeDifferentlyDottedOn
  \partial 16 s16
  %1
  | s4*6
  | s16
    << {
      \stemUp fis8.~
    } \\ {
      \stemUp\tieUp s16 b,8~
    } >>
  | << {
      \once\hideNotes
      % we must force-hshift the hidden note to avoid a too long tie
      \once\override NoteColumn.force-hshift = #-1 fis'8
    } \\ {
      \once\hideNotes
      \once\override NoteColumn.force-hshift = #-1 b,8
    } >> s8
  | s4
  %10
  | s16 \stemUp g'!8.
  | s4*3
  | s16 b!8.
  %15
  | s16
    << {
      \stemUp ais8.~
    } \\ {
      \stemUp\tieUp s16 dis,8~
    } >>
  | << {
      \once\hideNotes
      \once\override NoteColumn.force-hshift = #-1 ais'8
    } \\ {
      \once\hideNotes
      \once\override NoteColumn.force-hshift = #-1 dis,8
    } >> s8
  | s4*3
  %20
  | s16 \stemUp fisis8.~
  | fisis8 s
  | s4
  | s16 << { e8. } \\ { \stemUp s16 b8 } >>
  | s16 << { e8. } \\ { \stemUp s16 ais,8 } >>
  %25
  | s4*8
  | s16
    << {
      \stemUp fis'8.~
    } \\ {
      \stemUp\tieUp s16 b,8~
    } >>
  | << {
      \once\hideNotes
      \once\override NoteColumn.force-hshift = #-1 fis'8
    } \\ {
      \once\hideNotes
      \once\override NoteColumn.force-hshift = #-1 b,8
    } >>
    s8
  %35
  | s4
  | s8. dis,16
  | s8 gis16 s
  | gis,16 s8.
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set tieWaitForNote = ##t
  \slurUp\stemDown
  \partial 16 r16
  %1
  | \once\stemUp gis16 dis''[( gis, dis])
  | \once\stemUp gis,16 dis''[( fisis, dis])
  | \once\stemUp gis,16 dis''[( gis, dis])
  | \once\stemUp g,16 e''[( cis e,])
  %5
  | \once\stemUp fis,16 fis''[( b, fis])
  | \once\stemUp fis,16 fis''[( ais, fis])
  | \once\stemUp b,16 fis''_\markup { \hspace #-0.5 "ritard." } [ b, fis~]
  | <fis b fis'>8\fermata r
  \repeat volta 2 {
  | \once\stemUp b,16 fis''[ b, fis]
  %10
  | \once\stemUp b,16 g''[ cis, fis,]
  | \once\stemUp b,16 fis''[ b, fis]
  | \once\stemUp gis,16 eis''[ b eis,]
  | \once\stemUp ais,16 ais''[ dis, ais]
  | \once\stemUp ais,16 b''[ cisis, ais]
  %15
  | dis,16 ais''_\markup { \hspace #-0.5 "ritard." } [ dis, ais~]
  | <ais dis ais'>8\fermata r
  | dis,16 ais''[ e cis]
  | dis,16 b''[ dis, b]
  | dis,16 eis'[ b gis]
  %20
  | \once\stemUp dis,16 fisis''[ ais,8~]
  | ais8\fermata r
  | \once\stemUp gis,16 dis''[ gis, dis]
  | \once\stemUp e,16 e''[ gis, g]
  | \once\stemUp fis,16 e''[ fis, e]
  %25
  | \once\stemUp b,16 dis''[ fis, dis]
  | \once\stemUp dis,16 dis''[ fisis, dis]
  }
  \alternative {
    \volta 1 {
  |   \once\stemUp gis,16 dis''[ gis, dis]
  |   \once\stemUp gis,16 dis''[ fisis, dis]
  |   \once\stemUp gis,16 dis''[ gis, dis]
  %30
  |   \once\stemUp g,16 e''[ cis e,]
  |   \once\stemUp fis,16 fis''[ b, fis]
  |   \once\stemUp fis,16 fis''[ ais, fis]
  |   \once\stemUp b,16 fis''_\markup {
        \hspace #-0.5 "ritard."
      }
      [b, fis]
  |   <fis b fis'>8\fermata r
    }
  %35
    \volta 2 {
  |   \once\stemUp gis,16 dis''[ gis, dis]
  | \once\stemUp gis,16 dis''[ gis, dis]\ritardando
    }
  }
  | \once\stemUp gis,16_\startTextSpan dis''[ gis, dis]
  | gis,16[ dis'' gis, dis]
  | \stemUp gis,,2*1/4\fermata\stopTextSpan
  \fine
}

centerDynamics = {
  \partial 16 {
    s16-\markup { \hspace #0 \dynamic p }
  }
  %1
  | s4*2
  | s16 s s\< s
  | s4
  | s16 s\! s s
  | s4*6
  | s16 s s\< s
  | s4
  | s16 s\! s s
  | s4*8
  | s16 s s\< s
  | s4
  | s16 s\! s s
  | s4*3
  | s16 s s\< s
  | s4
  | s16 s\! s s
  | s4*5
  | s8. s16\>
  | s8 s16 s\!
}

forceBreaks = {
  % page 1
  \partial 16 s16
  | \repeat unfold 7 { s4\noBreak } s4\break\noPageBreak
  | \repeat unfold 7 { s4\noBreak } s4\break\noPageBreak
  | \repeat unfold 7 { s4\noBreak } s4\break\noPageBreak
  | \repeat unfold 6 { s4\noBreak } s4\break\noPageBreak
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Sopran
      \Alto
    >>
    \context Dynamics <<
      \Global \centerDynamics
    >>
    \new Devnull \forceBreaks
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "10. Fast zu ernst" }
    subtitle = \markup {
      \column {
        \line { "(Almost too Serious)" }
        % workaround to insert some vertical space after the subtitle
        \line { " " }
      }
    }
  }
  \layout {
    \context {
      \PianoStaff
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 4 = 69
  }
}
