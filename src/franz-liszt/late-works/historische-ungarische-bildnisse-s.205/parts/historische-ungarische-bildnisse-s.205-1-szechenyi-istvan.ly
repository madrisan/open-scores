Global = {
  \key d \minor
  \time 2/2
  \include "../global.ly"
}

Ped = \markup { \hspace #-1.5 \musicglyph #"pedal.Ped" }

SopranoOssia = \relative c'' {
  | \stopStaff
    s1*116
  | \startStaff
  %\repeat volta 2 {
    \clef "treble"
    \key d \major
    <a a'>1~
  | q2 <e e'>
  | <a a'>1
  | <e e'>
  | <a a'>~
  | q4 r e2
    \stopStaff
    % workaround to force the visualization of the clef at bar 137
    \clef "bass"
    \override Staff.Clef.stencil = ##f
    \override Staff.KeySignature.stencil = ##f
  | s1*10
  %}
  %137
  | \startStaff
    s1*4
    \revert Staff.Clef.stencil
    \revert Staff.KeySignature.stencil
    \clef "treble"
    \key d \major
  | <a a'>1~
  | q2 <fis fis'>
  | <d d'>1~
  %140
  | q2 <fis fis'>
  | <a a'>1~
  | q2 <fis fis'>
  | <a a'>1
  | <fis fis'>2 <d d'>
  %145
  | a'1
  | fis2 d
  | a'4 r fis r
  | e r d r
  | cis1~
  %150
  | cis4 r fis r
  | cis1~
  | cis4 r fis r
  | cis1~
  | cis\fermata
    \fine
}

Soprano = \context Voice = "one" \relative c' {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205
  \label #'S205i
  \tempo Feroce 2 = 116
  %1
  | d1_\(
  | c2. d4
  | ees_.\) r bes_. r
  | ees_. r bes_. r
  %5
  | d1_\(
  | c2. d4
  | ees_.\) r bes_. r
  | ees_. r bes_. r
  \repeat unfold 2 {
  | f'1_\(
  | ees4_.\) r bes_. r
  | c1_\(
  | bes4_.\) r g_. r
  }
    \clef "bass"
  | r g-. g-. a-.
  | bes-. g-. g-. a-.
  | bes-. r g-. r
  %20
  | a-. r bes-. r
  | r gis-. a-. bes-.
  | cis-. gis-. a-. bes-.
  | cis-. r a-. r
  | bes-. r cis-. r
    \clef "treble"
  %25
  | r2 e~_^
  | e a,
  | r e'~
  | e a,
  | r f'~_^
  %30
  | f a,
  | r f'~
  | f a,
  | r gis'~_^
  | gis cis,
  %35
  | r gis'~
  | gis cis,
  | r a'~_^\(
  | a cis,\)
  | r a'~
  %40
  | a cis,
  \repeat unfold 2 {
  | <f, a d>^^ q^^
  | <e gis cis>^^ bes'4_> cis_>
  }
  %45
  \repeat unfold 2 {
  | <f, a d>2^^ <e gis bes>4_> <e gis cis>_>
  }
  | <f a d>2^^ a4 bes
  \repeat unfold 2 {
  | cis d gis, a8 bes
  }
  %50
  | cis4 d a bes
  \repeat unfold 2 {
  | <ges bes ees>2_^ q_^
  | <f a d>_^ b4_> d_>
  }
  %55
  \repeat unfold 2 {
  | <ges, bes ees>2_^ <f a b>4_> <f a d>_>
  }
  | <ges bes ees>2_^ bes4_> b_>
  \repeat unfold 2 {
  | d ees a, bes8 b
  }
  %60
  | d4 ees bes b
  \repeat unfold 2 {
  | <g b e>2^^ q^^
  | <fis a dis>^^ c'4_> dis_>
  }
  %65
  \repeat unfold 2 {
  | <aes c f>2^^ q^^
  | <g bes e>^^ des'4_> e_>
  }
  | <a, cis fis>2^^ q^^
  %70
  | <gis b eis>^^ d'4_> eis_>
  | <a, cis fis>2^^ q^^
  | <gis b eis>^^ d'4_> f_>
    \clef "treble"
  | b, cis d e
  | f gis f gis
  %75
  | <b, b'> <cis cis'> <d d'> <e e'>
  | <f f'> <gis gis'> <f f'> <gis gis'>
  \repeat unfold 2 {
  | <b b'> <gis gis'> <b b'> <cis cis'>
  | <b b'> <a a'> <b b'> <cis cis'>
  }
    \bar "||"
    \key d \major
  %81
  | r2 <e e'>~^^
  | q <a, a'>
  | r <fis' fis'>~^^
  | q <a, a'>
  %85
  | r <fis' fis'>~^^
  | q <ais, ais'>
  | <fis' fis'>^^( <b, b'>)
  | <fis' fis'>^^(^\markup { "rit." } <cis cis'>)
    \bar "||"
  | \tempo "Più largo"
  \repeat unfold 2 {
    <d fis d'>2 q
  | <cis fis cis'> <a a'>4 <b b'>8 <cis cis'>
  }
  \repeat unfold 2 {
  | <d fis d'>2 <a a'>4 <b b'>8 <cis cis'>
  }
  | <d fis d'>2 <a a'>4 <b b'>
  \repeat unfold 2 {
  | <cis cis'> <d d'> <gis, gis'> <a a'>8 <b b'>
  }
  | <cis cis'>4 <d d'> <a a'> <bes bes'>
    \bar "||"
    \key bes \major
  | \textMark \markup \italic \smaller { "Sempre più largo" }
    <ees g ees'>2 q
  %100
  | <d g d'> <bes bes'>4 <c c'>8 <d d'>
  | <ees g ees'>2 q
  | <d g d'> <bes bes'>4 <c c'>8 <d d'>
  \repeat unfold 2 {
  | <ees g ees'>2 <bes bes'>4 <c c'>8 <d d'>
  }
  %105
  | <ees g ees'>2 <bes bes'>4 <c c'>
  \repeat unfold 2 {
  | <d d'> <ees ees'> <a, a'> <bes bes'>8 <c c'>
  }
  | <d d'>4 <ees ees'> <bes bes'> <b b'>
    \bar "||"
    \key e \major
  | <e gis e'>2 q
  %110
  | <dis gis dis'> <b b'>4 <cis cis'>8 <dis dis'>
  | <e gis e'>2 q
  | \stemUp <eis gis eis'> <cis cis'>4 <dis dis'>8 <eis eis'>
  | <fis ais fis'>2 q
  | \once\stemNeutral <eis ais eis'> <cis cis'>4 <dis dis'>8 <eis eis'>
  %115
  | \stemNeutral <fis ais fis'>2 q
  | <gis cis gis'> q
    \key d \major
  | \tempo "Tempo I."
  \repeat volta 2 {
  | <a a'>4^^ <gis gis'> <g g'> <fis fis'>
  | <e e'> <d d'> <cis cis'> <b b'>8 <a a'>
  | <a' a'>4^^ <gis gis'> <g g'> <fis fis'>
  %120
  | <e e'> <d d'> <cis cis'> <b b'>8 <a a'>
  | <a' a'>4^^ <gis gis'> <g g'> <fis fis'>
  | <e e'> <d d'> <cis cis'> <b b'>8 <a a'>
  | <a a'>4^^ <gis gis'> <g g'> <fis fis'>
  | e' cis a <cis, e a>
  %125
    \repeat unfold 2 {
  | <d f bes>4 q8 q q4 q
  | <f bes d>2( <d f bes>4_.) <f bes d>_.
    }
    \repeat unfold 2 {
  | <fis a cis>4 q8 q q4 q
  | <a cis fis>2( <fis a cis>4_.) <a cis fis>^.
    }
  }
  %133
  \repeat unfold 2 {
  | <a d fis> <fis a d>8 q q4 <a d fis>
  | q <d fis a>2( <a d fis>4)
  }
  %137
  | <a a'>^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d d'>4 <cis cis'> <d d'> <fis fis'>8 <a a'>
  | <d d'>4^^ <cis cis'> <b b'> <a a'>8 <gis gis'>
  | <a a'>4 <g g'> <fis fis'> <a a'>8 <d d'>
  | <fis fis'>4^^ <e e'> <d d'> <cis cis'>8 <b b'>
  | <a a'>4 <gis gis'> <a a'> <d d'>8 <fis fis'>
  | <a a'>4^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d d'>4 <cis cis'> <b b'> <a a'>8 <gis gis'>
  %145
  | <a a'>4^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d d'>4 <cis cis'> <b b'> <a a'>8 <gis gis'>
  | <a a'>4_. r fis'_._^ r
  | e_._^ r d_._^ r
  \repeat unfold 2 {
  | cis1^^~
  | cis4 r fis_._^ r
  }
  | cis1^^~
  | cis\fermata
    \fine
}

Alto = \context Voice = "two" \relative c' {
  \stemDown\tieDown
  \override Stem.cross-staff = ##t
  \override Stem.length = #20
  %1
  | s1*111
  | s4
    \autoBeamOff \omit Flag
    <eis gis>8 q q4 s
  | s <fis ais> s q
  | s <eis ais>8 q8 q4 s
  %115
  | \override Stem.length = #24
    s <fis ais> s q
  | s <gis cis> s q
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \stemNeutral\tieNeutral\phrasingSlurNeutral\slurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  %1
  | <d, d'>1_\(
  | <c c'>2. <d d'>4
  | <ees ees'>_.\) r <bes bes'>_. r
  | <ees ees'>_. r <bes bes'>_. r
  %5
  | <d d'>1_\(
  | <c c'>2. <d d'>4
  | <ees ees'>_.\) r <bes bes'>_. r
  | <ees ees'>_. r <bes bes'>_. r
  \repeat unfold 2 {
  | <f' f'>1_\(
  %10
  | <ees ees'>4_.\) r <bes bes'>_. r
  | <c c'>1_\(
  | <bes bes'>4_.\) r <g g'>_. r
  }
  | r4 <g g'>_. q <a a'>_.
  | <bes bes'>_. <g g'>_. q_. <a a'>_.
  | <bes bes'>_. r <g g'>_. r
  %20
  | <a a'>_. r <bes bes'>_. r
  | r <gis gis'>_. <a a'>_. <bes bes'>_.
  | <cis cis'>_. <gis gis'>_. <a a'>_. <bes bes'>_.
  | <cis cis'>_. r <a a'>_. r
  | <bes bes'>_. r <cis cis'> r
  %25
  | r2 <e e'>~_^
  | q <a, a'>
  | r2 e''~
  | e a,
  | r2 <f f'>~_^
  %30
  | q <a, a'>
  | r2 f''~
  | f a,
  | r2 <gis gis'>~_^
  | q <cis, cis'>
  %35
  | r2 gis''~
  | gis cis,
  | r2 <a a'>~^^\(
  | q <cis, cis'>\)
  | r2 a''~
  %40
  | a cis,
  \repeat unfold 2 {
  | <d, d'> q
  | <bes bes'> r
  }
  %45
  \repeat unfold 2 {
  | <f f'>2 <bes bes'>4 q
  }
  | <f f'>2 <a a'>4 <bes bes'>
  \repeat unfold 2 {
  | <cis cis'> <d d'> <gis, gis'> <a a'>8 <bes bes'>
  }
  | <cis cis'>4 <d d'> <a a'> <bes bes'>
  \repeat unfold 2 {
  | <ees, ees'>2 <ees' ees'>
  | <b b'> r
  }
  %55
  \repeat unfold 2 {
  | <ges ges'> <b b'>4 q
  }
  | <ges ges'>2 <bes bes'>4_> <b b'>_>
  \repeat unfold 2 {
  | <d d'> <ees ees'> <a, a'> <bes bes'>8 <b b'>
  }
  %60
  | <d d'>4 <ees ees'> <bes bes'> <b b'>
  \repeat unfold 2 {
  | <e e'> <b b'> <e e'> <b b'>
  | <c c'> <b b'> <c c'> <dis dis'>
  }
  %65
  | <f f'> <c c'> <f f'> <c c'>
  | <des des'> <c c'> <des des'> <e e'>
  | <f f'> <c c'> <f f'> <c c'>
  | <des des'> <c c'> <des des'> <e e'>
  | <fis fis'> <cis cis'> <a a'> <b b'>8 <cis cis'>
  %70
  | <d d'>4 <b b'>8 <cis cis'> <d d'>4 <eis eis'>
  | <fis fis'> <cis cis'> <a a'> <b b'>8 <cis cis'>
  | <d d'>4 <b b'>8 <cis cis'> <d d'>4 <f f'>
  \repeat unfold 2 {
  | <b, b'> <cis cis'> <d d'> <e e'>
  | <f f'> <gis gis'> <f f'> <gis gis'>
  }
  \repeat unfold 2 {
  | <b b'> <gis gis'> <b b'> <cis cis'>
  | <b b'> <a a'> <b b'> <cis cis'>
  }
    \bar "||"
    \key d \major
  | r2 <e e'>~^^
  | q <a, e' a>
  | r <fis' fis'>~^^
  | q <a, a'>
  %85
  | r <fis' fis'>~^^
  | q <ais, ais'>
  | <fis' fis'>^^( <b, b'>)
  | <fis' fis'>^^( <cis cis'>)
  %89
  \repeat unfold 2 {
  | <d, d'>4 <a'' d fis> <fis, fis'> <a' cis fis>
  | <fis, fis'> <a' cis fis>8 q q4 r
  }
  \repeat unfold 2 {
  | <d,, d'> <a'' d fis> <fis, fis'> <a' cis fis>
  }
  | <d,, d'> <a'' d fis> <a, a'> <b b'>
  \repeat unfold 2 {
  | <cis cis'> <d d'> <gis, gis'> <a a'>8 <b b'>
  }
  | <cis cis'>4 <d d'> <a a'> <bes bes'>
    \bar "||"
    \key bes \major
  %99
  \repeat unfold 2 {
  | <ees, ees'> <bes'' ees g> <ees,, ees'> <bes'' ees g>
  | <g, g'> <bes' d g>8 q q4 r
  }
  | <ees,, ees'> <bes'' ees g> <g, g'> <bes' d g>
  | <ees,, ees'> <bes'' ees g> <g, g'> <bes' d g>
  %105
  | <ees, ees'> <bes' ees g> <bes, bes'> <c c'>
  \repeat unfold 2 {
  | <d d'> <ees ees'> <a, a'> <bes bes'>8 <c c'>
  }
  | <d d'>4 <ees ees'> <bes bes'> <b b'>
    \bar "||"
    \key e \major
  | <e, e'>4 <b'' e gis> <e,, e'> <b'' e gis>
  %110
  | <gis, gis'>4 <b' dis gis>8 q q4 r
  | <e,, e'>4 <b'' e gis> <e,, e'> <b'' e gis>
  | <cis,, cis'>4 cis''8 cis cis4 r
  | <fis,, fis'> cis'' <fis,, fis'> cis''
  | <ais, ais'> cis'8 cis cis4 r
  %115
  | <fis,, fis'> cis'' <fis,, fis'>4 cis''
  | <eis,, eis'> cis'' <e,, e'>4 cis''
    \key d \major
  \repeat volta 2 {
  | <a,, a'>_^_\Ped <b b'> <cis cis'> <d d'>
  | <e e'> <fis fis'> <g g'> <gis gis'>8 <a a'>
    \repeat unfold 2 {
  | <a, a'>4_^ <b b'> <cis cis'> <d d'>
  | <e e'> <fis fis'> <g g'> <gis gis'>8 <a a'>
    }
  | <a a'>4^^ <b b'> <cis cis'> <d d'>
  | <e e'> <cis cis'> <a a'> <e' a>
  %125
    \repeat unfold 2 {
  | <d f bes>4 q8 q q4 q
  | <f bes d>2( <d f bes>4_.) <f bes d>_.
    }
    \repeat unfold 2 {
  | <fis a cis>4 q8 q q4 q
  | <a cis fis>2( <fis a cis>4_.) <a cis fis>^.
    }
  }
  \repeat unfold 2 {
  | <a d fis> <fis a d>8 q q4 <a d fis>
  | q <d fis a>2( <a d fis>4)
  }
  %137
  | <a, a'>^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d d'>4 <cis cis'> <d d'> <fis fis'>8 <a a'>
  | <d d'>4^^ <cis cis'> <b b'> <a a'>8 <gis gis'>
  | <a a'>4 <g g'> <fis fis'> <a a'>8 <d d'>
  | <fis fis'>4^^ <e e'> <d d'> <cis cis'>8 <b b'>
  | <a a'>4 <gis gis'> <a a'> <d d'>8 <fis fis'>
  | <a a'>4^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d d'>4 <cis cis'> <b b'> <a a'>8 <gis gis'>
  %145
  | <a a'>4^^ <gis gis'> <g g'> <fis fis'>8 <e e'>
  | <d d'>4 <cis cis'> <b b'> <a a'>8 <gis gis'>
  | <a a'>4_. r <fis' fis'>_._^ r
  | <e e'>4_._^ r <d d'>_._^ r
  \repeat unfold 2 {
  | <cis cis'>1_^~
  | q4 r <fis fis'>_._^ r
  }
  %153
  | <cis cis'>1_^~
  | q\fermata
    \fine
}

centerDynamics = {
 | s4\ff s2.
 | s1*15
 %17
 | s4 s\p s2
 | s1*3
 | s4 s\< s2
 | s1
 | s8 s\! s2.
 | s1
 %24
 | s2 s\mf
 | s1
 | \override Hairpin.Y-offset = #2
   s2 s\>
 | s4 s\! s2
 %29
 | s s\mf
 | s1
 | s2 s\>
 | s4 s\!
   \once\override TextScript.extra-offset = #'(-1 . 1.5)
   s2-\markup { "sempre cresc. " }
 | s1*2
 %35
 | s2
   \once\override Hairpin.Y-offset = #-6
   s\>
 | s4 s\! s2
 | s1*2
 %39
 | s2
   \once\override Hairpin.Y-offset = #-6
   s\<
 | s4 s\! s2
 | s2\f s
 | s1*5
 | s2
   \once\override TextScript.extra-offset = #'(-1 . 0)
   s-\markup { \whiteout "martellato" }
 | s1*2
 | \once\override Hairpin.Y-offset = #-2
   s4\< s2.
 | s4\! s2.
 | s1*8
 %60
 | \once\override Hairpin.Y-offset = #-3
   s4\< s2.
 | s4\! s2.
 | s1*15
 %77
 | s4\< s2.
 | s1
 | s4\! s2.
 | s1*6
 | s2 s\<
 | s1
 | s2 s\!
 %89
 | s2\ff s
 | s1*8
 | s4\< s2.
 | s4\! s2.
 | s1*8
 %108
 | s4\< s2.
 | s4\! s2.
 | s1*7
 | \once\override TextScript.extra-offset = #'(0 . 1)
   s4-\markup { "sempre" \dynamic ff } s2.
}

forceBreaks = {
  % page 1
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\pageBreak
  % page 2
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\pageBreak
  % page 3
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 5 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 7 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\pageBreak
  % page 4
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\pageBreak
  % page 5
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\pageBreak
  % page 6
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 6 { s1\noBreak } s1\pageBreak
}

sustainPedal = {
  \set Staff.pedalSustainStyle = #'mixed
  | s1*124
  | s4\sustainOn s2.
  | s1
  | s4\sustainOff s2.
  | s1
  | s4\sustainOn s2.
  %130
  | s1
  | s4\sustainOff s2.
  | s1
  | s4\sustainOn s2.
  | s1
  | s4\sustainOff s2.
}

\score {
  <<
    \new Staff = "ossia" \with {
      \override InstrumentName.extra-offset = #'(1 . 0)
      %instrumentName = "Trompeten"
      shortInstrumentName = "Tromp."
      \include "../../ossiasetup.ly"
    }
    { \SopranoOssia }
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
      \new Devnull \forceBreaks
      \context Dynamics = "dynamics" \centerDynamics
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \Bass
      >>
    \context Dynamics = "sustainPedal" \sustainPedal
    >>
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "I. Széchenyi István" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      \remove "Keep_alive_together_engraver"
      \override Parentheses.font-size = #-2
      \override TextScript.font-shape = #'italic
      \override TextScript.font-size = #-1
    }
  }
  \midi {
    \tempo 2 = 116
  }
}
