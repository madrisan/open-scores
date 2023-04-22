Global = {
  \key e \minor
  \time 3/4
  \include "../global.ly"
}

bottom = { \change Staff = "lower" \stemUp }
top = { \change Staff = "upper" \stemDown }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #-2
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
  \stemUp\slurNeutral\tieUp
  \repeat volta 2 {
    \partial 4 { g8. g16 }
  %1
  | \set subdivideBeams = ##t
    \appoggiatura b,8 <c e g>4~ g'16[ fis32 g a16 a32 b] c[ a b c dis a b c]
  | fis4. r16 c b8.[ dis16]
  | e8.[ g16] fis8.[ a16] \slurUp\appoggiatura e8 dis8.[ e16]
  | e4 dis16~\prall[ dis32 cis dis cis b16] a'8.[ 16]
  %5
  | <dis, fis a>4( g16)[ b,32 c! d!16 d32 e] f![ d e f gis d e f]
  | s2 a,4*1/2 cis32[ e fis g!]
  | <e g>4 fis32[ a, b cis d e fis g] s4
  | a8~\prallprall[ a32 g a b] g8.[ fis16]
    \set subdivideBeams = ##t
    e16.[ g64 fis e32 fis e16]
  | cis16.[ e64 d! cis32 d e16] ais,16.[ cis64 b ais32 b cis16] fis,8.[ g16]
  %10
  | g8.\arpeggio[( e32 g]) fis8.[ g'16] fis8.[ e16]
  | d8.[ cis16] \appoggiatura b8 a8.[ b16] fis16[ cis'32 d e d cis16]
  | <e, cis'>4_( <dis b'>)
  }
  \repeat volta 2 {
    \partial 4 { s4 }
  | s2.
  | s2.
  %15
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %20
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %25
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %30
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %35
  | s2
  }
  \fine
}

Alto = \context Voice = "Two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \stemDown
  \repeat volta 2 {
    \partial 4 { <b e>4 }
  %1
  | s2 s8 s32 << { \stemDown a'16. } \\ { \stemDown s16 c32~ } >>
  | << \\ <a c>4. >> s16 a g8.[ fis16]
  | e8.[ b'16] c8.[ b16] a8.[ c16]
  | b2
    \once\override Arpeggio.positions = #'(0 . 3.5)
    <b dis fis>4\arpeggio
  %5
  | b2*1/2 e16_\parenthesize\mordent s8. s8 s32 << { \stemDown d16._~ } \\ { \stemDown s16 f32_~ } >>
  | << {
      \stemDown d4 s2
    } \\ {
      \stemDown <f b>4^(
      \set baseMoment = #(ly:make-moment 1/8)
      \set subdivideBeams = ##t
      <c e a>32)[ f e d c b a gis]
      \set subdivideBeams = ##f
      s8 \autoBeamOff cis8*1/4 e16. \autoBeamOn
    } >>
  | cis8[ d32( cis b cis)] d32_\parenthesize\mordent s32 s8. a'16[ g32 fis c'!16 b32 a]
  | <c, d>4 b8.[ dis,16] e8. g16\rest
  | d4\rest c4\rest b8.\rest <b d>16
  %10
  | <ais cis>4.\arpeggio s16 e'' d8.[ cis16]
  | b4 gis fis8.[ e16]
  | s2
  }
}

Tenor = \context Voice = "Three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \set PianoStaff.connectArpeggios = ##t
  \stemUp
  \repeat volta 2 {
    \partial 4 { s4 }
  %1
  | s2.
  | s16 c8.~ \once\override NoteColumn.force-hshift = #0 c8.[ fis,16] g8.[ a16]
  | b8.[ e16] s8. fis16 fis8.[ g16]
  | <b, fis'>2 <dis fis>4
  %5
  | <e g>2 gis4~
  | gis8[ a32 gis fis gis] a4 r32 << { cis,[ e a] } \\ { s32 e s } >> s8
  | <d a'>2 <c! d fis a>4
  | fis4 g8.[ c,!16] b8. e16\rest
  | s4 cis,8.[ b16] ais8.[ b16]
  %10
  | <e ais cis e>4.\arpeggio s16 ais!16 b8.[ cis!16]
  | d8.[ e16] cis8.[ d16] ais8.\prallprall[ 16]
  | ais4( b)
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemDown\slurNeutral\tieDown
  \repeat volta 2 {
    \partial 4 { <e g>4 }
  %1
  | <a, c e a>2 r4
  | r16
    << {
      \autoBeamOff s16 a'8~ \once\override NoteColumn.force-hshift = #1 a s \autoBeamOn
    } \\ {
      s8 \stemUp fis16~ \once\override NoteColumn.force-hshift = #1 \once\omit Flag fis8 s
    } \\ {
      \stemDown c'16[ a fis]
      \appoggiatura e8
      \once\override Dots.Y-offset = #(-1)
      dis8.[ 16]
    } >>
    e8.[ fis16]
  | g8.[ e16] \clef treble <a e'>8.[ <b dis>16] c8.[ a16]
  | s2.
  %5
  | s2 d4
  | c2 s32 cis16.~[ cis8]
  | s2.
  | <b d>4. r16 \clef bass a16 g8.[ fis16]
  | e8.[ d16] s2
  %10
  | s4. r16 cis d8.[ e16]
  | fis8.[ g16] e4 fis
  | <b, fis'>2
  }
  \repeat volta 2 {
    \partial 4 { s4 }
  | s2.
  | s2.
  %15
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %20
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %25
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %30
  | s2.
  | s2.
  | s2.
  | s2.
  | s2.
  %35
  | s2
  }
  \fine
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
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Bass
    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    %opus = "BWV 830"
    %subtitle = "Toccata"
    title = \markup {
      %\override #'(font-name . "TeX Gyre Schola") {
        "Sarabande"
      %}
    }
  }
  \layout {
    \context {
      \PianoStaff
    }
  }
  \midi {
    \tempo 4 = 60
  }
}
