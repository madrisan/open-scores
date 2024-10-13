\include "./macros.ly"
\include "./macros-fugues-structure.ly"


\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    \null
    "Structure of the Fugues"
    \vspace #2
  }
}


\markup \fugueStructureTitle "I" ""
\fugueStructureBoxesI

\markup \fugueStructureTitle "II" ""
\fugueStructureBoxesII

\markup \fugueStructureTitle "III" ""
\fugueStructureBoxesIII

\markup \fugueStructureTitle "IV" ""
\fugueStructureBoxesIV

\markup \fugueStructureTitle "V" ""
\fugueStructureBoxesV

\markup \fugueStructureTitle "VI" "[per Diminutionem] in Stilo Francese"
\fugueStructureBoxesVI

\markup \fugueStructureTitle "VII" "per Augmentationem et Diminutionem"
\fugueStructureBoxesVII

\markup \fugueStructureTitle "VIII" "[Triple Fugue]"
\fugueStructureBoxesVIII_lineone
\fugueStructureBoxesVIII_linetwo
\fugueStructureBoxesVIII_linethree

\markup \fugueStructureTitle "IX" "alla Duodecima"
\fugueStructureBoxesIX

\markup \fugueStructureTitle "X" "alla Decima"
\fugueStructureBoxesX_lineone
\fugueStructureBoxesX_linetwo

\markup \fugueStructureTitle "XI" ""
\fugueStructureBoxesXI_lineone
\fugueStructureBoxesXI_linetwo
\fugueStructureBoxesXI_linethree

\markup \fugueStructureTitle "XII.I" "[rectus]"
\fugueStructureBoxesXII_I

\markup \fugueStructureTitle "XII.II" "inversus"
\fugueStructureBoxesXII_II

\markup \fugueStructureTitle "XIII.I" "[rectus]"
\fugueStructureBoxesXIII_I

\markup \fugueStructureTitle "XIII.II" "inversus"
\fugueStructureBoxesXIII_II

\markup \fugueStructureTitle "XIV" ""
\fugueStructureBoxesXIV_lineone
\fugueStructureBoxesXIV_linetwo
\fugueStructureBoxesXIV_linethree

\markup {
  \fill-line {
    \vspace #1.4
    \line \abs-fontsize #8 \italic {
          \on-color \expositionColor \pad-markup #0.6 \with-color \white " 1 "
          \on-color \secondExpositionColor \pad-markup #0.6 \with-color \white " 2 "
          \on-color \thirdExpositionColor \pad-markup #0.6 \with-color \white " 3 "
            "Exposition "
          \on-color \episodeColor \pad-markup #0.6 "   " "Episode "
          \on-color \subjectPresentationColor \pad-markup #0.6 "   " "Subject presentation "
          \on-color \subjectStrettoColor \pad-markup #0.6 "   " "Stretti "
          \on-color \endColor \pad-markup #0.6 "   " "Coda "
    }
    \null
  }
}
