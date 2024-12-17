\markup \fill-line {
  \center-column \abs-fontsize #18 \bold {
    "INDEX"
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

\markup \column \abs-fontsize #11 {
  \pad-around #1
  \abs-fontsize #12 \bold {
    \concat {
      \char ##x23AF " Suite Anglaise II"
    }
  }
}

\markup {
  \vspace #1
}

\markup { \indexItem "Prélude" #'SuiteIIPrelude "" }
\markup { \indexItem "Allemande" #'SuiteIIAllemande "" }
\markup { \indexItem "Courante" #'SuiteIICourante "" }
\markup { \indexItem "Sarabande" #'SuiteIISarabande "" }
\markup { \indexItem "Les agréments de la même Sarabande" #'SuiteIISarabandeAgrements "" }
\markup { \indexItem "Bourree I" #'SuiteIIBourreeI "" }
\markup { \indexItem "Bourree II" #'SuiteIIBourreeII "" }
\markup { \indexItem "Gigue" #'SuiteIIGigue "" }
