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
    \set subdivideBeams = ##f
  }
  \repeat volta 2 {
    \partial 4 { fis8.\arpeggio[ 16] }
  | fis4( g16)[ b b32\prall a b16] d!4~
  | <b d>2.~
  %15
  | <b d>8.[ <a c>16] b8.[ d16] \appoggiatura a8 gis8.[ a16]
  | \set subdivideBeams = ##t
    a4( gis16)\prall~[ gis32 fis! gis fis e16] f'!8.[ f16]
    \set subdivideBeams = ##f
  | f!4( e2~)
  | e8[ cis~] cis[ d16. b!32]
    \once\override NoteColumn.force-hshift = #3.5 c!8.\arpeggio[ c16]
  | c4
    \shape #'((0 . 0.5) (0 . 1.4) (0 . 1.8) (0 . 1.2)) Tie
    b2~
  %20
  | b8 s a16_~[ a64 b a gis a16 e32 b'] s4
  | s2.
  | \slurDown \appoggiatura a'8 b8.[ f!16] \appoggiatura f8 e8.[ f32 d]
    \override Stem.details.beamed-lengths = #'(6)
    c16~[ c64 e d c d16 e32 f]
    \revert Stem.details.beamed-lengths
  | \appoggiatura a,8 gis8.[ a16] d8.[ c16] b8.\prallprall[ a16]
  | a2\arpeggio c8.\arpeggio[ c16]
  %25
  | c16~[ c64 d! c b c32 a b16] b8~\parenthesize\mordent[ b32 cis dis e] fis[ g a16 g16.\prallprall fis32]
  | s2
    \set subdivideBeams = ##t
    g,16[ b32 dis, e16 g32 b,]
    \set subdivideBeams = ##f
  | s2.
  | s2 g''4*1/4 e16~[ e8]
  | s16. g32~ 8~ 16 fis8.\prallprall
    \set subdivideBeams = ##t
    f!32[ e f d f g! a64 g f32]
    \set subdivideBeams = ##f
  %30
  | f!8~\downprall[ 32 e f g] e4 e8.[ 16]
  | \set subdivideBeams = ##t
    a4~ a32[ a b c b a gis a] b8.[ b16]
  | e,32[ fis gis16 fis16.\prall e32] a8~[ a32 g! fis e] dis[ e dis e fis e64 dis e32 fis]
  | a,8.[ fis'16] a,8.[ g'16] a,8.[ a'16]
  | \slurUp\tieUp e4( dis8~\prall)[ dis16 e64 dis cis dis] e16~[ e64 d! c! b c32 e ais,16]
  %35
  | b16~[ b64 a! g fis g32 b e,16] \slurDown \appoggiatura fis8 g8~[ g16 a64 g fis g] a8.[ fis16]
    \set subdivideBeams = ##f
  | <a, fis'>4_( <g e'>)
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
  \fine
}

Alto = \context Voice = "Two" \relative c' {
  \voiceTwo
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
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
  \repeat volta 2 {
    \partial 4 { <b dis!>4\arpeggio }
  | <b dis>4 <b e>8 s d'!16[ gis, gis32_\prall fis gis16~]
    << {
  |   gis2.^~
  |   \stemUp \once\omit Flag \once\omit Stem \once\override NoteColumn.force-hshift = #0 gis8. s16 s2
    }
    \new Voice {
      \voiceTwo
  |   s4 f!2~
  |   \once\override NoteColumn.force-hshift = #0.8 f8.[ e16] f8.[ e16] d8.[ f16]
    }
    >>
  %16
  | \stemDown e2 <b' d>4
    << {
  |   q c32_\mordent[ d c b c16. a32] bes16.[ g!32~ g8]
  |   \set subdivideBeams = ##t
      g32[ bes a g~ g bes a g]
      \set subdivideBeams = ##f
      \stemUp
      << {
        \once\override NoteColumn.force-hshift = #0.5 f!32[ g a16_~] \stemDown a8
      } \\ {
        \once\override NoteColumn.force-hshift = #0.5 f4
      } >>
      \once\override NoteColumn.force-hshift = #3.5 \stemDown <fis a>4\arpeggio
    }
    \new Voice {
      \voiceOne
  |   s2 bes4~
  |   \stemDown \once\omit Flag bes16 s8. s2
    }
    >>
  | <fis a>4
    \set subdivideBeams = ##t
    g32[ a g fis g16 fis32 e] << { d32 e f!8. } \\ d4~ >>
    \set subdivideBeams = ##f
  %20
  | << \stemDown \once\omit Flag f32 \\ { d d c b c16. e32 } >> s4
    \set subdivideBeams = ##t
    \tieUp c'16~[ c64 d c b c16 a32 cis]
  | d16~[ d64 e d cis d16 a32 e'] f!16~[ f64 g f e f16 d32 fis] gis16~[ gis64 a gis fis gis16 d32 a']
    \set subdivideBeams = ##f
  | s4 e,8.\rest e16 e8.[ 16]
  | d8.[ f!16] f8.[ e16] d8.[ c16]
  | <c e>2\arpeggio <c e a>4\arpeggio
  %25
  | fis!4. e8\rest e4\rest
  | \stemUp\appoggiatura fis'8 \stemDown g8~^\parenthesize\mordent[ g32 fis e dis]
    \set subdivideBeams = ##t
    e16[ g32 ais, b16 e32 fis,] s4
    \set subdivideBeams = ##f
  | r8. fis'32[ g] g8.^\prallprall[ fis32 g] g8~^\prallprall[ g32 fis g a!]
  | \slurUp e8( dis16.^\prallprall) cis32]
    \set subdivideBeams = ##t
    dis64[ b cis dis e fis g a g16.^\prallprall fis32]
    \set subdivideBeams = ##f
    g32[ dis e b_~] 8
  | \tieDown s16 c!64[ e g e] \omit TupletBracket \tuplet 3/2 { c32 b c~ } c16~ c4 s16.
    \autoBeamOff d32~ d8~ \autoBeamOff
  %30
  | d4 c32[ b a gis a16. c32] e32[ d c b c8~]
  | c16.[ b64 c c16._\prallprall b64 c~] c16 r r8 r32 f![ e d e16 b]
  | b4 a4. s8
  | a4 a a
  | a2 d,4\rest
  %35
  | b\rest a\rest b8.\rest a16
  | s2
  }
}

Tenor = \context Voice = "Three" \relative c' {
  \voiceThree
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
  \set PianoStaff.connectArpeggios = ##t
  \mergeDifferentlyDottedOn
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
  \repeat volta 2 {
    \partial 4 { s4 }
  | a4( g) s
  | s2 s8. \once\omit Flag \once\omit Stem gis16~
  %15
  | gis8.[ a16~ ] \autoBeamOff \once\omit Flag \once\omit Stem a8. b16 \autoBeamOn b8.[ c16]
  | b2 s4
  | gis'4( a8) r r \clef bass
    \shape #'((0 . 0.8) (0 . 1) (0 . 1.5) (0 . 1.5)) Tie
    cis,8~
  | cis[ e] a,4 \once\override NoteColumn.force-hshift = #3.5 <a c dis>\arpeggio
  | dis8.[ e32 dis] e8 s4
    \shape #'((0 . 0.8) (0 . 1) (0 . 1.5) (0 . 1)) Tie
    gis,8~
  %20
  | gis[ a~] a8.[ gis16] a4~
  | a8.[ cis16] d2~
  | d8~ d32[ c b a] gis8.\prall[ 16] a8.[ b16]
  | b8.[ c16] a4( gis\prall)
  | << { a2\parenthesize\mordent a8.\arpeggio[ 16~] } \\ { s2 s8  \stemUp	<c, e> } >>
  %25
  | << { a'2 s4 } \\ >>
  | s2.
  | s2.
  | s2 s8 g'64[ fis e dis e32 c!]
  | a64[ c e \top a] \bottom s8 \tuplet 3/2 { a32[ gis a~] } a8.[ 16~] a8.[ g!16~]
  %30
  | g4 s4 e8.\rest <c e>16
  | e4( dis\prall) d!8.\mordent[ d16]
  | d4( cis\prall) c!8.[ c16]
  | c16~[ c64 b a gis a16. c32] fis,16~[ fis64 g! fis e fis16. a32] dis,16~[ dis64 e d cis d16. fis32]
  | fis2 <b, e>4~
  %35
  | e2 dis4\prallmordent
  | <b e>2
  }
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set baseMoment = #(ly:make-moment 1/8)
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
      \stemDown c'16[ a fis] \appoggiatura e8 dis8.[ 16]
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
    \partial 4 { <b dis fis a>4\arpeggio }
  | e2 r4
  | r16 d'16[ d32^\prall c d16] r16 b16[ b32^\prall a b16] d16[ gis, gis32^\prall fis gis16]
  %15
  | c,4 <d a'>8.[ <e gis>16] f!8.[ d16]
  | e2 \clef treble \stemUp <d' f! gis>4
  | \stemDown c2 s8 cis16.[ e32]
  | f,!2 \once\override NoteColumn.force-hshift = #3.5 fis4\arpeggio
  | g2
    \set subdivideBeams = ##t
    r16 b32[ a gis a b16]
    \set subdivideBeams = ##f
  %20
  | c,4~ c8.[ e16] a8.[ g!16]
  | f!8.[ a16] d8.[ c!16] b8.[ a16]
  | gis4 b,8.\rest e16 a8.[ g!16]
  | f!8.[ d16] e2
  | g,8\rest e'32\rest f![ e d]
    \set subdivideBeams = ##t
    e[ d c d e c d e] a,8.\arpeggio[ a'16]
    \set subdivideBeams = ##f
  %25
  | dis,2_\parenthesize\mordent r4
  | <e g b e>2\arpeggio r4
  | \appoggiatura b'8 <cis, e ais>4. r16 <c! e a!> q8.[ <c e ais>16]
  | <b fis' b>4 r r8 \clef treble s8
  | s4 a'4 b
  %30
  | c~ 8. \clef bass b16 a8.[ g16]
  | fis2 gis4
  | a4. g!8[ fis8. e16]
  | dis4 s2
  | c!4_( b8.) a16] g8.[ fis16]
  %35
  | g8.[ a16] b2
  | e,2
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
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
    \tempo 4 = 40
  }
}
