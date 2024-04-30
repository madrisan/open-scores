Global = {
  \key a \minor
  \time 4/4
  \include "../global.ly"
}

staffLower = { \change Staff = "lower" }
staffUpper = { \change Staff = "upper" }

Soprano = \context Voice = "one" \relative c'' {
  \voiceOne
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \repeat volta 2 {
  \partial 4 e8~ e32 d c b
  %1
  | c16 b32 a d16 c32 b e16 d32 c f16. a,32 \stemUp\tieUp gis32 a b d~ d8~ d~ d16 c32 b
  | c4~ c16. a32 d16. f,32 f8\prall[ e~] e32 g f e a16 b32 c~
  | \once\shape #'((0.2 . 1.8) (0 . 2) (0 . 2) (0 . 0.4)) Tie
    c4~ c32 a g fis b16 c32 d~
    \break
    \once\shape #'((0.2 . 1.8) (0 . 2) (0 . 2) (0 . 0.4)) Tie
    d4~ d32 f e d gis16 a32 b
  | e,8. a16~ a16. f32 e16. d32 s2
  %5
  | s4 a'4~ a32 d, e fis g16. a32 s4
  | s4 c16. fis,32 g16._\tweak extra-offset #'(0.4 . 3.4) \upmordent a32 dis,16.\prall cis32 b8~ b32 b cis dis cis16.\prall b32
  | s4 fis'
    \break
    g32\rest e fis! g fis16.\prall e32 ais4
  | c32\rest a g fis g8~ g fis16. dis32 << { dis8[( e)] } \\ { \once\stemUp b4 } >>
  }
  \pageBreak
  \repeat volta 2 {
  \partial 4 \stemNeutral b16 d32 c b c d16
  | \stemUp gis,16 a32 b e,16 gis32 b s4 c16 d32
    \once\override Tie.staff-position = #5 e~ e8 s4
  %10
  | s2 f16 g32 a~ a8
    \set subdivideBeams = ##t
    d,32 f e d g a bes16~
  | bes4 c,32 e d c f g a16~ a4 bes,32 d c bes e f g16~
  | g32 g f e f16. d32~
    \set subdivideBeams = ##f
    d16 cis32 d e d cis16
    \break
    d4 f\rest
  | s4 f~ f32 f e d e16. c32 a4~
  | \set subdivideBeams = ##t
    a32 gis a b e, d' c b
    \set subdivideBeams = ##f
    c8~ c32 c b a gis4\prall a8 b~
  | b32 a b c b16.\prall a32 s2
    \set subdivideBeams = ##t
    c'32\rest a b c b a gis a
    \set subdivideBeams = ##f
  | s4 f16\rest a, b16. gis32 \slurDotted gis8[( a)] \slurSolid
    \override Score.TextMark.self-alignment-X = #CENTER
    \textEndMark \markup { \musicglyph "scripts.ufermata" }
  }
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \stemDown\tieDown
  \mergeDifferentlyDottedOn
  \set minimumBeamSubdivisionInterval = \musicLength 8
  \override Rest.staff-position = #0
  \partial 4 s4
  %1
  | \autoBeamOff s2 s16 b16~ <e, gis b>8~ <e gis b> s \autoBeamOn
  | c32\rest b' a gis a16. e32 f8.*7/6 d32 d8[ c] s16. e8.*5/6
  | \stemUp \shiftOn fis16 g32 a^~ a8 s4 gis16 a32 b^~ b8 \stemDown\tieDown s16. d8.*5/6~
  | d32 d c b c8 b4 c8^\prall b16 a e'16.^\mordent d32 c b c d
  %5
  | \set subdivideBeams = ##t
    g32 d c b c e d c
    \set subdivideBeams = ##f
    g16\rest c16 d16. a32 b4 b'^~^\mordent
  | b32 e, fis gis a16. b32 a,8. g16
    \set subdivideBeams = ##t
    fis32 g fis e fis dis e fis
    \set subdivideBeams = ##f
    b,8\rest fis'
  | e'32 b c d c16.^\prall b32 e,32\rest a b c b16.^\prall a32 g4 g32\rest e' fis g fis16.^\prall e32
  | dis8. e16 c32 b a16~ a8 \slurDotted a[( gis]) \slurSolid
  \partial 4 s4
  | a,\rest d'16 c32 b f'16 e32 d c4*1/2 a8~
    \set subdivideBeams = ##t
    a32 b c d e f g16
    \set subdivideBeams = ##f
  %10
  | cis,16 d32 e a,16 cis32 e g16 f32 e bes'16 a32 g f4*1/2 d8~
    \once\omit Flag \once\omit Stem d32 s16 d8.*5/6
  << {
  | e16[ f32 g c,8~] \once\omit Flag \once\omit Stem c32 s16 c8.*5/6
    d16 e32 f bes,8~ \once\omit Flag \once\omit Stem bes32 s16 bes8.*5/6
  }
  \new Voice {
  | \stemUp\tieUp \autoBeamOff
    \once\override Voice.Rest.X-offset = #1.3 f'8*3/4 \rest
    \once\omit Flag \once\omit Stem g 32~ g8
    s4
    \once\override Voice.Rest.X-offset = #1.3 e8*3/4 \rest
    \once\omit Flag \once\omit Stem f 32~ f8
    \autoBeamOn
    s4
  }
  >>
  | a,4 g~
    \set subdivideBeams = ##t
    g32 g f e f g a f d f a b c b a c
  | b a g fis g b d e
    \set subdivideBeams = ##f
    g,16\rest c16 d16. b32 g4~ g32 g f e f16. d32
  | b8[ e~] e32 a b c dis,8 b\rest g32\rest f' e d b\rest f'[ e d] b\rest f'[ e d]
  %15
  | s4 gis32 b c d c16.^\prall b32 a e' fis g fis16.^\prall e32 dis4
  | \set subdivideBeams = ##t
    d32 f e d e b c a
    \set subdivideBeams = ##f
    e8 d << { e4 } \\ { \slurDotted d8[( c)] \slurSolid } >>
}

Tenor = \context Voice = "three" \relative c'' {
  \voiceThree
  \override Rest.staff-position = #0
  \mergeDifferentlyDottedOn
  \partial 4 s4
  %1
  | \staffUpper\stemDown\tieDown
    \autoBeamOff
    s2 \shape #'((0.2 . -0.4) (0 . -1.4) (0 . -1.4) (0 . 0)) Tie gis8~
    \hideNotes \once\omit Flag \once\omit Stem gis \unHideNotes
    \autoBeamOn
    s4
  | s1
  | \once\override NoteColumn.force-hshift = #1 fis4*1/2 d8 s16. fis8.*5/6
    \once\override NoteColumn.force-hshift = #1 gis4*1/2 e8
    \staffLower\stemUp\tieUp gis,4~
  | gis8[ \once\override NoteColumn.force-hshift = #-1 a~]
    \once\override NoteColumn.force-hshift = #-1 <f a>[ gis] a4~ a16 s8.
  %5
  | c8\rest g d'\rest a d\rest \autoBeamOff d g \autoBeamOn e\rest
  | g\rest e s2.
  | g8\rest e4 dis8 e4 s
  | s b \magnifyMusic 0.7 { e, }
  \partial 4 s4
  | c'8\rest gis4*1/2 b4*1/2 gis8 a\mordent s4.
  %10
  | f8\rest cis4*1/2 e4*1/2 cis8 d\mordent s4.
  | s1
  | s4 a'~ a8 a f d
  | g2 c,8 s4.
  | s2 e,32 b' c d e8 fis gis
  %15
  | <a c>4 <b d> <c e> s8
    \shape #'((0.2 . 0.4) (0 . 0.4) (0 . 0.4) (-0.2 . 0)) Tie gis~
  | <f gis>[ <e a>] e4 a,

}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \repeat volta 2 {
  \partial 4 r16 a c e
  %1
  | a8[ b c d] e r32 c b a gis16 a32 b e,16 fis32 gis
  | a8[ c] d[ g,] c r32 c, e g c8. b32 a
  | d8 r32 d, fis a d8. c32 b e8 r32 c b a gis8 e
  << {
  | c[ f] d[ e]
    %\set minimumBeamSubdivisionInterval = \musicLength 8
    %\set subdivideBeams = ##t
    a16.[ e32] d[ c d e]
    %\set subdivideBeams = ##f
    a,16. a'32 g16. f32
  }
  \new Voice {
  | \hideNotes \autoBeamOff
    \omit Flag \omit Stem
    s8 \once\override NoteColumn.force-hshift = #-1 f_~ \once\override NoteColumn.force-hshift = #-1 f
    s s2
    \unHideNotes
  } >>
  %5
  | \stemDown\tieDown e4 fis g~
    \set minimumBeamSubdivisionInterval = \musicLength 8
    \set subdivideBeams = ##t
    g32 a g fis g e g b
    \set subdivideBeams = ##f
  | c4~ c16. c32 b16. a32  b4 a
  | g fis b,16\rest b'16 g16. a32 cis,16. e32 ais16. fis!32
  | c'!8 b16.^\prall a32 b8 b, e,4
  }
  \repeat volta 2 {
  \partial 4 \stemNeutral r16 e gis b
  | \stemDown\tieUp e4. e8
    \shape #'((1.4 . 0) (0 . 0) (0 . 0) (0 . 0)) Tie a~
    a32 b a g a16. e32 c16. e32
  %10
  | a,4. a8
    \shape #'((1.4 . 0) (0 . 0) (0 . 0) (0 . 0)) Tie d~
    d32 f e d bes'16. a32 bes16. g32
  | c8~ c32 e, d c a'16. g32 a16. f32 bes8~ bes32 a g f e16. f32 g16. e32
  | cis'8[ d] a[ a,] d4 g,\rest
  | a8\rest d b g c4_~ c16. cis32 d16. e32
  | \stemNeutral f8 gis, a fis \stemDown\tieDown e e'~ e4~
  %15
  | e8[ e~] e[ e~] e a fis16. a32 gis16. f32
  | b,8 c16. d32 e8 e, a,4
    \tweak direction #DOWN
    \textEndMark \markup { \musicglyph "scripts.dfermata" }
  }
}

\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
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
    composer = ##f # "Johann Sebastian Bach"
    opus = ##f # "BWV 827"
    title = \markup { "Allemande" }
    subtitle = ##f
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
    \tempo 4 = 50
  }
}
