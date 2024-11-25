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
      \char ##x23AF " Preface"
    }
  }
}

\markup { \indexItem "From a Schoenberg's letter to Ferruccio Busoni" #'LetterToBusoni "" }
\markup { \indexItem "Appunti e riflessioni pianistiche" #'PrefaceIT "" }
\markup { \indexItem "Piano Notes and Reflections" #'PrefaceEN "" }

\markup {
  \vspace #1
}

\markup \column \abs-fontsize #11 {
  \pad-around #1
  \abs-fontsize #12 \bold {
    \concat {
      \char ##x23AF " Sechs kleine Klavierstücke, Op. 19"
    }
  }
}

\markup { \indexItem "Klavierstücke I." #'KlavierstuckeI "" }
\markup { \indexItem "Klavierstücke II." #'KlavierstuckeII "" }
\markup { \indexItem "Klavierstücke III." #'KlavierstuckeIII "" }
\markup { \indexItem "Klavierstücke IV." #'KlavierstuckeIV "" }
\markup { \indexItem "Klavierstücke V." #'KlavierstuckeV "" }
\markup { \indexItem "Klavierstücke VI." #'KlavierstuckeVI "" }
