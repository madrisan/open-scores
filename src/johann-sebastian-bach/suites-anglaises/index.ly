\markup \fill-line {
  \center-column \abs-fontsize #18 \bold\caps {
    \null\null
    "Index"
    \null\null\null\null
  }
}

middleGrey = #(x11-color 'grey45)

#(define-markup-command (indexSection layout props title bwv)
  (string? string?)
  "Format a section title of the index"
  (interpret-markup layout props
    #{ \markup \column \abs-fontsize #11 {
         \pad-around #1
         \abs-fontsize #11 \bold {
           \concat {
             \char ##x23AF " Suite Anglaise " #title " avec Prélude"
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

\markup { \indexSection "I" "806" }
\markup { \indexItem "Prélude" #'SuiteIPrelude }
\markup { \indexItem "Allemande" #'SuiteIAllemande }
\markup { \indexItem "Courante I" #'SuiteICouranteI }
\markup { \indexItem "Courante II avec Deux Doubles" #'SuiteICouranteII }
\markup { \indexItem "Double I" #'SuiteIDoubleI }
\markup { \indexItem "Double II" #'SuiteIDoubleII }
\markup { \indexItem "Sarabande" #'SuiteISarabande }
\markup { \indexItem "Bourree I" #'SuiteIBourreeI }
\markup { \indexItem "Bourree II" #'SuiteIBourreeII }
\markup { \indexItem "Gigue" #'SuiteIGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "II" "807" }
\markup { \indexItem "Prélude" #'SuiteIIPrelude }
\markup { \indexItem "Allemande" #'SuiteIIAllemande }
\markup { \indexItem "Courante" #'SuiteIICourante }
\markup { \indexItem "Sarabande" #'SuiteIISarabande }
\markup { \indexItem "Les agréments de la même Sarabande" #'SuiteIISarabandeAgrements }
\markup { \indexItem "Bourree I" #'SuiteIIBourreeI }
\markup { \indexItem "Bourree II" #'SuiteIIBourreeII }
\markup { \indexItem "Gigue" #'SuiteIIGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "III" "808" }
\markup { \indexItem "Prélude" #'SuiteIIIPrelude }
\markup { \indexItem "Allemande" #'SuiteIIIAllemande }
\markup { \indexItem "Courante" #'SuiteIIICourante }
\markup { \indexItem "Sarabande" #'SuiteIIISarabandeI }
\markup { \indexItem "Les agréments de la même Sarabande" #'SuiteIIISarabandeII }
\markup { \indexItem "Gavotte I" #'SuiteIIIGavotteI }
\markup { \indexItem "Gavotte II ou la Musette" #'SuiteIIIGavotteII }
\markup { \indexItem "Gigue" #'SuiteIIIGigue }
\markup {
  \vspace #1
}

\pageBreak

\markup {
  \vspace #2
}

\markup { \indexSection "IV" "809" }
\markup { \indexItem "Prélude" #'SuiteIVPrelude }
\markup { \indexItem "Allemande" #'SuiteIVAllemande }
\markup { \indexItem "Courante" #'SuiteIVCourante }
\markup { \indexItem "Sarabande" #'SuiteIVSarabande }
\markup { \indexItem "Menuet I" #'SuiteIVMenuetI }
\markup { \indexItem "Menuet II" #'SuiteIVMenuetII }
\markup { \indexItem "Gigue" #'SuiteIVGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "V" "810" }
\markup { \indexItem "Prélude" #'SuiteVPrelude }
\markup { \indexItem "Allemande" #'SuiteVAllemande }
\markup { \indexItem "Courante" #'SuiteVCourante }
\markup { \indexItem "Sarabande" #'SuiteVSarabande }
\markup { \indexItem "Passepied I en Rondeau" #'SuiteVPassepiedI }
\markup { \indexItem "Passepied II" #'SuiteVPassepiedII }
\markup { \indexItem "Gigue" #'SuiteVGigue }
\markup {
  \vspace #1
}

\markup { \indexSection "VI" "811" }
\markup { \indexItem "Prélude" #'SuiteVIPrelude }
\markup { \indexItem "Allemande" #'SuiteVIAllemande }
\markup { \indexItem "Courante" #'SuiteVICourante }
\markup { \indexItem "Sarabande" #'SuiteVISarabande }
\markup { \indexItem "Double" #'SuiteVIDouble }
\markup { \indexItem "Gavotte I" #'SuiteVIGavotteI }
\markup { \indexItem "Gavotte II" #'SuiteVIGavotteII }
\markup { \indexItem "Gigue" #'SuiteVIGigue }
\markup {
  \vspace #1
}