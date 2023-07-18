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
    maintainerEmail = "davide.madrisan@gmail.com"
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

dimin = { \override TextSpanner.bound-details.left.text = \markup { \italic "dimin.  " } }
naked = { \once\omit Flag \once\omit Stem }

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
    a'32[(_\markup { "cresc." } bes a bes]) c16. c32
  | c4 f, \stemUp\slurDown \appoggiatura { g16 a } \slurNeutral\stemNeutral bes8\mf a\dimin
  %15
  | \override Staff.TextSpanner.extra-offset = #'(0 . -0.5)
    r_\startTextSpan g r f r e\stopTextSpan
  | f2.(\p
  | fis8)[ ees']( d4) r8 fis,
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
  | s2.
  | s2.
  | s2.
  | s2.
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
    a16[( d]) s8
  | \slurUp g,16[(^\< a bes a]) <e g>[\!\> f e d] cis[( d e f])
  | \autoBeamOff
    \once\shape #'((( 0.5 . 0.8) (0 . 0.8) (0 . 1) (-1 . 0.2))) Slur
    f\!_( \naked a) s8 \naked e16( g) s8 \naked d16( a') s8
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
  | g[ bes] s8 f16[ a] s8 e16[ g] s8
  | \naked a,16( a') s8 \naked <a, c>16( a') s8 \naked <a, c>16( a') s8
  | \naked <a, c>16( a') s8 \naked <a, c>16( a') s8 \naked <a, c>16( a') s8
    \autoBeamOn
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
  | s2.
  | s2.
  | s2.
  | s2.
  \fine
}

Tenor = \context Voice = "three" \relative c' {
  \voiceThree
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \slurUp\stemDown
  %1
  | \autoBeamOff <a d>16^(_\markup {
      \hspace #-3 \dynamic pp
    } \hideNotes f') \unHideNotes \autoBeamOn
    <d f>[( a]) s8 <f' a>16[( d]) f s <a d>[( f])
  | \slurDown e16[ f g f] \hideNotes e( \unHideNotes d[ cis bes]) a[ bes cis d]
  | \slurUp d16[ a'] <f a>[( d]) <cis e> s <e g>[( cis]) d s <f a>[( d])
  | \autoBeamOff
    <cis e>( \hideNotes bes') \unHideNotes <e, bes'>[( cis])
    d( \hideNotes a') \unHideNotes <f a>[( d])
    <cis e>( \hideNotes a') \unHideNotes <e a>[( cis])
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
  | d_( \naked bes') <g bes>[( d]) c_( \naked a') <f a>[( c]) bes_( \naked g') <e g>[( bes])
  | a[ c] <c a'>[( a]) <a c> s <c a'>[( a]) <a c> s <c a'>[( a])
  | <a c> s <c a'>[( <a fis'>]) <a c> s <c a'>[( <a fis'>]) <a c> s <c a'>[( <a fis'>])
    \autoBeamOn
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
  | s2.
  | s2.
  | s2.
  | s2.
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
  | bes2 c4
  | d2 e8 f
  %15
  | bes4 c c,
  | <f, c'> f' ees
  | d d d
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
  | s2.
  | s2.
  | s2.
  | s2.
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
  | s4\sustainOff
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
    \tempo 4 = 100
  }
}
