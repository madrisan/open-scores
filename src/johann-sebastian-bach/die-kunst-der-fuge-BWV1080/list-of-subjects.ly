\include "./macros.ly"

commonSettings = {
  \time 4/4
  \key d \minor
  %\once\override Staff.TimeSignature.stencil = ##f
  \override Score.BarNumber.break-visibility = ##(#f #f #f)
  \override Staff.NoteHead.style = #'baroque
}

CommonSubjectI = {
  \commonSettings
  | d'2^\markup \abs-fontsize #8 \italic { "main subject in « The Art of Fugue »" }
    a'
  | f d | cis d4 e | f2~ f8 g f e | d4 s
}
CommonSubjectII = {
  \commonSettings
  | d'2^\markup \abs-fontsize #8 \italic { "main subject in a 'French' style dotted rhythm" }
    a'
  | f d | cis d4 e | f2~ f8. g16 f8. e16 | d4 s
}
CommonSubjectIII = {
  \commonSettings
  | d''2^\markup \abs-fontsize #8 \italic { "main subject in inversion form" }
    a
  | c e | f e4 d | cis2~ cis8 a b cis | d4 s
}
CommonSubjectIV = {
  \commonSettings
  | a'2^\markup \abs-fontsize #8 \italic { "main subject in inversion, employing counter-subjects" }
    d,
  | f a | bes a4 g | f2~ f8 e f g | a4 s
}
CommonSubjectV = {
  \commonSettings
  | \red a'2^\markup \abs-fontsize #8 \italic  {
      "14-notes version,"
      "also present in recto form and in halving/doubling note lengths in VII"
    }
    \once\override Stem.length = #6 \red d,4. e8
  | \red f4. g8 \red a2
  | \red bes \red a4. \red g8
  | \red \red f2~ \red f8 \red e \red f \red g
  | \red a4 s
}

CommonSubjectVI = {
  \commonSettings
  | a'2^\markup \abs-fontsize #8 \italic  {
      "dotted rhythm of V, recto and inversus, also present in halving note lengths"
      "without final dotted rhythm"
    }
    \once\override Stem.length = #5 d,4. e8
  | f4. g8 a2 | bes a4. g8 | f2~ f8. e16 f8. g16 | a8 s4.
}

SubjectVIIIFirst = \relative {
  \commonSettings
  | r2^\markup \abs-fontsize #8 \italic { "first subject" }
    d''
  | c4 f b, bes | a d g,2^\prallmordent_\markup \abs-fontsize #8 \italic { "| the short version ends here" }
  | f4 g a8 g a4 | d,4 s
}
SubjectVIIISecond = \relative {
  \commonSettings
  | s2^\markup \abs-fontsize #8 \italic { "second subject" }
    r4 bes'~
  | bes8 gis a a a fis g g | g e f f f e d cis | d s4.
}
SubjectVIIIThird = \relative {
  \commonSettings
  | r4^\markup \abs-fontsize #8 \italic {
      "third subject (an inverted and rhythmically abstracted version of the proncipal Art of Fugue theme)"
    }
    \red a' \red d, e | r \red f g \red a | r \red bes \red a \red g | r \red { f8 e f4 g | a2 } % s
}

SubjectIXFirst = {
  \commonSettings
  | r4^\markup \abs-fontsize #8 \italic {
      "first subject"
    }
    d' d'2~ | d4 cis8 b a g f e | d cis d e f d e f | g fis g a bes g a bes | bes4 a r8 a g a
  | bes d c bes c bes a g | f bes a g a g f e | d s
}
SubjectIXSecond = {
  \commonSettings
  | d'1*1/2^\markup \abs-fontsize #8 \italic {
      "second subject (main theme with doubled note length)"
    }
    a' | f d | cis d2*1/2 e | f1*1/2~ f4*1/2 g f e | d2*1/2 s1*1/2
}

SubjectXFirst = {
  \commonSettings
  | r4^\markup \abs-fontsize #8 \italic {
      "first subject"
    }
    cis' d a | r f' e a | d,8 e f g a bes c4~ | c8 bes a g fis d g4
}
SubjectXSecond = {
  \commonSettings
  | a'2^\markup \abs-fontsize #8 \italic {
      "second subject (variant of the inverted 14-notes main theme)"
    }
    d,4. e8 | f4. g8 a2 | bes a4. g8 | f2~ f8 e fis gis | a4 s2
}

SubjectXIFirst = {
  \commonSettings
  | r4^\markup \abs-fontsize #8 \italic {
      "first subject (inversion of VIII.3)"
    }
    d' a' g
  | r f e d | r cis d e | r f8 g f4 e | d4 s
}
SubjectXISecond = {
  \commonSettings
  | r2^\markup \abs-fontsize #8 \italic {
      "second subject (inversion of VIII.1)"
    }
    a'
  | bes4 f c' cis | d a e'2 | f4 e d8 e d4 | a'4 s
}
SubjectXIThird = {
  \commonSettings
  | s2^\markup \abs-fontsize #8 \italic {
      "third subject (inversion of VIII.2)"
    }
    r4 ees'~
  | ees8 d f f f e g g | g fis a a a gis b b | b a b cis d s4. | s2
}

SubjectXIIFirst = {
  \commonSettings
  | \time 3/2
    d'2^\markup \abs-fontsize #8 \italic {
      "first subject (a ritmical variation of the main theme)"
    }
    a'1
  | f2 d1 | cis2 d e | f2. g4 f e | d2 s4
}
SubjectXIISecond = {
  \commonSettings
  | \time 3/2
    d'8^\markup \abs-fontsize #8 \italic { "second subject" }
    e f g a2~ a8 bes a g | f4 e d2. cis8 b | cis2 d2. e4 | f2. g4 f e | d2 s4
}

SubjectXIIIFirst = {
  \commonSettings
  | r2^\markup \abs-fontsize #8 \italic {
      "subject from the rectus (the notes in red correspond to the main subject)"
    }
    r4 \red a' | d \red d,~ \tuplet 3/2 { d8 e f } \tuplet 3/2 { e f g }
  | \omit TupletNumber \tuplet 3/2 { \red f g a } g4~ \tuplet 3/2 { g8 a bes } \tuplet 3/2 { \red a bes c }
  | \tuplet 3/2 { \red bes a g } \red a4~ \tuplet 3/2 { a8 g f } \tuplet 3/2 { \red g f e }
  | \red f8.[ a16 d8. a16] f8.[ \red e16 \red f8. \red g16] | \red a4
}
SubjectXIIISecond = {
  \commonSettings
  | r2^\markup \abs-fontsize #8 \italic {
      "subject from the inversus (the notes in red correspond to the main subject in its inverted form)"
    }
    r4 \red d'' | a \red a'~ \tuplet 3/2 { a8 g f } \tuplet 3/2 { g f e }
  | \omit TupletNumber \tuplet 3/2 { \red f e d } e4~ \tuplet 3/2 { e8 d cis } \tuplet 3/2 { \red d cis b }
  | \tuplet 3/2 { \red cis d e } \red d4~ \tuplet 3/2 { d8 e f } \tuplet 3/2 { \red e f g }
  | \red f8.[ d16 a8. d16] f8.[ \red g16 \red f8. \red e16] | \red d4
}

SubjectXIVFirst = {
  \commonSettings
  | s2^\markup \abs-fontsize #8 \italic { "first subject" }
    d'
  | a'2. g4 | f1 | g | a | d,2 % s
}
SubjectXIVSecond = {
  \commonSettings
  | s4^\markup \abs-fontsize #8 \italic { "second subject" }
    f'8 g f e d cis
  | d a d e f e d f | e a, e' f g f16 e f8 g | a g f g a2~ | a8[ g16 fis g8 a] bes2~ | bes8 a g f e d e g
  | f s % s2.
}
SubjectXIVThird = {
  \commonSettings
  | s2^\markup \abs-fontsize #8 \italic {
      "third subject with the BACH motive (B-flat A C B)"
    }
    bes'
  | a c | b4. cis8 d2~ | d4. cis16 b  cis2 | d % s
}
SubjectXIVFourth = {
  \commonSettings
  | s1^\markup \abs-fontsize #8 \italic {
      "fourth (missing) subject, which can be anything but the main theme"
    }
  | s | s | s | s2
}

CanonI = {
  \commonSettings
  \time 9/16
  | \red a'8.^\markup \abs-fontsize #8 \italic {
      "subject of Canon I in Hypodiapason is based on the main theme in its inverted form (red noted)"
    }
    \red d,16 cis d e d e
  | \red f e f g f g \red a g a
  | \red bes8^. r16 \red a8_. r16 \red g8_. r16
  | \appoggiatura g8 \red f8.~ f8 \red e16 \red f8 \red g16
  | \red a8 s
}
CanonII = {
  \commonSettings
  \time 12/8
  | a'4.^\markup \abs-fontsize #8 \italic {
      "subject of Canon II alla Decima is based again on the inverted main theme (red notes)"
    }
    d,2. f4.~
  | f a2. bes4.~
  | bes a2. g4.~
  | g f~ f4 e8 f4 g8
  | a8 s4
}
CanonIII = {
  \commonSettings
  | \tuplet 6/4 {
      \red d'8[^\markup \abs-fontsize #8 \italic {
        "subject of Canon III alla Duodecima is based on the main theme"
      }
      e d cis d e]
    } \tuplet 6/4 { f[ g f e f g] }
  | \red a2~ a8 g( f e)
  | \red f2~ f8 e( d cis)
  | \red d4 e8( f g a) bes4
  | bes( \red  cis,) r8 a b cis
  | \red d( cis b a) \red e'( cis b a)
  | \red f'( e d4) r8 bes'( a gis)
  | a( f e d) f( e d cis)
  | \red d4 s
}
CanonIVSopran = {
  \commonSettings
  | \red d'8^\markup \abs-fontsize #8 \italic {
      "subject of Canon IV [in Hypodiatessaron] in the sopran is based on the main subject"
     }
     bes' \red a2 g4
  | \red f8 e16 d ees2 \red d4
  | \red cis8_( d16 e!) \red d2 \red e4
  | \red f8 a, \red g'2 \red f8 \red e
  | f16 s8.
}
CanonIVBass = {
  \commonSettings
  \clef bass
  | \red a4^\markup \abs-fontsize #8 \italic {
      "subject in the bass is base on the main theme in its inverted form"
    }
    cis, \red  d2~ \noBreak
  | d e \noBreak
  | \red fis4 g8 a g2~ \noBreak
  | g \red a \noBreak
  | \red bes4 a8 g \red a2~ \noBreak
  | a \red g \noBreak
  | \red f4 d' \red e,2~ \noBreak
  | e \red f4 \red g \noBreak
  | \red f8 s
}

\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    \null
    "List of Subjects"
    \vspace #1
  }
}

\markup \fill-line {
  \center-column \abs-fontsize #12 \smallCaps \bold {
    \null
    "Simple fugues"
    \vspace #0.5
  }
}

\markup \line {
  \hspace #2
  \left-column {
    \score {
      <<
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "I " }
        } \relative \CommonSubjectI
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "II " }
        } \relative \CommonSubjectII
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "III " }
        } \relative \CommonSubjectIII
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "IV " }
        } \relative \CommonSubjectIV
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}

\markup \fill-line {
  \center-column \abs-fontsize #12 \smallCaps \bold {
    \null\null
    "Stretto-Fugues (Counter-Fugues)"
    \vspace #0.5
  }
}

\markup \line {
  \hspace #1
  \left-column {
    \score {
      <<
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold {
            \right-column { "V " \raise #1.8 \line { "VII " } }
          }
        } \relative \CommonSubjectV
        % Contrapunctus VI
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "VI " }
        } \relative \CommonSubjectVI
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}

\markup \fill-line {
  \center-column \abs-fontsize #12 \smallCaps \bold {
    \null\null
    "Double and Triple Fugues"
    \vspace #0.5
  }
}

% Contrapunctus VIII
\markup \line {
  \left-column {
    \score {
      <<
        \new ChoirStaff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "VIII " }
          \override StaffGrouper.staff-staff-spacing = #'(
                      (basic-distance . 0)
                      (padding . 2))
          }
        <<
        \new Staff {
          \new Voice = "subjectviii1" \relative \SubjectVIIIFirst
        }
        \new Staff {
          \new Voice = "subjectviii2" \relative \SubjectVIIISecond
        }
        \new Staff {
          \new Voice = "subjectviii3" \relative \SubjectVIIIThird
        }
        >>
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}

% Contrapunctus IX
\markup \line {
  \hspace #1.4
  \left-column {
    \score {
      <<
        \new ChoirStaff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "IX " }
          \override StaffGrouper.staff-staff-spacing = #'(
                      (basic-distance . 0)
                      (padding . 2))
          }
        <<
        \new Staff {
          \new Voice = "subjectix1" \relative \SubjectIXFirst
        }
        \new Staff {
          \new Voice = "subjectix2" \relative \SubjectIXSecond
        }
        >>
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}

% Contrapunctus X
\markup \line {
  \hspace #2.0
  \left-column {
    \score {
      <<
        \new ChoirStaff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "X " }
          \override StaffGrouper.staff-staff-spacing = #'(
                      (basic-distance . 0)
                      (padding . 2))
          }
        <<
        \new Staff {
          \new Voice = "subjectix1" \relative \SubjectXFirst
        }
        \new Staff {
          \new Voice = "subjectix2" \relative \SubjectXSecond
        }
        >>
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}

% Contrapunctus XI
\markup \line {
  \hspace #1.4
  \left-column {
    \score {
      <<
        \new ChoirStaff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "XI " }
          \override StaffGrouper.staff-staff-spacing = #'(
                      (basic-distance . 0)
                      (padding . 2))
          }
        <<
        \new Staff {
          \new Voice = "subjectxi1" \relative \SubjectXIFirst
        }
        \new Staff {
          \new Voice = "subjectxi2" \relative \SubjectXISecond
        }
        \new Staff {
          \new Voice = "subjectxi3" \relative \SubjectXIThird
        }
        >>
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}

\pageBreak

\markup \fill-line {
  \center-column \abs-fontsize #12 \smallCaps \bold {
    \null\null
    "Mirror-Fugues"
    \vspace #1
  }
}

% Contrapunctus XII
\markup \line {
  \hspace #0.6
  \left-column {
    \score {
      <<
        \new ChoirStaff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "XII " }
          \override StaffGrouper.staff-staff-spacing = #'(
                      (basic-distance . 0)
                      (padding . 2))
          }
        <<
        \new Staff {
          \new Voice = "subjectxii1" \relative \SubjectXIIFirst
        }
        \new Staff {
          \new Voice = "subjectxii2" \relative \SubjectXIISecond
        }
        >>
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}

% Contrapunctus XIII
\markup \line {
  \hspace #-0.2
  \left-column {
    \score {
      <<
        \new ChoirStaff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "XIII " }
          \override StaffGrouper.staff-staff-spacing = #'(
                      (basic-distance . 0)
                      (padding . 2))
          }
        <<
        \new Staff {
          \new Voice = "subjectxiii1" \relative \SubjectXIIIFirst
        }
        \new Staff {
          \new Voice = "subjectxiii2" \relative \SubjectXIIISecond
        }
        >>
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}

% Contrapunctus XIV
\markup \line {
  \hspace #0
  \left-column {
    \score {
      <<
        \new ChoirStaff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "XIV " }
          \override StaffGrouper.staff-staff-spacing = #'(
                      (basic-distance . 0)
                      (padding . 2))
          }
        <<
        \new Staff {
          \new Voice = "subjectxiv1" \relative \SubjectXIVFirst
        }
        \new Staff {
          \new Voice = "subjectxiv2" \relative \SubjectXIVSecond
        }
        \new Staff {
          \new Voice = "subjectxiv3" \relative \SubjectXIVThird
        }
        \new Staff {
          \new Voice = "subjectxiv4" \relative \SubjectXIVFourth
        }
        >>
      >>
      \layout {
        %\context {
        %  \Score
        %  proportionalNotationDuration = #(ly:make-moment 1)
        %}
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
  \vspace #3
}

\markup \fill-line {
  \center-column \abs-fontsize #12 \smallCaps \bold {
    \null\null
    "Canons"
    \vspace #0.5
  }
}

\markup \line {
  \hspace #3.8
  \left-column {
    \score {
      <<
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "I " }
        } \relative \CanonI
      >>
      \layout {
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
  \vspace #2
}

\markup \line {
  \hspace #3
  \left-column {
    \score {
      <<
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "II " }
        } \relative \CanonII
      >>
      \layout {
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
  \vspace #2
}

\markup \line {
  \hspace #2.2
  \left-column {
    \score {
      <<
        \new Staff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "III " }
        } \relative \CanonIII
      >>
      \layout {
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
  \vspace #2
}

\markup \line {
  \hspace #1
  \left-column {
    \vspace #0.5
    \score {
      <<
        \new ChoirStaff \with {
          instrumentName = \markup \abs-fontsize #8 \bold { "IV " }
          \override StaffGrouper.staff-staff-spacing = #'(
                      (basic-distance . 0)
                      (padding . 2))
          }
        <<
        \new Staff {
          \new Voice = "canonivsopran" \relative \CanonIVSopran
        }
        \new Staff {
          \new Voice = "canonivbass" \relative \CanonIVBass
        }
        >>
      >>
      \layout {
        indent = #0
        line-width = #160
        #(layout-set-staff-size 12)
      }
    }
  }
}
