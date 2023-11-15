Global = {
  \key b \minor
  \time 9/16
  \include "../global.ly"
}

grayTextColor = #(x11-color "dimgray")
staffLower = { \change Staff = "lower" \stemUp\tieUp }
staffUpper = { \change Staff = "upper" \stemDown\tieDown }

voiceOneOssia = \relative c'' {
  %1
  | \stopStaff
    s1*9/16*36
  %37
  | \startStaff
    \key b \minor
    << {
      \stemUp fis16 g e d8.^~
      \set baseMoment = #(ly:make-moment 1/16)
      \set subdivideBeams = ##t
      \tuplet 3/2 { d32 cis d }
      \tuplet 3/2 { cis d cis }
      \set subdivideBeams = ##f
      b16
    } \\ {
      b4. ais8.
    } >>
    \stopStaff
}

voiceThreeOssia = \relative c { }

VoiceOne = \context Voice = "one" \relative c'' {
  \voiceOne
  \override MultiMeasureRest.staff-position = #2
  \set baseMoment = #(ly:make-moment 1/16)
  %1
  | \stemNeutral\tieNeutral b16[ fis fis] g[ fis fis] b[ fis fis]
  | cis'[ fis, fis] g[ fis fis] cis'[ fis, fis]
  | \set subdivideBeams = ##t
    d'32[ b d fis b fis] d[ fis d b d b] fis[ b fis d fis d]
    \set subdivideBeams = ##f
  | \parenthesize b16 r r r b'[ cis] d[ cis b]
  %5
  | ais8.~ ais16[ b cis] b[ cis ais]
  | \set subdivideBeams = ##t
    b32[ fis b d fis d] b[ d b fis b fis] d[ fis d b d b]
    \set subdivideBeams = ##f
  | \stemUp\tieUp d'4.~ d8.~
  | d16[ b b] cis[ b b] e[ b b]
  | cis4.~ cis8.~
  %10
  | cis16[ a a] b[ a a] d[ a a]
  | \set subdivideBeams = ##t
    b32[ d b g b g] e8. e'32[ g e cis e cis]
  | a[ cis a fis a fis] d8. d'32[ fis d b d b]
  | g[ b g e g e] cis[ e cis a cis a]
    \set subdivideBeams = ##f
    a'16[ fis g]
  | fis8. r r
  %15
  | R1*9/16
  | R1*9/16
  | a16[ e e] fis[ e e] a[ e e]
  | b'[ e, e] fis[ e e] b'[ e, e]
  | \set subdivideBeams = ##t
    \stemNeutral cis'32[ a cis e a fis] dis[ fis dis b dis b] fis[ b fis dis fis dis]
    \set subdivideBeams = ##f
  %20
  | \stemUp\tieUp e8. r g~
  | g16[ e e] fis[ e e] a[ e e]
  | fis4.~ fis8.~
  | fis16[ d d] e[ d d] g[ d d]
  | e4.~ e8.~
  %25
  | e16[ cis cis] \stemUp d[ cis cis] fis[ cis cis]
  | \set subdivideBeams = ##t
    \stemNeutral d32[ b d fis d fis] b[ fis b d b d] g8.
  | cis,,32[ a cis e cis e] a[ e a cis a cis] fis8.
  | b,,32[ g b d b d] g[ d g b g b] e8.~
    \set subdivideBeams = ##f
  | e16[ fis, fis] g[ fis fis] e'[ fis, fis]
  %30
  | \stemUp d'4.~ d8.~
  | d16[ b b] c[ b b] g'[ b, b]
  | ais8. fis'4.\fermata~
  | \set subdivideBeams = ##t
    \stemNeutral fis32[ b, d fis b fis] d[ fis d b d b] fis[ b fis d fis d]
    \set subdivideBeams = ##f
  | \stemUp d'4.~ d8.~
  %35
  | d16[ cis cis] gis'[ cis, cis] d[ cis cis]
  | e[ cis cis] ais'[ cis, d] e[ d cis]
  | fis[ g e] d8.( cis8)[\trill b16]
  | b2.*9/16\fermata
    \fine
}

VoiceTwo = \context Voice = "two" \relative c'' {
  \voiceTwo
  \override MultiMeasureRest.staff-position = #-6
  \stemDown\tieDown
  \set baseMoment = #(ly:make-moment 1/16)
  \mergeDifferentlyDottedOn
  %1
  | s1*9/16*6
  | b16 fis fis g fis fis b fis fis
  | gis4.~ gis8.
  | a16[ e e] fis[ e e] a[ e e]
  %10
  | fis4.~ fis8.
  | g16 r r r8. r8.
  | R1*9/16
  | \override MultiMeasureRest.staff-position = #-12
    R1*9/16
  %15
  | d16[ a a] b[ a a] d[ a a]
  | e'[ a, a] b[ a a] e'[ a, a]
  | \set subdivideBeams = ##t
    fis'32 d fis a d b gis b gis e gis e b[ e b gis] \staffLower b gis
    \set subdivideBeams = ##f
  | e8. b'16\rest a b cis b a
  | gis8.~ gis16 a b a b gis
  %20
  | a8.~ a16 b c b c a
  | \staffUpper e' b b c b b e b b
  | cis!4.~ cis8.~
  | cis16 a a b a a d a a
  | b4.~ b8.~
  %25
  | b16 \staffLower gis gis a gis gis cis gis gis
  | \staffUpper ais4.~ ais8.
  | b16 g\rest g\rest g8.\rest g8.\rest
  | \override MultiMeasureRest.staff-position = #-10
  | R1*9/16*3
  %31
  | \stemDown fis'16 b, b d b b fis' b, b
  | g'4.~ g8.
  | fis8. ais!4.
  | \override MultiMeasureRest.staff-position = #-12
    R1*9/16
  %35
  | b4.~ b8.~
  | b4.~ b8.
  | ais8. r16 ais b cis b ais
  | b4. ais8.
  | b2.*9/16
}

VoiceThree = \context Voice = "three" \relative c {
  \voiceThree
  \override MultiMeasureRest.staff-position = #-4
  \override Rest.staff-position = #0
  \stemNeutral\tieNeutral
  \set baseMoment = #(ly:make-moment 1/16)
  %1
  | b8. r16 b'[ cis] d[ cis b]
  | ais8.~ ais16[ b cis] b[ cis ais]
  | b8. r r
  | b16[ fis fis] g[ fis fis] b[ fis fis]
  %5
  | cis'[ fis, fis] g[ fis fis] cis'[ fis, fis]
  | \set subdivideBeams = ##t
    \clef treble d'32[ b d fis b fis] d[ fis d b d b] \clef bass fis[ b fis d fis d]
    \set subdivideBeams = ##f
  | b8. r16 b'[ cis] d[ cis b]
  | e8. r16 e,[ fis] gis[ fis e]
  | a8. r16 a,[ b] cis[ b a]
  %10
  | d8. r16 d,[ e] fis[ e d]
  | \set subdivideBeams = ##t
    g8. g'32[ b g e g e] cis[ e cis a cis a]
  | fis8. fis'32[ a fis d fis d] b[ d b g b g]
  | e8. e'32[ g e cis e cis] a[ cis a fis a fis]
    \set subdivideBeams = ##f
  | d8. r16 d[ e] fis[ e d]
  %15
  | cis8. r16 a'[ b] cis[ b a]
  | d8.~ d16[ e fis] e[ fis d]
  | \stemDown cis8. b\rest b\rest
  | e c\rest c\rest
  | a fis'4.
  %20
  | g8. r16 e[ fis] g[ fis e]
  | a8. r16 \stemUp a,[ b] cis[ b a] \stemDown
  | d8. r16 d[ e] fis[ e d]
  | g8. r16 g[ fis] e[ fis g]
  | cis,8. r16 cis[ b] ais[ b cis]
  %25
  | fis,8. r16 fis'[ e] d[ e fis]
  | \set subdivideBeams = ##t
    b,8. d32[ b d fis d fis] b[ g b e b e]
  | a8. \stemUp cis,,32[ a cis e cis e] \stemDown a[ fis a d a d]
  | g[ b g d g d] b[ d b g b g] e[ g e cis e cis]
    \set subdivideBeams = ##f
  | \stemUp ais8.~ \tieDown ais16[ b cis] fis,[ b ais]
  %30
  | b8. r b
  | \stemDown e4.~ \tieUp e8.~
  | e8.~ e4.^\fermata
  | d8 r16 r8. r8.
  | \set subdivideBeams = ##t
    b'32[ g b d g d] b[ d b g b g] d[ g d b d b]
    \set subdivideBeams = ##f
  %35
  | \stemUp eis,8. r r
  | fis \stemDown r16 e'[ fis] g[ fis e]
  | d8[ e16] fis8[ e16] \stemUp fis8[ fis,16]
  | b2.*9/16\fermata
    \fine
}

\score {
  <<
  \new Staff = "ossiaupper" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
  }
  { \voiceOneOssia }
  \new PianoStaff {
    \set Score.connectArpeggios = ##t
    <<
      \accidentalStyle Score.piano
      \context Staff = "upper" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef treble
        \VoiceOne
        \VoiceTwo
      >>
      \context Staff = "lower" <<
        \set Staff.midiInstrument = #"acoustic grand"
        \Global
        \clef bass
        \VoiceThree
      >>
    >>
  }
  \new Staff = "ossialower" \with {
    \include "../ossiasetup.ly"
    \hide Clef
    \remove Time_signature_engraver
    \clef bass
  }
  { \voiceThreeOssia }
  >>
  \header {
    composer = "Johann Sebastian Bach"
    opus = "BWV 801"
    title = \markup { "Sinfonia XV " \char ##x00b7 " h-Moll" }
    subtitle = ##f
  }
  \layout {
    \context {
      \PianoStaff
      % More space between staves in the same PianoStaff
      %\override StaffGrouper.staff-staff-spacing.minimum-distance = 12
    }
  }
  \midi {
    \tempo 8. = 84
  }
}
