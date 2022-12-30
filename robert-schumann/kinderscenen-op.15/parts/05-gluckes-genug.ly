Global = {
  \key d \major
  \time 2/4
  \include "../global.ly"
}

ritardando = { \override TextSpanner.bound-details.left.text = \markup { \small "ritardando " } }

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override Rest.staff-position = #0
  \partial 8
    <gis>8\p (
  %1
  | a\< [ cis fis\! e ]
  | d a ) c8\rest a^.
%    \break
  | a16[ ( e16^.] ) e[ ( fis] g8 b
  | a[ fis ] e ) gis^> (
  %5
  | a4^> ) c8\rest cis,8 (
%    \break
  | d\< [ fis b\! <a> ]
  | g [ b e\> d_\markup { "rit." } ]
  | cis[ b\! a] ) gis (
%    \break
  | a[\< cis fis\! e]
  %10
  | d a ) r8 a^.
  | a16[ ( e16^. ] ) e[ ( fis] g8 b
%    \break
  | a fis e ) gis^> (
  | a4^> ) c8\rest cis,8 (
  | d\< [ fis b\! a ]
%    \break
  %15
  | g [ b e\> d_\markup { "rit." } ]
  | cis[ b\! a] ) a (
  | bes[\<  e a\! g]
%    \break
  | f c ) c8\rest c^.
  | c16[ ( g16^.] ) g[ ( a] bes8 d
  %20
  | c8 a g ) a (
%    \break
  | bes[\<  e a\! g]
  | fis[ cis e d]
  | b![\ritardando fis\startTextSpan a g]
  | fis e d4\stopTextSpan )
  \fine
}

Alto = \context Voice = "two" \relative c'' {
  \voiceTwo
  \partial 8
    gis16 <e g>16
  %1
  | a <e g> cis' <g a> fis' <g, a> e' <g, a>
  | d' <d, fis> a' <d, fis> r16 <d fis> a' <d, fis>
  | a'[ cis,] cis8 g'16 <cis, e> b' <b, g'>
  | a' <a, fis'> fis' <a, d> e'[<a, cis> gis' <e g>]
  %5
  | a [<e g> r16 <g, a>] r16 <g a> cis <g a>
  | d' <fis, a> fis' <a, d> b' <d, fis> a' <d, fis>
  | g <g, d'> b' <d, g> e' <e, g> d' <d, g>
  | cis' <cis, g'> b' <d, g> a' [<dis, g> gis <e g>]
  | a <e g> cis' <g a> fis' <g, a> e' <g, a>
  %10
  | d' <d, fis> a' <d, fis> r16 <d fis> a' <d, fis>
  | a'[ cis,] cis8 g'16 <cis, e> b' <b, g'>
  | a' <a, fis'> fis' <a, d> e' [<a, cis>] gis' [<e g>]
  | a[ <e g> e16\rest <g, a>] r16 <g a> cis <g a>
  | d' <fis, a> fis' <a, d> b' <d, fis> a' <d, fis>
  %15
  | g <g, d'> b' <d, g> e' <e, g> d' <d, g>
  | cis' <cis, g'> b' <d, g> a' [<dis, g>] a' [<e g>]
  | bes' <e, g> e' <g, bes> a' <g, bes> g' <g, bes>
  | f' <f, a> c' <f, a> r16 <f a> c' <f, a>
  | c'[ e,] e8 bes'16 <e, g> d' <c, bes'!>
  %20
  | c' <c, a'> a' <c, f> g'[ c, a' <e g>]
  | bes' <e, g> e' <g, bes!> a' <g, bes> g' <g, bes>
  | fis'! <fis,! a> cis'! <g a> e' <e, a> d' <d, a'>
  | b' <d, g> fis <c d> a' <a, d> g' <g, d'>
  | fis' <a, d> e' <g, cis> d' <fis, a>8.
}

Tenor = \context Voice = "three" \relative c {
  \voiceThree
  \override Rest.staff-position = #0
  \partial 8
    r8
  %1
  | <a, a'>8\p \dynamicUp r8 r8 cis'8 (
  | d[\< fis b\! a] )
  | a,16[ a'] a8~ \autoBeamOff a8 a,~ \autoBeamOn
  | a2
  %5
  | \grace { a,8 ( } a'8[\< ) ( cis fis\! e]
  | <d, d'>4. ) <c c'>8 \(
  | <b b'>4. <bes bes'>8
  | <a a'>[ <b b'> <bis bis'> <cis cis'>~ ]
  | <cis cis'> a \) r8 cis' (
  %10
  | d[\< fis b\! a] )
  | a,16[ a'] a8~ \autoBeamOff a8 a,~ \autoBeamOn
  | a2
  | \grace { a,8 ( } a'8[\< ) ( cis fis\! e ]
  | <d, d'>4. ) <c c'>8 \(
  %15
  | <b b'>4. <bes bes'>8
  | <a a'>[ <b b'> <cis cis'> <c c'>~^> \)]
  | <c c'>4. e'8 (
  | f8\< [ a d\! c ] )
  | c,16[ d'] d8 \autoBeamOff g, e ( \autoBeamOn
  %20
  | f4 e )
  | <c, c'>4. \( <cis cis'>8
  | <d d'> [<e e'> <f f'> <fis fis'>]
  | \stemDown <g g'> [<a a'> <bes bes'>^> <b b'>] \stemUp
  | <a>4 ~ a4 \)
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override Rest.staff-position = #0
  \partial 8
    s8
  %1
  | s2
  | a2
  | a16[ ( g'_.] ) g[ ( fis] \autoBeamOff e8 ) a,, ( \autoBeamOn
  | d8 fis a4 )
  %5
  | a2
  | s2*4
  %10
  | a2
  | a16[ ( g'_.] ) g[ ( fis] \autoBeamOff e8 ) a,, ( \autoBeamOn
  | d8 fis a4 )
  | a2
  | s2*4
  %15
  | c2
  | c16[ ( bes'_.] ) bes[ ( a] \autoBeamOff g8 ) c,, ( \autoBeamOn
  | f8 <a-3> c4 )
  | s2*3
  | a8 a,8 d4
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
    %composer = "Robert Schumann"
    %opus = "Op. 15"
    title = \markup { "5. Glückes genug" }
    subtitle = \markup {
             \column {
               \line { "(Perfect Happiness)" }
               % workaround to insert some vertical space after the subtitle
               \line { " " }
             }
           }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      \override StaffGrouper.staff-staff-spacing.minimum-distance = 12
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {}
}
