\version "2.24.1"

\include "./covercolor.ly"

\header {
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
  annotate-spacing = ##f
  bottom-margin = 5\mm
  first-page-number = 0
  indent = 0.0
% last-bottom-spacing.padding = #2
  line-width = 18.3\cm
  markup-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  print-all-headers = ##t
  ragged-last-bottom = ##f
  ragged-bottom = ##f
  system-system-spacing =
     #'((basic-distance . 2)
        (minimum-distance . 1)
        (padding . 2)
        (stretchability . 20))
  top-margin = 8\mm
}

\bookpart {
  \header {
    maintainer      = "Davide Madrisan"
    maintainerEmail = "d.madrisan@proton.me"
  }
  \include "header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup {
    \with-dimensions #'(0 . 0) #'(0 . 0)
    \with-color \coverColor
    \filled-box #'(-200 . 200) #'(-200 . 200) #0
  }
  \markup {
    \fill-line {
      \center-column {
        \null\null\null
        \null\null\null
        \line { \abs-fontsize #30 \bold "Christoph Willibald" }
        \null
        \line { \abs-fontsize #75 \bold "Gluck" }
        \null\null
        \fill-line { \draw-hline }
        \null\null\null
        \line \abs-fontsize #33 \bold { "Mélodie de Gluck" }
        \null\null
        \line \abs-fontsize #20 \italic { "depuis" }
        \null
        \line \abs-fontsize #26 \bold { "Orfeo ed Euridice" }
        \null\null\null
        \null\null\null
        \line \abs-fontsize #20 \italic { "Transcrite pour Piano par" }
        \null\null
        \line \abs-fontsize #30 \bold { "Giovanni Sgambati" }
        \null\null
        \null\null
      }
    }
  }

  \include "logo.ly"

  \markup {
    \fill-line {
      \center-column {
        \null\null\null\null
        \fill-line \abs-fontsize #10 {
          \concat {
            "Based on the score Mainz: B. Schott's Söhne, (ca.1878)"
          }
        }
        \null\null
      }
    }
  }
}

Global = {
  \key d \minor
  \time 3/4
  \include "global.ly"
}

dimin = { \override TextSpanner.bound-details.left.text = \markup { \italic\small "dimin.  " } }
naked = { \once\omit Flag \once\omit Stem }
perdendosi = {
  \override TextSpanner.bound-details.left.text = \markup { \italic\small "perdendosi  " }
}

Sopran = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral\slurNeutral\tieNeutral
  \tempo "Lento"
  %1
  | f2( \grace { \stemUp e16 f g } \stemNeutral f8.e32 d)
  | d4( cis) r
  | a'2 \slurDown\stemUp \acciaccatura bes8 \slurNeutral\stemNeutral a4
  | bes(\> a)\! r8 r32 cis( d e)
  %5
  | d4.\mf cis8( d gis,)
  | \slurDown\stemUp \acciaccatura gis8 \slurNeutral\stemNeutral a2 r8 r32 cis( d e)
  | d4~ d16 cis d cis d8. gis,16
  | a4~ a16 r
    \once\override Hairpin.rotation = #'(3 -1 0)
    a,32\(\< b cis d e[ f g a] b[ cis d e]\!
  | f4.\) e16( d) c8.[( bes16])
  %10
  | bes4( a) r
  | \slurDown\stemUp \acciaccatura b8 \stemNeutral c8 r
    \slurDown\stemUp \acciaccatura cis \stemNeutral d8. bes16
    \slurDown\stemUp \acciaccatura a \stemNeutral g8 f
  | \slurNeutral e4 r a32[(\p bes a bes]) c16. c32
  | c4( d,)
    \override Staff.TextScript.extra-offset = #'(0 . -1)
    a'32[(_\markup { \small "cresc." } bes a bes]) c16. c32
  | c4 f, \stemUp\slurDown \appoggiatura { g16 a } \slurNeutral\stemNeutral bes8\mf a\dimin
  %15
  | \once\override Staff.TextSpanner.extra-offset = #'(0 . -0.5)
    r_\startTextSpan g r f r e\stopTextSpan
  | f2.(\p
  | fis8)[ ees']( d4) r8 fis,
  | g2.(
  | gis8)_\markup { \small "dolce" } f'( e4) r8 gis,
  %20
  | \slurDown\stemUp \acciaccatura gis8 \slurNeutral\stemNeutral a4 r4 f32[(\pp g f g]) a16.[ a32]
  | a4( bes,) f'32[(_\markup { \small "cresc." } g f g]) a16.[ a32]
  | a4( d,) f32[( g f g]) a16.[ a32]
  | cis,16[(\f e g f]) e[( g bes a]) g[( cis e d])
  | cis4 r r
  %25
  | d16[(_\markup { \small "dolciss." } e f32 e d16]) d8.[( c16] bes8[ a])
  | g16[( a bes32 a g16])\< g8.[( f16] e16[ d cis8])
  | d8.\!\mf\>( e16) f4( e8.) d16]
  | d4\! r f32[(\pp g f g]) a16. a32
  | a4( bes,) f'32[(_\markup { \small "cresc." } g f g]) a16.[ a32]
  %30
  | a4( d,) f32[( g f g]) a16.[ a32]
  | cis,16[(\f e g f]) e[( g bes a]) g[( cis e d])
  | cis4 r r
  | d16[(_\markup { \small "dolciss." } e f32 e d16]) d8.[( c16] bes8[ a])
  | g16[( a bes32\< a g16]) g8.[( f16] e16[ d cis8])
  %35
  | d8.(\!\mf\> e16) f4( e8.)_\markup { \hspace #-4 \small "un poco rit." } d16]
  | d4\! r r
  | R1*3/4
  | R1*3/4\fermata
  \fine
}

Alto = \context Voice = "two" \relative c' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \slurDown\stemUp
  %1
  | s16 f s8 <d f>16[( a']) s8
    \once\shape #'((( 0.5 . 0.8) (0 . 0.8) (0 . 0.5) (0 . 0.3))) Slur
    a16[( d]) <a d>[( f])
  | \slurUp <e g>16[(^\< <f a> <g bes> <f a>]) <e g>[\!\> <d f> e d] cis[( d e f])
  | \autoBeamOff
    f\![( a]) s8 \naked e16( g) s8 \naked d16( a') s8
  | s16 bes s8 s16 a s8 s16 a s8
  %5
  | \naked gis16( d') s4. \naked d,16( d') s8
  | \naked c,16( cis') cis( \naked cis,) \naked e( cis') s8 \naked e,16( cis') s8
  | \naked gis16( d') s4. \naked d,16( d') s8
  | \naked cis,16( cis') s8 s2
  | \naked d,16( d') s8 <f, a>16[_( d']) s8 s16 c s8
  %10
  | \naked g16( bes) s8 a16[ c] s8 a16[ c] s8
  | s16 <f, c'> s8 s16 <f d'> s8 s16 g16 s8
  | s16 g s8 <g, e'>16[_( g']) s4.
  | \naked d16( a') s4. \naked f16( f') s8
  | \naked f,16( f') s4. \naked g,16( c) c( \naked <f, a>)
  %15
  | s2 e16[ g] s8
  | \naked a,16( a') s8 \naked <a, c>16( a') s8 \naked <a, c>16( a') s8
  | \naked <a, c>16( a') s8 \naked <a, c>16( a') s8 \naked <a, c>16( a') s8
  | \naked bes,16( bes')^\< s8 \naked <bes, d>16( bes') s8 \naked <b, d>16( b') s8
  | \repeat unfold 2 { \naked <b, d>16\!( b') s8 } \naked <b, d>16\!( b') s8
  %20
  | \naked cis,16( cis')^\> s8 \naked <cis, e>16( cis') s8\! a16[_( d]) s8
  | \repeat unfold 2 { bes16[_( <d f>]) s8 } \naked <d, f>16( d') s8
  | \naked d,16( d') s4. \naked d,16( d') s8
  | bes8 4 4 8
  | \naked <e, g>16( \autoBeamOn cis' e d) cis( d e d) cis(_\markup {
      \hspace #-0.8 \small "un poco rit."
    } bes a g)
  %25
  | \autoBeamOff
    s4 \naked <d a'>16( d') s8 \naked d,16( c') s8
  | bes16[ d] s8 bes16[ d] s8 \naked <e, g>16( bes') s8
  | \naked <d, f>16( b') s8 \naked d,16( <f d'>) q[( a]) s <e cis'> q[( a])
  | \slurDown f16[( a]) s8 <f a>16[( d')] s8 a16[( d]) s8
  | \repeat unfold 2 { bes16[_( <d f>]) s8 } \naked <d, f>16^( d') s8
  %30
  | \slurUp \naked d,16( d') s4. \naked d,16( d') s8
  | bes8 s2 s8
  | \naked <e, g>16( \autoBeamOn cis' e d) cis( d e d) cis(^\markup {
      \hspace #-0.4 \small "un poco rit."
    } bes a g)
  | \autoBeamOff
    s4 \naked <d a'>16( d') s8 \naked d,16( c') s8
  | bes16[ d] s8 bes16[ d] s8 \naked <e, g>16( bes') s8
  %35
  | \naked <d, f>16( b') s8 \naked d,16( <f d'>) s8 \naked cis16( <e cis'>) s8
  | \autoBeamOn
    \slurDown f16( a) s8 <a, d>16( f') s8 \clef bass <f, a>16( d') s8
  | \repeat unfold 3 { <d, f>16( a') s8 }
  | s2.
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \slurUp\stemDown
  %1
  | \autoBeamOff <a d>16^(_\markup { \hspace #-3 \dynamic pp  } \naked f')
    \autoBeamOn <d f>[( a]) s8 <f' a>16[( d]) f s8.
  | \slurDown s4 \naked e16( s cis[ bes]) a[ bes cis d]
  | \slurUp d16 s <f a>[( d]) <cis e> s <e g>[( cis]) d s <f a>[( d])
  | \autoBeamOff
    <cis e>( \naked bes') <e, bes'>[( cis])
    d( \naked a') <f a>[( d])
    <cis e>( \naked a') <e a>[( cis])
  %5
  | <d gis>[ f] <f d'>[( <d gis>]) q[( <f d'>]) q[( <d gis>]) d[ f] <f d'>[( d])
  | cis[ e] e[ cis] <cis e> s <e cis'>[( cis]) <cis e> s <e cis'>[( <cis a'>])
  | <d gis>16[ f] <f d'>[( <d gis>]) q[( <f d'>]) q[( <d gis>]) d[ f] <f d'>[( d])
  | cis[ e] <e cis'>[( cis]) <cis e>[( cis']) <e, cis'>[( cis]) <cis e>[( cis']) <e, cis'>[( cis])
  | d[ a'] <a d>[( f]) s8 <a d>16[( f]) g( \naked c) <g c>[( e])
  %10
  | <c g'> \naked bes' <g bes>[( <f a>]) c_( \naked c') <a c>[( f]) c_( \naked c') <a c>[( f])
  | a,( \naked <f' c'>) <f c'>[( <c a'>]) bes( \naked <f' d'>) <f d'>[( d])
    <g, d'>( \naked g') <d g>[( b])
  | <g e'>( \naked g') <e g>[( g,]) s8 <e' g>16[( c]) c[( f]) <f a>[( c])
  | d[ f] <f a>[( d]) <d f>[( a']) <f a>[( d]) f[ a] <a f'>[( f])
  | f[ a] <a f'>[( f]) <f a>[( f']) <a, f'>[( f]) <c g'> s8 <f a>16
  %15
  | <d g>[_( bes']) <g bes>[( d]) <c f>_([ a')] <f a>[( c]) bes_( \naked g') <e g>[( bes])
  | a[ c] <c a'>[( a]) <a c> s <c a'>[( a]) <a c> s <c a'>[( a])
  | <a c> s <c a'>[( <a fis'>]) <a c> s <c a'>[( <a fis'>]) <a c> s <c a'>[( <a fis'>])
  | bes[ d] <d bes'>[( bes]) <bes d> s <d bes'>[( bes]) <b d> s <d b'>[( b])
  | \repeat unfold 3 { <b d> s <d b'>[( <b gis'>]) }
  %20
  | cis[ e] <e cis'>[( cis]) <cis e> s <e cis'>[( cis]) s8 <d' f>16[( a)]
  | s8 <d f>16[( bes]) s8 <d f>16[( bes]) <d, f>16 s <f d'>[( d])
  | \repeat unfold 3 { d[ f ] <f d'>[( d]) }
  | <e g>8 q4 q q8
  | q16\p s
    \autoBeamOn
    \override Hairpin.Y-offset = #-5
    g[ f]\> e f g f e g f e
    \revert Hairpin.Y-offset
  %25
  | \autoBeamOff
    <d f>[(\!\pp^\markup { \small "a tempo" } a']) <a d>[( d,]) <d a'> s <a' d>[( d,]) d
    s <a' c>[( d,])
  | \repeat unfold 2 { d_( \naked d') <bes d>[( d,]) } <e g> s <g bes>[( e])
  | <d f> s <f b>[( d]) d s s d cis s s cis
  | s8 <f a>16[( d]) s8 <a' d>16[( f]) s8 <d' f>16[( a])
  | s8 <d f>16[( bes]) s8 <d f>16[( bes]) <d, f>16 s <f d'>[( d])
  %30
  | d[ f] <f d'>[( d]) d[( f]) <f d'>[( d]) d[ f] <f d'>[( d])
  | <e g bes>8 q4 q q8
  | <e g>16\p s
    \autoBeamOn
    \override Hairpin.Y-offset = #-5
    g[ f]\> e f g f e g f e
    \revert Hairpin.Y-offset
  | \autoBeamOff
    <d f>[(\!\pp^\markup { \small "a tempo" } a']) <a d>[( d,]) <d a'> s <a' d>[( d,])
    d s <a' c>[( d,])
  | \repeat unfold 2 { d_( \naked d') <bes d>[( d,]) } <e g> s <g bes>[( e])
  %35
  | <d f> s <f b>[( d]) d s <f d'>[( <d a'>]) cis s <e cis'>[( <cis a'>])
  | \autoBeamOn
    s8 <f a>16( d) s8 <d f>16( a) \clef bass s8 <a d>16( f)
  | s8 <f a>16( d)\perdendosi s8_\startTextSpan <f a>16( d) s8 <f a>16( d)
  | \stemUp <d f>4\stopTextSpan \override Script.extra-offset = #'(1.7 . 0) r\fermata r
  \fine
}

Bass = \context Voice = "four" \relative c {
  \voiceFour
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \stemNeutral
  %1
  | d4 d, d'
  | e a, r
  | d e f
  | g f a
  %5
  | bes r bes,
  | a2 a'4
  | bes r bes,
  | a2 r4
  | d d, e'
  %10
  | f f, r
  | a bes b
  | c c, a'
  | bes2  c4
  | d2 e8 f
  %15
  | bes4 c c,
  | <f, c'> f' ees
  | d d d
  | <g, d'> g' f
  | e e e
  %20
  | <a, e'> a' f^\markup { \hspace #-1.8 \small "un poco marcato" }
  | g2 a4
  | bes2 a4
  | g g g
  | g2 r4
  %25
  | f f fis
  | g g g
  | gis a a,
  | d d, f'
  | g2 a4
  %30
  | bes2 a4
  | g g g
  | g2 r4
  | f f fis
  | g g g
  %35
  | gis a a,
  | d r r
  | r a f
  | d \override Script.extra-offset = #'(1.7 . 0) r^\fermata r
  \fine
}

Sustain = {
  \set Staff.pedalSustainStyle = #'mixed
  %1
  | s4\sustainOn s2
  | s4\sustainOff s2
  | s4\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn
  %5
  | s4\sustainOff\sustainOn s2
  | s4\sustainOff\sustainOn s2
  | s4\sustainOff\sustainOn s2
  | s4\sustainOff\sustainOn s2
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  %10
  | s4\sustainOff\sustainOn s4\sustainOff s4
  | s4\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  %15
  | s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s2
  | s4\sustainOff\sustainOn s2
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s2
  %20
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s2
  | s4\sustainOff s2
  %25
  | s4\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  %30
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s2
  | s4\sustainOff s2
  | s4\sustainOn s4 s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s4 s4\sustainOff\sustainOn
  %35
  | s4\sustainOff\sustainOn s4\sustainOff\sustainOn s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s2
  | s2.
  | s4 s\sustainOff s
}

\score {
  <<
    \accidentalStyle Score.piano
    \new PianoStaff <<
      \new Staff = "upper" <<
        \clef treble
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice {
          \Global
          \Sopran
        }
      >>
      \new Staff = "medium" <<
        \clef treble
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice {
          \Global
          \Alto
        }
        \new Voice {
          \Global
          \Tenor
        }
      >>
      \new Staff = "lower" <<
        \clef bass
        \set Staff.midiInstrument = #"acoustic grand"
        \new Voice {
          \Global
          \Bass
        }
        \new Voice {
          \Sustain
        }
      >>
    >>
  >>
  \header {
    composer = " " % "Christoph Willibald Gluck"
    opus = #f
    title = "Mélodie de Gluck"
    subtitle = \markup {
      \normal-text\italic "à Sua Eccellenza Donna Laura Minghetti, nata Acton"
    }
    arranger = \markup { \italic "Transcrite par G. Sgambati" }
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 14
      \override TextScript.font-shape = #'italic
    }
  }
  \midi {
    \tempo 8 = 68
  }
}
