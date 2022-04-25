\version "2.23.7"

#(ly:set-option 'relative-includes #t)

\paper {
  line-width = 18.6\cm
  top-margin = 8\mm
  bottom-margin = 9\mm
  ragged-last-bottom = ##t
  ragged-bottom = ##t
  first-page-number = 0
  markup-system-spacing.basic-distance = #10
  last-bottom-spacing.padding = #2
}

\bookpart {

  \header { maintainer = "Davide Madrisan" }
  \include "./header.ily"
  \header {
    title = ##f
    composer = ##f
  }

  \markup { \fill-line { \center-column {
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null \null
	\null \null \null
	\line {\abs-fontsize #20 "Johann Sebastian Bach"}
	\null\null\null
	\line {\abs-fontsize #36 \bold "Suite Anglaise IV"}
	\null\null\null
	\line {\abs-fontsize #20 "BWV 809"}
	\null\null\null\null
	\fill-line { \abs-fontsize #20 "For Piano or Harpsichord" }
	\null\null\null\null
	\null\null\null\null
        \fill-line { \abs-fontsize #14 "Transcribed and Engraved"}
        \null
        \fill-line { \abs-fontsize #14 "by"}
        \null
        \fill-line { \abs-fontsize #14 "Davide Madrisan"}
	} } }
}


\include "./parts/bach-suite-anglaise-4-prélude.ly"
