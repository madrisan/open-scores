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
      \char ##x23AF " Suite Anglaise IV"
    }
  }
}

\markup {
  \vspace #1
}

\markup { \indexItem "Prélude" #'SuiteIVPrelude "" }
\markup { \indexItem "Allemande" #'SuiteIVAllemande "" }
\markup { \indexItem "Courante" #'SuiteIVCourante "" }
\markup { \indexItem "Sarabande" #'SuiteIVSarabande "" }
\markup { \indexItem "Menuet I" #'SuiteIVMenuetI "" }
\markup { \indexItem "Menuet II" #'SuiteIVMenuetII "" }
\markup { \indexItem "Gigue" #'SuiteIVGigue "" }
