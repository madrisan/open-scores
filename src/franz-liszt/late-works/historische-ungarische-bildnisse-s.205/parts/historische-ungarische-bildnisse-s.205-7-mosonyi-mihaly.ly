Global = {
  \key a \minor
  \time 4/4
  \include "../global.ly"
}

voiceFive  = #(context-spec-music (make-voice-props-set 4)  'Voice)
voiceSix  = #(context-spec-music (make-voice-props-set 5)  'Voice)

Soprano = \context Voice = "one" \relative c {
  \voiceOne
  \stemNeutral\tieNeutral\phrasingSlurNeutral
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \label #'S205vii
  %1
  \tempo "Langsam" 4 = 80
  \clef "bass"
  \partial 2 <gis gis'>2~_>
  | q1~
  | q2 q~_>
  | q1~
  | q2 q~_>
  %5
  | q1^\(
  | q2_> q4.._> q16\)
  | q2...^\( q16
  | q4.. q16 q4.. q16\)
    \break
  | q4\arpeggio\( f' e d
  %10
  | cis d e f
  | gis a bes^\markup { "poco ritard." } cis
  | \clef "treble"
    d e f gis\)
  | \stemUp a4..^\<\arpeggio^\markup {
      "Noch langsamer"
    }
    bes16\! bes2^>
  | a4..^\<\arpeggio bes16\! bes2^>
  %15
  | r2 <gis, d' f b>^>\arpeggio
  | r4 b' b^>( a)
  | gis4.^>^\( fis8 eis fis
    \set crescendoText = \markup { \small\italic { "riten." } }
    \set crescendoSpanner = #'text
    %\override DynamicTextSpanner.style = #'dashed-line
    gis^\< fis
  | e d cis d \once \slurDown \appoggiatura fis8 e4. d8\)\!
    \bar "||"
    \clef "bass"
    \unset crescendoText
    \unset crescendoSpanner
    \key a \major
  | d4.( cis8) cis2
  %20
  | d4.( cis8) cis2
  | r8 d4(^> cis8) r cis^.( r cis^.)
  | s1*2
  | r2 r8 \clef "treble" eis\( fis gisis\)
  %25
  | ais4..^\< b16\! b2^>
  | ais4..^\< b16\! b2^>
  | r2 <a,! dis fis c'>^>
  | r4 <a dis fis cis'>4 <a' cis>4.(^> <gis b>8)
  | <gis b>4.^>_\( <fis a>8 <eis gis>8 <fis a> <gis b> <fis a>
  %30
  | \set crescendoText = \markup { \small\italic { "ritenuto" } }
    \set crescendoSpanner = #'text
    <e gis>^\< <dis fis> <cis e> <dis fis>
    \once\slurDown \acciaccatura a'8 <b, dis gis>4.\fermata <a cis fis>8\)\!
    \unset crescendoText
    \unset crescendoSpanner
    \key bes \major
    \bar "||"
  | ges'4.( f8) <f, f'>2_\sf
  | ges'4.( f8) <f, f'>2_\sf
  | r8 ges'4^>( f8) r <a, des f>_._( r <a es' f>_.)
  | r4 <f bes es f>~ <f bes d f> <f bes c f>
  %35
  | <f 	bes d f>8_. r r4 q8_. r r4
  | r2 r4\fermata
    \bar "||"
    \stemNeutral <bes' bes'>4
    \bar "||"
    \time 5/4
  | \stemUp
    \once\override TextScript.extra-offset = #'(-0.5 . -1)
    <bes des ges bes>4_\markup {
      "dolciss."
    }
    <bes ges' bes>~^- q q^.( q^.)
  | \tieUp ces'2 ces4^- bes8[( aes g aes)]
  | \ottava #1
    des4 des^-~ des des^.( des^.)
  %40
  | \set Staff.connectArpeggios = ##f
    <ges, d'!>2\arpeggio ees'8 d! f[ ees ges ees
  | ces aes]
    \ottava #0
    r4 r ges,4 ees
  | ces aes r\fermata r <gis b e gis>
    \bar "||"
    \key e \major
  | \tieNeutral q4 <gis e' gis>^-~ q q^.( q^.)
  | <b a'>2 a'4^- gis8[( fis eis fis)]
  %45
  | <b, e b'>4 <b gis' b>~^- q <b b'>^.( q^.)
  | <bis bis'>2 <cis cis'>8[( <bis bis'> <dis dis'> <cis cis'>)] <e e'>4~
  | q fis'8[ eis gis fis] a2
  | <ais, ais'>8[\< <gis gis'> <b b'> <ais ais'>]\!
    <cis cis'>[ <bis bis'> <dis dis'> <cis cis'>] \stemDown <e! e'!>[ <dis dis'>
  | <fis fis'> <e e'>]
    \shape #'((0 . 0) (0 . 0) (1 . 3) (0 . -4)) Slur
    <e' gis>^.[( <cis e>^. <ais cis>^.
    \change Staff = "lower" \voiceTwo \stemUp <a,, cis!>])
    <gis b>[^(^. <e gis>^. <cis! e>^. <a cis>^.])
    \bar "||"
    \time 4/4
  %50
  | \clef "treble"
    \shape #'((0 . -3.5) (0 . 0.5) (0 . 0.5) (0 . 0)) Slur
    <ais'' cis>8^.^( <cis e>^.
    \change Staff = "upper" \voiceOne \stemDown
    <e gis>^. <fis ais>^.) <ais cis>4^.^( <cis e>^.)
  | <e gis>2.\fermata r4\fermata
    \bar "||"
    \key a \minor
  | \tempo "Tempo I"
    \stemNeutral r2 r4 r8. \clef "bass" <gis,,,, gis'>16
  | q4.. <gis' gis'>16 q4.. \clef "treble" <gis' gis'>16
  | q8 r r4 r r8. <gis, gis'>16
  %55
  | q4.. <gis' gis'>16 q4.. <gis' gis'>16
  | q8 r \clef "bass" \stemUp gis,,2 s4
  | \tupletNeutral
    s4 \tuplet 6/4 { f,16 gis cis d f gis }
    \tuplet 6/4 { cis \clef "treble" d f gis cis d }
    \stemNeutral \tuplet 6/4 { f gis cis d f gis }
  | <gis, f' gis>8 r \clef "bass" \once\stemUp gis,,2 s4
  | s4 \tuplet 6/4 { f,16 gis cis d f gis }
    \stemUp \tuplet 6/4 { cis \clef "treble" d f gis cis d }
    \stemNeutral \tuplet 6/4 { f gis cis d f gis }
  %60
  | \ottava #1
    \override Beam.positions = #'(-4 . -2.5)
    \repeat tremolo 16 { <gis, f'>32 gis' }
    \ottava #0
  | \repeat tremolo 16 { <gis,, f'>32 gis' }
    \revert Beam.positions
  | r16 <gis, f' gis> q q q q q q q q q q q q q q
  | q8 <cis, cis'>_![ <d d'>_! <e e'>_!] <f f'>^! <fis fis'>^! <g g'>^! <gis gis'>^!
    \break
  | \ottava #1
    \tempo \markup { \normal-text\italic "a tempo" }
    <a' a'>4..^\markup {
      "ten."
    }_\markup {
      \dynamic ff
    }
    <bes bes'>16 q2^^^\markup { "ten." }
  %65
  | <a a'>4.. <bes bes'>16 q4.. q16
  | q4..^> q16 q4..^> q16
  | q4^. q^. q^.
    r
    \bar "||"
    \key b \minor
    \break
  | <b! fis' b!>2.\(_\markup {
      \hspace #0.6 "dolce"
    }
    q4
  | <ais fis' ais>2 <a a'>\)
  %70
  | <a d a'>2.\arpeggio\(_\markup {
      \hspace #0.6 "sempre dolce"
    }
    <g g'>4
  | <fis d' fis>2 <f f'>\)
    \break
  | <ees bes' ees>2. q4
  | <d bes' d>2 <des des'>
    \ottava #0
  | <cis! fis cis'!>2.\arpeggio\( \once\tieNeutral <c c'>4~
  %75
  | q <b b'> <ais ais'> <a a'>\)
    \break
  | fis'4\( dis c b
  | ais a gis g\)
    \bar "||"
    \time 5/4
  | \tieNeutral \once\slurDown fis <a, b fis'>~ q q_.( <a bis fis'>_.)
  | \stemUp g'2^- g4^>( fis8[ e dis e])
  %80
  | \stemNeutral <a, d a'>4 q~ q <a c d a'> <a c ees a>
  | \stemUp\tieUp a'2~( a ais4)
  | <b, d g b>\arpeggio r r2 r4
    \break
    \bar "||"
    \time 4/4
  | r2 <g d' e>\(
  | <a d fis> \tieNeutral <b d g>~
  %85
  | q\) <g d' e>\(
  | <a d fis> \tieNeutral <b d g>\)
  | <a d a'>1
  | <a e' a>
  | <a f' a>
    \break
  %90
  | <a a'>^>
  | <a d a'>
  | <a e' a>
  | <a f' a>
  | <a a'>^>
  %95
  | <a d a'>
  | <a' d a'>
  | \ottava #1
    <a' d fis a>
  | q\fermata
    \fine
}

Alto = \context Voice = "two" \relative c {
  \voiceTwo
  \stemDown\tieDown
  \clef "bass"
  \partial 2 s2
  %1
  | s1*4
  \repeat unfold 2 {
  | \once\override Voice.Rest.X-offset = #-0.35
    c4\rest f e ees
  | d cis d f
  }
  | s1*4
  %13
  | \stemUp \shiftOn d'2~\arpeggio d
  | d~\arpeggio d
  | s1
  | \stemDown
    s4 <d eis> <cis fis>2
  | <a d>1
  | s1
  %19
  | \slurUp
    \override NoteColumn.force-hshift = #1.2
    a4( gis) gis( fis)
  | a4( gis) gis( fis)
  | \revert NoteColumn.force-hshift
    s8 <eis gis>4. s8 <eis a> s <eis b'>
  | \override Rest.staff-position = #0
    \tieNeutral
    r4 <cis fis b cis>~\> <cis fis ais cis>\! <cis fis gis cis>
  | <cis fis ais cis>8^. r r4 q8 r r4
  | s1
  %25
  | \stemUp dis'2~ dis
  | dis~ dis
  | s1*4
  %31
  | \repeat unfold 2 {
      \stemDown
      \shape #'((0.4 . -0.4) (0 . -0.7) (0 . -0.9) (0 . -0.4)) Slur
      des4( c)
      \shape #'((0.6 . -0.6) (0 . -0.5) (0 . -0.6) (0 . -0.3)) Slur
      c( bes)
    }
  | s8 <a c>4. s2
  | s1*3
  %37
  | \stemDown s4 des'~
    \shape #'((0 . 3) (0 . -8) (0 . -4) (0 . -1)) PhrasingSlur
    des8[\( ees des
    \change Staff = "lower" \voiceThree c ees des]\)
  | \change Staff = "upper" \voiceTwo
    f8[( ees ges f~)] f4 r f
  | ges ges~ ges8[( aes ges f aes ges])
  %40
  | ces[( bes des ces~]) <g ces>4 s2
  | s1*5/4*2
  | s4 b,,~ b8[( cis b ais cis b])
  | dis[ cis e dis^~] <b dis>4 b\rest q
  %45
  | s
    \shape #'((0.5 . 0.5) (0 . 0.5) (0 . 0.3) (0.1 . 0.2)) Tie
    e_~ e8([ fis e dis fis e)]
  | fis[( e gis fis]) <e a>4 s
    \once\override Beam.positions = #'(-4.5 . -4.5)
    a8[ gis
  | b a] <fis cis'>4 <gis cis> e'8[ dis fis e]
  | s1*5/4*2
  | s1*6
  %56
  \repeat unfold 2 {
  | s4 <f,, f'>4^( <e e'> <ees gis ees'>)
  | <d d'>8 r s2.
  }
  | s1*18
  | s1*5/4
  %79
  | <a' cis>2~ q4 a\rest a
  | s1*5/4
  | <a c ees fis>1\arpeggio a4\rest
  | s1*5/4
  | s1*7
  %90
  | f'2.( e4)
  | s1*3
  | f2.( e4)
}

Contralto = \context Voice = "three" \relative c' {
  \voiceThree
  \stemDown\tieDown
  \partial 2 s2
  %1
  | s1*12
  | a2~ a4 gis
  | a2~ a4 gis
  | s1*4
  %19
  | eis2 cis
  | eis2 cis
  | s1*4
  %25
  | ais'2~ ais4 gisis
  | ais2~ ais4 gisis
  | s1
  | s2 <cis e>
  | cis s
  | s1
  %31
  | \override NoteColumn.force-hshift = #0.4
    a2 s
  | a s
    \revert NoteColumn.force-hshift
  | s1*4
  | s1*5/4*7
  %44
  | \hideNotes
    \once\omit Stem
    \once\override NoteColumn.force-hshift = #0.4 b2~
    \once\override NoteColumn.force-hshift = #0 b4
    \unHideNotes
    s2
  | s1*5/4*2
  | s2. \stemUp a'4 a
  | \stemDown e' e e s2
}

Tenor = \context Voice = "four" \relative c {
  \voiceFour
  \stemUp
  \override Rest.staff-position = #0
  \partial 2 s2
  %1
  | \ottava #-1
    <f,, f'>8\( <b d> <e, e'> <b' d> <f f'> <b d> <e, e'> <b' d>
  | <f f'> <b d> <e, e'> <b' d>\) s2
  | <dis, dis'>8\( <gis b> <d d'> <gis b> <dis dis'> <gis b> <d d'> <gis b>
  | <dis dis'> <gis b> <d d'> <gis b>\) s2
  %5
  | <cis, cis'>8\( <f gis> <c c'> <f gis> <cis cis'> <f gis> <c c'> <f gis>\)
  | <b, b'>8\( <f' gis> <bes, bes'> <f' gis> <b, b'> <f' gis> <bes, bes'> <f' gis>\)
  | <cis cis'>8\( <f gis> <c c'> <f gis> <cis cis'> <f gis> <c c'> <f gis>\)
  << {
  | \tieNeutral
    <b, b'>8\( <f' gis> <bes, bes'> <f' gis> <b, b'> <f' gis>
    \once\override NoteColumn.force-hshift = #0
    bes,
    <f'-\shape #'((0 . 0) (0 . 0) (-0.3 . 0) (-0.6 . 0))_~
     gis-\shape #'((0 . 0) (0 . 0) (-0.3 . -0.2) (-0.6 . 0))^~
    >\)
    \once \override TieColumn.positioning-done = ##t
  | \hideNotes q8 s s2. \unHideNotes
  } \\ {
  | s2.
    \omit Stem \omit Flag
    \override NoteColumn.force-hshift = #0
    bes4^~
  | bes8
    \ottava #0
    s s2.
  } >>
  | s1*27
  | s1*5/4*9
  %46
  | s1 cis''8[ bis
  | dis cis] e4 e <fis, e'> <fis fis'>
}

Baritone = \context Voice = "five" \relative c {
  \voiceFive
  \stemUp
  \partial 2 s2
  | s1*12
  | \override NoteColumn.force-hshift = #0.4
    \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.7) (-1 . -0.8)) Tie
    a2~ a4 gis
  | \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.7) (-1 . -0.8)) Tie
    a2~ a4 gis
    \revert NoteColumn.force-hshift
  | s1*4
  %19
  | s2 a
  | s a
  | s1*4
  %25
  | \override NoteColumn.force-hshift = #0.4
    \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.7) (-1 . -0.8)) Tie
    a2~ a4 gisis
  | \shape #'((0 . -0.5) (0 . -0.5) (0 . -0.7) (-1 . -0.8)) Tie
    a2~ a4 gisis
    \revert NoteColumn.force-hshift
  | s1*4
  %31
  | s2 des'
  | s des
  | s1*4
  | s1*5/4*9
  %46
  | s1 \stemDown fis4_~
  | fis4 a8[ gis b a] cis[ bis dis cis]
  | \stemUp fis[ e gis fis] s2.
  | s1*5/4
  | s1*2
  %52
  | <f,,, f'>8\( <b d> <e, e'> <b' d>  <f f'> <b d> <e, e'> <b' d>
  | <f f'> <b d> <e, e'> <b' d>  <f f'> <b d> <e, e'> <b' d>\)
  | <dis, dis'>\( <gis b> <d d'> <gis b>  <dis dis'> <gis b> <d d'> <gis b>
  %55
  | <dis dis'> <gis b> <d d'> <gis b>  <dis dis'> <gis b> <d d'> <gis b>\)
  \repeat unfold 2 {
  | <cis, cis'>\( <f gis> <c c'> <f gis>  <cis cis'> <f gis> <c c'> <f gis>\)
  | <b, b'>\( <f' gis> <bes, bes'> <f' gis>  <b, b'> <f' gis> <bes, bes'> <f' gis>\)
  }
  | s1*4
  %64
  | \stemUp
    a''4\rest^\markup {
      \hspace #-2 "m.d."
    }
    <d, f a d>8^.^\markup {
      \hspace #-2.5 \dynamic fff
    }
    a'\rest a4\rest <d, f gis d'>8^. a'\rest
  | a4\rest <d, f a d>8^. a'\rest a4\rest <d, f gis d'>8^. a'\rest
  | a4\rest <d, fis bes d>8^. a'\rest a4\rest <d, f gis d'>8^. a'\rest
  | \override MultiMeasureRest.staff-position = #0
    R1
    \key b \minor
  | dis,,8 dis'~ dis2.
  | cis,8 cis'~ cis2.
  %70
  | b,8 b'~ b2.
  | a,8 a'~ a2.
  | g,8 g'~ g2.
  | f,8 f'~ f2.
  | ees,8( ees'~ ees2.)
  %75
  | R1
}

Bass = \context Voice = "six" \relative c {
  \voiceSix
  \stemDown\tieDown
  \override MultiMeasureRest.staff-position = #0
  \override Rest.staff-position = #0
  \partial 2 r2
  %1
  | \ottava #-1
    f,,4 e f e
  | f e r2
  | dis4 d dis d
  | dis d r2
  %5
  | cis4 c cis c
  | b bes b bes
  | cis c cis c
  | b bes b
    \override NoteColumn.force-hshift = #0 bes~
  | \once\stemUp \once\omit Accidental
    \once\override NoteColumn.force-hshift = #0
    <bes f' gis bes>8
    \ottava #0
    r r4 r2
  | R1*3
  %13
  | \tieNeutral <f''_~ d'^~ f^~>2\arpeggio q
  | <f_~ d'^~ f^~>2\arpeggio q
  | \stemNeutral <f f'>_>\( <d d'>4 <b b'>
  | <gis gis'>2\) <a a'>
  | <b b'>1
  | R1
    \bar "||"
    \key a \major
  | <cis b' d>2\arpeggio \stemDown d4.(_\sf cis8)
  %20
  | \once\stemNeutral <cis b' d>2\arpeggio d4.(_\sf cis8)
  | \stemNeutral <b b'>4^>( <ais ais'>8) r <a a'>_. r <gis gis'>_. r
  | \override Beam.positions = #'(0.5 . 1)
    \repeat tremolo 16 { <fis cis'>32^\p fis' }
  | <fis, cis'>8_.^\pp r r <eis eis'>_. <fis fis'>_. r r <eis eis'>_.
  | <fis fis'>_. r r4 r2
  %25
  | \stemDown <fis'_~ dis'^~ fis^~>2 q
  | <fis_~ dis'^~ fis^~>2 q
  | \stemNeutral
    <fis fis'>2^>\( <dis dis'>4 <c c'>
  | <b b'>2\) \once\slurUp \acciaccatura cis8 <cis' e a>2
  | \once\slurUp \acciaccatura dis,8 <dis' fis a>2 r
  %30
  | R1\fermata
    \key bes \major
    \bar "||"
  | <f, ees' ges>2 \stemDown ges4.(_\sf f8)
  | \once\stemNeutral <f ees' ges>2 ges4.(_\sf f8)
  | \stemNeutral <ees ees'>4^>( <d! d'!>8) r <des des'>8_. r <c c'>_. r
  | \override Beam.positions = #'(1 . 1.5)
    \repeat tremolo 16 { <bes f'>32 bes' }
    \revert Beam.positions
  %35
  | <bes, f'>8_. r r <a a'>_. <bes bes'>_. r r <a a'>_.^\ppp
  | <bes bes'>_. r r4 r^\fermata
    \bar "||"
    r4_\markup { "una corda" }
    \bar "||"
    \time 5/4
  | r2 r4 r8 \clef "treble" s4.
  | <aes''' des>2. r4 <ces des>4
  | <bes des> \once\tieNeutral q~^- q q^.^( <a des>^.)
  %40
  | \set Staff.connectArpeggios = ##f
    <aes ces d!>2\arpeggio ees'8 d! f ees ges4
  | r4 ges8[ ees ces aes] r4 r
  | r2 r4\fermata r \clef "bass" <b,,, b'>
    \bar "||"
    \key e \major
  | <b b'>4 q~ q q q
  | <b' fis'>2~ q4 r <b a'>
  %45
  | <b gis'> <b, b'>~^- q( <gis gis'>) q
  | <gis gis'>2( <fis fis'>~) q4_~
  | q1 s4
  | <fis'' cis'>4 q
    \once\override Arpeggio.padding = #0.1
    <fis cis' e ais>2.\arpeggio
  | r4 s1
    \bar "||"
    \time 4/4
  %50
  | s1
  | R1\fermata
    \bar "||"
    \key a \minor
    \clef "bass"
  | \ottava #-1
    \stemDown f,,4_\markup { \hspace #0.5 "tre corde" } e f e
  | f e f e
  | dis d dis d
  %55
  | dis d dis d
  | cis c cis c
  | b bes b bes
  | cis c cis c
  | b bes b bes
  %60
  | \stemNeutral
    r8 <a a'> <bes bes'> <cis cis'> <d d'> <e e'> <f f'> <gis gis'>
    \ottava #0
  | <a a'> <bes bes'> <cis cis'> <d d'> <e e'> <f f'> <gis gis'> <a a'>
  | <bes bes'> <cis cis'> <d d'> <e e'> <f f'> <cis cis'> <d d'> <e e'>
  | <f f'> <cis cis'>^![ <d d'>^! <e e'>^!] <f f'>^! <fis fis'>^! <g g'>^! <gis gis'>^!
  <<
    \new Staff = "middle" \with {
      alignAboveContext = "lower"
    } {
      \omit Staff.TimeSignature
      \clef "treble"
      \key c \major
      | <a a'>4..^\markup { "ten." } <bes bes'>16 q2^^^\markup { "ten." }
      %65
      | <a a'>4.. <bes bes'>16 q4.. q16
      | q4.._> q16 q4.._> q16
      | q4_. q_. q_. r
        \clef "bass"
        \key b \minor
      | r4^\markup {
          "m.s."
        }
        fis8[ fis' fis, fis'] r4
      | r <fis, cis'>8[ fis' <fis, cis'> fis'] r4
      %70
      | r
        \once\override TextScript.extra-offset = #'(-4 . -2)
        <g, d'>8[_\markup {
          "sempre legato"
        }
        g' <g, d'> g'] r4
      | r \clef "treble" <a, d>8[ a' <a, d> a'] r4
      | r <bes, ees>8[ bes' <bes, ees> bes'] r4
      | r <bes, f'>8[ bes' <bes, f'> bes'] r4
      | r \clef "bass" <fis,! ees'>8[\(_\markup {
          "sempre" \normalsize \dynamic p
        }
        fis' <fis, ees'> fis' <fis, ees'> <fis'>]
      %75
      | <fis, ees'> fis' \repeat unfold 2 { <fis, ees'> fis' } <fis, ees'> fis'\)
    } {
      | \stemDown
        c,,4\rest_\markup {
          \hspace #-0.5 "m.s."
        }
        <f, a d f>8_. d'\rest c4\rest <f, gis d' f>8_. d'\rest
      %65
      | c4\rest <f, a d f>8_. d'\rest c4\rest <f, gis d' f>8_. d'\rest
      | c4\rest <fis, bes d fis>8_. d'\rest c4\rest <f, gis d' f>8_. d'\rest
      | s1
      | \tieDown dis4~ dis2.
      | cis4~ cis2.
      %70
      | b4~ b2.
      | a4~ a2.
      | g4~ g2.
      | f4~ f2.
      | ees4~ ees2.
    }
  >>
  | R1*2
    \bar "||"
    \time 5/4
  | \tieNeutral\stemNeutral
    r4 <dis' b'>~ q q_.( <dis bis'>)
  | <e cis'>2~ q4 r <g cis>
  %80
  | <fis d'> <fis d' fis>~ q q <fis ees' fis>
  | <g ees' fis>1\arpeggio r4
  | <g d' g>\arpeggio r r2 r4
    \bar "||"
    \time 4/4
  | r2 <b, b'>\(
  | <a a'> <e e'>~
  %85
  | q\) <b' b'>\(
  | <a a'> <e e'>\)
  | <fis fis'>1
  | <cis cis'>
  | <c c'>
  %90
  | <cis cis'>
  | <fis fis'>
  | <cis cis'>
  | <c c'>
  | <cis cis'>
  %95
  | <fis d' fis>
  | <fis' d' fis>
    \clef "treble"
  | <fis'' a d fis >
  | q\fermata
    \fine
}

centerDynamics = {
  \partial 2 r2
  | s4-\markup { \normalsize \dynamic mf "(wie Glocken)" } s2.
  | s1*3
  | s4 s-\markup { "un poco cresc." } s2
  | s1*7
  %13
  | s4-\markup { \normalsize \dynamic mf "espressivo" } s2.
  | s1*5
  %19
  | s4\>_\markup { "pesante" } s\! s2\sf
  | s4\> s\! s2\sf
  | s2
    \set crescendoText = \markup { \small\italic { "dim." } }
    \set crescendoSpanner = #'text
    s\<
  | s1
  | s2 s\!\pp
   \unset crescendoText
   \unset crescendoSpanner
  | s1
  %25
  | s4-\markup { \normalsize \dynamic mf "espr." } s2.
  | s1*5
  %31
  | s4-\markup { \hspace #-2 "pesante" } s2.
  | s1
  | s2 s-\markup { "dim." }
  | s4\p s\> s\! s
  | s16 s8.\pp s2.
  | s1
  | s1*5/4*3
  %40
  | s2 s-\markup { "sempre legato" } s4
  | s2. s4-\markup { \hspace #-2 "perdendo" } s
  | s2 s2 s4\pp
  | s1*5/4*3
  %46
  | s1-\markup { \hspace #-1 "legatissimo sempre" }
    \set crescendoText = \markup { \small\italic { "cresc." } }
    \set crescendoSpanner = #'text
    s4\<
  | s1 s8 s\!
    \unset crescendoText
    \unset crescendoSpanner
  | s1*5/4
  | s16 s8.\pp s1
  %50
  | s4. s8-\markup { "perdendo" } s2
  | s1
  | s4\p s2.
  | s1*3
  %56
  | \set crescendoText = \markup { \small\italic { "cresc." } }
    \set crescendoSpanner = #'text
    s4\< s2.
  | s1*2
  | s2. s8 s16 s\!
  %60
  | \set crescendoText = \markup { \small\italic { "più cresc." } }
    s4\< s2.
  | s1
  | s4 s
    \unset crescendoText
    \unset crescendoSpanner
    s\!\< s4
  | s4\! s2.
  | s1*12
  %76
  | \set crescendoText = \markup { \small\italic { "dim." } }
    \set crescendoSpanner = #'text
    s4 s\< s2
  | s4 s s s8 s\!
    \unset crescendoText
    \unset crescendoSpanner
  | s4 s-\markup { "espr." } s2.
  | s1*5/4
  | s2 s4\< s2
  | s1*5/4\!
  | s1*5/4
  %83
  | s2 s\p
  | s1
  | s2 s\<
  | s1
  | s\!
  | s
  | s\>
  %90
  | s16\! s8.-\markup { "dim." } s2.
  | s1
  | s1\<
  | s4 s\!\> s2
  | s1
  | s\!\pp
  | s1
  | s\ppp
}

forceBreaks = {
  % page 1
  \partial 2 s2
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 1 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 4 { s1\noBreak } s1\pageBreak
  %page2
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  | \repeat unfold 4 { s1\noBreak } s1\break\noPageBreak
  | s1\noBreak s1*5/4\noBreak s1*5/4\pageBreak
  %page3
  | \repeat unfold 2 { s1*5/4\noBreak } s1*5/4\break\noPageBreak
  | \repeat unfold 2 { s1*5/4\noBreak } s1*5/4\break\noPageBreak
  | \repeat unfold 2 { s1*5/4\noBreak } s1*5/4\break\noPageBreak
  | \repeat unfold 2 { s1*5/4\noBreak } s1\break\noPageBreak
  | \repeat unfold 2 { s1\noBreak } s1\pageBreak
  %page4
  %| \repeat unfold 2 { s1\noBreak } s1\pageBreak
}

sustainPedal = {
  \set Staff.pedalSustainStyle = #'mixed
    s4\sustainOn s
  | s1
  | s1
  | s4\sustainOff\sustainOn s2.
  | s1
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s s s8 s16 s\sustainOff
  | s1*4
  %13
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff s2.
  | s1*2
  | s4\sustainOn s s\sustainOff s
  %20
  | s\sustainOn s s\sustainOff s
  | s1
  | s4\sustainOn s2.
  | s4\sustainOff s2.
  | s1
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s
  | s4\sustainOff\sustainOn s s\sustainOff s
  | s1
  %31
  | s4\sustainOn s s\sustainOff s
  | s4\sustainOn s s\sustainOff s
  | s1
  | s4\sustainOn s2.
  | s4\sustainOff s2.
  | s2. s4\sustainOn
  %37
  | s4\sustainOff\sustainOn s s s \sustainOff s
  | s4\sustainOn s s s \sustainOff s
  | s4\sustainOn s1
  | s4\sustainOff\sustainOn s s\sustainOff s s\sustainOn
  | s1*5/4
  | s2 s4\sustainOff s s\sustainOn
  | s1*5/4
  | s4\sustainOff s1
  %45
  | s4\sustainOn s1
  | s4\sustainOff\sustainOn s s\sustainOff\sustainOn s s\sustainOff
  | s2. s4\sustainOn s4\sustainOff\sustainOn
  | s4\sustainOff\sustainOn s\sustainOff\sustainOn s s s
  | s4\sustainOff\sustainOn s s s s
  %50
  | s1
  | s4 s\sustainOff s2
  | s4\sustainOn s2.
  | s1
  | s4\sustainOff\sustainOn s2.
  | s1
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  %60
  | s4\sustainOff\sustainOn s2.
  | s1
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff s2.
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2 s4\sustainOff
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  %70
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s s s\sustainOff\sustainOn
  | s4 s s\sustainOff s
  | s1*2
  | s1*5/4*2
  %80
  | s4\sustainOn s1
  | s4\sustainOff\sustainOn s1
  | s4\sustainOff s1
  | s1
  | s4 s s\sustainOn s
  | s4 s\sustainOff s2
  | s1
  %87
  | s4\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  | s4\sustainOff\sustainOn s2.
  %95
  | s4\sustainOff\sustainOn s2.
  | s1
  | s4\sustainOff\sustainOn s2.
  | s1
}

\score {
  \new PianoStaff \with { connectArpeggios = ##t }
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble
      \Soprano
      \Alto
      \Contralto
    >>
    \new Devnull \forceBreaks
    \context Dynamics = "dynamics" \centerDynamics
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass
      \Tenor
      \Baritone
      \Bass
    >>
    \context Dynamics = "sustainPedal" \sustainPedal
  >>
  \header {
    composer = ##f % "Franz Liszt"
    opus = ##f % "S.205"
    title = \markup { "VII. Mosonyi Mihály" }
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
    \tempo 4 = 80
  }
}
