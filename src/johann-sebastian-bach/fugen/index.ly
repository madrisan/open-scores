\markup \fill-line {
  \center-column \abs-fontsize #18 \bold\caps {
    \null\null
    "Index"
    \null\null\null\null
  }
}

\markup \fill-line {
  \center-column {
    \epsfile #X #40 #"young-bach-c1715.eps"
    \vspace #0.6
    \abs-fontsize #8 \italic "Portrait presumed to show the young Johann Sebastian Bach, c. 1715,"
    \abs-fontsize #8 \italic "attributed to Johann Ernst Rentsch the Elder (Angermuseum, Erfurt)"
  }
}

\markup { \vspace #2 }

#(define-markup-command (indexItem layout props num title bwv pagelabel)
  (string? markup? string? symbol?)
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
                 \override #'(line-width . 5) \fill-line { \null #num }
                 \hspace #1.5
                 #title \normal-text { "  (BWV " #bwv ")" }
               }
               \page-ref #pagelabel "000" "?"
           }
         }
       } #}))

\markup \column \abs-fontsize #11 {
  \override #'(line-width . 95)
  \pad-around #1
  \line {
    \hspace #3.2
    \with-link #'Preface {
      \fill-with-pattern #1 #RIGHT .
        \concat {
          \override #'(line-width . 5) \fill-line { \null "" }
          \hspace #1.5
          "Preface " \char ##x00B7 " Prefazione " \char ##x00B7 " Préface"
        }
        \page-ref #'Preface "000" "?"
    }
  }
}
\markup { \vspace #1 }

\markup { \indexItem "I." \line { "Fuge C-Dur" \italic "über ein Thema von Tommaso Albinoni" } "946" #'FugaBWV946 }
\markup { \indexItem "II." "Fuge a-Moll" "947" #'FugaBWV947 }
\markup { \indexItem "III." "Fuge d-Moll" "948" #'FugaBWV948 }
\markup { \indexItem "IV." "Fuge A-Dur" "949" #'FugaBWV949 }
\markup { \indexItem "V." \line { "Fuge A-Dur" \italic "über ein Thema von Tommaso Albinoni" } "950" #'FugaBWV950 }
\markup { \indexItem "VI." \line { "Fuge H-Moll" \italic "über ein Thema von Tommaso Albinoni" } "951" #'FugaBWV951 }
\markup { \indexItem "VII." "Fuga C-Dur" "952" #'FugaBWV952 }
\markup { \indexItem "VIII." "Fuga C-Dur" "953" #'FugaBWV953 }
\markup { \indexItem "IX." \line { "Fuga B-Dur" \italic "über ein Thema von Johann Adam Reinken" } "954" #'FugaBWV954 }
\markup { \indexItem "X." "Fuga B-Dur" "955" #'FugaBWV955 }
%\markup { \indexItem "XI." "Fuga e-Moll" "956" #'FugaBWV956 }
