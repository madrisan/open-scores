\header {
  composer = "Carl Philipp Emanuel Bach (1714-1788)"
  date = "1766"

  footer = "Mutopia-2024/07/17"

  lastupdated = "2024 July 17"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainerEmail = "d.madrisan@proton.me"
  maintainerWeb = "https://github.com/madrisan/open-scores"

  % Extra Mutopia Information
  mutopiacomposer = "BachCPE"
  mutopiacopyright = "Creative Commons Attribution-ShareAlike 4.0"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiamaintainer = "Davide Madrisan"
  mutopiaopus = "Wq 117/2, H.220"
  mutopiatitle = "Solfeggio in c-Moll"

  opus = "Wq 117/2, H.220"
  title = "Solfeggio in c-Moll"
  source = "Les Éditions Outremontaises - Montréal, 2006"
  style = "Classical"

  copyright = \markup {
    \override #'(font-name . "DejaVu Sans, Bold")
    \override #'(baseline-skip . 0)
    \right-column {
      \with-url #"http://www.MutopiaProject.org" {
        \abs-fontsize #9  "Mutopia "
        \concat {
	  \abs-fontsize #12
	  \with-color \coverColor "ǀ"
	  \abs-fontsize #9 "Project "
        }
      }
    }
    \override #'(font-name . "DejaVu Sans, Bold")
    \override #'(baseline-skip . 0 )
    \center-column {
      \abs-fontsize #11.9
      \with-color #grey
      \bold { "ǀ" "ǀ" }
    }
    \override #'(font-name . "DejaVu Sans,sans-serif")
    \override #'(baseline-skip . 0)
    \column {
      \abs-fontsize #8
      \concat {
        "Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2022-2024 ""by " \maintainer " — " \footer
      }
      \concat {
	\concat {
	  \abs-fontsize #8 {
	    \with-url #"http://creativecommons.org/licenses/by-sa/40/"
	               "Creative Commons Attribution ShareAlike 4.0 International License"
		       " — free to distribute, modify, and perform"
          }
	}
	\abs-fontsize #13 \with-color \coverColor "ǀ"
      }
    }
  }
  tagline = ##f
}
