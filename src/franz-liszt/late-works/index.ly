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

%\markup { \indexSection "I" "B-Dur / B flat major / Si bemolle maggiore" "825" }
%\markup { \indexItem "Praeludium" #'PartitaIPraeludium }
%\markup {
%  \vspace #1
%}

%\markup { \indexSection "II" "c-Moll / C minor / do minore" "826" }
%\markup { \indexItem "Sinfonia" #'PartitaIISinfonia }
%\markup {
%  \vspace #1
%}

\pageBreak
