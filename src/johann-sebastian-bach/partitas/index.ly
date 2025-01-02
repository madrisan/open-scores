\markup \fill-line {
  \center-column \abs-fontsize #18 \bold\caps {
    \null\null
    "Index"
    \null\null\null\null
  }
}

middleGrey = #(x11-color 'grey45)

#(define-markup-command (indexSection layout props title tonality bwv)
  (string? string? string?)
  "Format a section title of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \pad-around #1
         \abs-fontsize #11 \bold {
           \concat {
             \char ##x23AF " Partita " #title "  " #tonality
             \normal-text { "  (BWV "  #bwv ")" }
           }
         }
       } #}))

#(define-markup-command (indexItem layout props title pagelabel)
  (string? symbol?)
  "Format a block of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #10 {
         \override #'(line-width . 95)
         \pad-around #1
         \line {
           \hspace #3.2
           \with-link #pagelabel {
             \fill-with-pattern #1 #RIGHT .
               #title
               \page-ref #pagelabel "000" "?"
           }
         }
       } #}))

\markup { \indexSection "I" "B-Dur / B flat major / Si bemolle maggiore" "825" }
\markup { \indexItem "Praeludium" #'PartitaIPraeludium }
\markup { \indexItem "Allemande" #'PartitaIAllemande }
\markup { \indexItem "Corrente" #'PartitaICorrente }
\markup { \indexItem "Sarabande" #'PartitaISarabande }
\markup { \indexItem "Menuet I" #'PartitaIMenuetI }
\markup { \indexItem "Menuet II" #'PartitaIMenuetII }
\markup { \indexItem "Gigue" #'PartitaIGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "II" "c-Moll / C minor / do minore" "826" }
\markup { \indexItem "Sinfonia" #'PartitaIISinfonia }
\markup { \indexItem "Allemande" #'PartitaIIAllemande }
\markup { \indexItem "Courante" #'PartitaIICourante }
\markup { \indexItem "Sarabande" #'PartitaIISarabande }
\markup { \indexItem "Rondeau" #'PartitaIIRondeau }
\markup { \indexItem "Capriccio" #'PartitaIICapriccio }
\markup {
  \vspace #1
}

\markup { \indexSection "III" "a-Moll / A minor / la minore" "827" }
\markup { \indexItem "Fantasia" #'PartitaIIIFantasia }
\markup { \indexItem "Allemande" #'PartitaIIIAllemande }
\markup { \indexItem "Corrente" #'PartitaIIICorrente }
\markup { \indexItem "Sarabande" #'PartitaIIISarabande }
\markup { \indexItem "Burlesca" #'PartitaIIIBurlesca }
\markup { \indexItem "Scherzo" #'PartitaIIIScherzo }
\markup { \indexItem "Gigue" #'PartitaIIIGigue }
\markup {
  \vspace #1
}

\pageBreak

\markup {
  \vspace #2
}

\markup { \indexSection "IV" "D-Dur / D major / Re maggiore" "828" }
\markup { \indexItem "Ouverture" #'PartitaIVOuverture }
\markup { \indexItem "Allemande" #'PartitaIVAllemande }
\markup { \indexItem "Courante" #'PartitaIVCourante }
\markup { \indexItem "Aria" #'PartitaIVAria }
\markup { \indexItem "Sarabande" #'PartitaIVSarabande }
\markup { \indexItem "Menuet" #'PartitaIVMenuet }
\markup { \indexItem "Gigue" #'PartitaIVGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "V" "G-Dur / G major / Sol maggiore" "829" }
\markup { \indexItem "Praeambulum" #'PartitaVPraeambulum }
\markup { \indexItem "Allemande" #'PartitaVAllemande }
\markup { \indexItem "Corrente" #'PartitaVCorrente }
\markup { \indexItem "Sarabande" #'PartitaVSarabande }
\markup { \indexItem "Tempo di Menuetto" #'PartitaVMinuetto }
\markup { \indexItem "Passepied" #'PartitaVPassepied }
\markup { \indexItem "Gigue" #'PartitaVGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "VI" "e-Moll / E minor / mi minore" "830" }
\markup { \indexItem "Toccata" #'PartitaVIToccata }
\markup { \indexItem "Allemande" #'PartitaVIAllemande }
\markup { \indexItem "Corrente" #'PartitaVICorrente }
\markup { \indexItem "Air" #'PartitaVIAir }
\markup { \indexItem "Sarabande" #'PartitaVISarabande }
\markup { \indexItem "Tempo di Gavotta" #'PartitaVIGavotta }
\markup { \indexItem "Gigue" #'PartitaVIGigue }
\markup {
  \vspace #1
}
