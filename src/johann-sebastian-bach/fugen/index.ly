\markup \fill-line {
  \center-column \abs-fontsize #18 \bold\caps {
    \null\null
    "Index"
    \null\null\null\null
  }
}

#(define-markup-command (indexItem layout props title bwv pagelabel)
  (markup? string? symbol?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \override #'(line-width . 95)
         \pad-around #1
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT .
               \concat { #title \normal-text { "  (BWV " #bwv ")" } }
               \page-ref #pagelabel "000" "?"
           }
         }
       } #}))

\markup { \indexItem \line { "Fuge C-Dur" \italic "über ein Thema von Tommaso Albinoni" } "946" #'FugaBWV946 }
\markup { \indexItem "Fuge a-Moll" "947" #'FugaBWV947 }
\markup { \indexItem "Fuge d-Moll" "948" #'FugaBWV948 }
\markup { \indexItem "Fuge A-Dur" "949" #'FugaBWV949 }
\markup { \indexItem \line { "Fuge A-Dur" \italic "über ein Thema von Tommaso Albinoni" } "950" #'FugaBWV950 }
\markup { \indexItem \line { "Fuge H-Moll" \italic "über ein Thema von Tommaso Albinoni" } "951" #'FugaBWV951 }
\markup { \indexItem "Fuga C-Dur" "952" #'FugaBWV952 }
\markup { \indexItem "Fuga C-Dur" "953" #'FugaBWV953 }
\markup { \indexItem \line { "Fuga B-Dur" \italic "über ein Thema von Johann Adam Reinken" } "954" #'FugaBWV954 }
