\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    "Index"
    \null\null\null\null
  }
}

middleGrey = #(x11-color 'grey45)

#(define-markup-command (indexItem layout props title pagelabel infos)
  (string? symbol? string?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \override #'(line-width . 95)
         \pad-around #1
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT .
               \concat {
                 #title " " \italic \with-color #middleGrey #infos
               }
               \page-ref #pagelabel "000" "?"
           }
         }
       } #}))

\markup { \indexItem "Ouverture" #'Ouverture "" }
\markup { \indexItem "Courante" #'Courante "" }
\markup { \indexItem "Gavotte I" #'GavotteI "" }
\markup { \indexItem "Gavotte II" #'GavotteII "" }
\markup { \indexItem "Passepied I" #'PassepiedI "" }
\markup { \indexItem "Passepied II" #'PassepiedII "" }
\markup { \indexItem "Sarabande" #'Sarabande "" }
\markup { \indexItem "Bourrée I" #'BourreeI "" }
\markup { \indexItem "Bourrée II" #'BourreeI "" }
\markup { \indexItem "Gigue" #'Gigue "" }
\markup { \indexItem "Echo" #'Echo "" }