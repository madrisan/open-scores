\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    "Index"
    \null\null\null\null
  }
}

middleGrey =    #(x11-color 'grey45)

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

\markup { \indexItem "Aria" #'Aria "" }

\markup { \indexItem "Variatio 1 à 1 Clav." #'VariatioI "" }
\markup { \indexItem "Variatio 2 à 1 Clav." #'VariatioII "" }
\markup { \indexItem "Variatio 3 à 1 Clav." #'VariatioIII " — Canone all'unisono" }
\markup { \indexItem "Variatio 4 à 1 Clav." #'VariatioIV "" }
\markup { \indexItem "Variatio 5 à 1 ovvero 2 Clav." #'VariatioV "" }
\markup { \indexItem "Variatio 6 à 1 Clav." #'VariatioVI " — Canone alla Seconda" }
\markup { \indexItem "Variatio 7 à 1 ovvero 2 Clav." #'VariatioVII " — al tempo di Giga" }
\markup { \indexItem "Variatio 8 à 2 Clav." #'VariatioVIII "" }
\markup { \indexItem "Variatio 9 à 1 Clav." #'VariatioIX " — Canone alla Terza" }
\markup { \indexItem "Variatio 10 à 1 Clav." #'VariatioX " — Fughetta" }
\markup { \indexItem "Variatio 11 à 2 Clav." #'VariatioXI "" }
\markup { \indexItem "Variatio 12" #'VariatioXII " — Canone alla Quarta" }
\markup { \indexItem "Variatio 13 à 2 Clav." #'VariatioXIII "" }
\markup { \indexItem "Variatio 14 à 2 Clav." #'VariatioXIV "" }
\markup { \indexItem "Variatio 15 à 1 Clav." #'VariatioXV " — Canone alla Quinta" }
\markup { \indexItem "Variatio 16 à 1 Clav." #'VariatioXVI " — Ouverture" }
\markup { \indexItem "Variatio 17 à 2 Clav." #'VariatioXVII "" }
\markup { \indexItem "Variatio 18 à 1 Clav." #'VariatioXVIII " — Canone alla Sexta" }
\markup { \indexItem "Variatio 19 à 1 Clav." #'VariatioXIX "" }
\markup { \indexItem "Variatio 20 à 2 Clav." #'VariatioXX "" }
\markup { \indexItem "Variatio 21" #'VariatioXXI " — Canone alla Settima" }
\markup { \indexItem "Variatio 22 à 1 Clav." #'VariatioXXII "" }
\markup { \indexItem "Variatio 23 à 2 Clav." #'VariatioXXIII "" }
\markup { \indexItem "Variatio 24 à 1 Clav." #'VariatioXXIV " — Canone all'Ottava" }
\markup { \indexItem "Variatio 25 à 2 Clav." #'VariatioXXV "" }
\markup { \indexItem "Variatio 26 à 2 Clav." #'VariatioXXVI "" }
\markup { \indexItem "Variatio 27 à 2 Clav." #'VariatioXXVII " — Canone alla Nona" }
\markup { \indexItem "Variatio 28 à 2 Clav." #'VariatioXXVIII "" }
\markup { \indexItem "Variatio 29 à 1 ovvero 2 Clav." #'VariatioXXIX "" }
\markup { \indexItem "Variatio 30 à 1 Clav." #'VariatioXXX " — Quodlibet" }
