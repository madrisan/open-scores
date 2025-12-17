\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    \line { "Kinderscenen, Op. 15" }
    \null
    "Index"
  }
}

\markup {
  \vspace #2
}

\markup \center-column {
  \null
  \line {
    \hspace #22
    \general-align #Y #DOWN {
      \epsfile #X #60 #"robert-schumann-1839.eps"
    }
  }
  \null
  \line \italic {
    \hspace #18
    { \bold "Robert Schumann" } \char ##x2014 "Wien, 1839"
  }
}

\markup {
  \vspace #3
}

middleGrey = #(x11-color 'grey45)

#(define-markup-command (indexItem layout props title pagelabel hfill part)
  (string? symbol? number? string?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \override #'(line-width . 95)
         \pad-around #0.8
         \line {
           \hspace #2.5
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT .
               \concat {
                 \hspace #hfill
                 #part
                 ".   " { \italic #title }
               }
               \page-ref #pagelabel "000" "?"
           }
         }
       } #}))

\markup { \indexItem "Von fremden Ländern und Menschen"  #'KinderscenenI #1.4 "1" }
\markup { \indexItem "Curiose Geschichte" #'KinderscenenII #1.4 "2" }
\markup { \indexItem "Hasche-Mann" #'KinderscenenIII #1.4 "3" }
\markup { \indexItem "Bittendes Kind" #'KinderscenenIV #1.4 "4" }
\markup { \indexItem "Glückes genug" #'KinderscenenV #1.4 "5" }
\markup { \indexItem "Wichtige Begebenheit" #'KinderscenenVI #1.4 "6" }
\markup { \indexItem "Träumerei" #'KinderscenenVII #1.4 "7" }
\markup { \indexItem "Am Kamin" #'KinderscenenVIII #1.4 "8" }
\markup { \indexItem "Ritter vom Steckenpferd" #'KinderscenenIX #1.4 "9" }
\markup { \indexItem "Fast zu ernst" #'KinderscenenX #0 "10" }
\markup { \indexItem "Fürchtenmachen" #'KinderscenenXI #0 "11" }
\markup { \indexItem "Kind im Einschlummern" #'KinderscenenXII #0 "12" }
\markup { \indexItem "Der Dichter spricht" #'KinderscenenXIII #0 "13" }