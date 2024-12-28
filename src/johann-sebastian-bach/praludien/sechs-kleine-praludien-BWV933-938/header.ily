\header {
  composer = "Johann Sebastian Bach (1685-1750)"
  date = "Probably composed from 1717 to 1720"

  footer = "Mutopia-2023/04/04"

  lastupdated = "2023 February 4"
  license = "Creative Commons Attribution Non Commercial Share Alike 4.0 International"
  maintainerEmail = "d.madrisan@proton.me"
  maintainerWeb = "https://github.com/madrisan/open-scores"

  % Extra Mutopia Information
  mutopiacomposer = "BachJS"
  mutopiacopyright = "Creative Commons Attribution Non Commercial Share Alike 4.0 International"
  mutopiainstrument = "Harpsichord, Piano"
  mutopiamaintainer = "Davide Madrisan"
  mutopiaopus = "BWV 933-938"
  mutopiatitle = "Sechs kleine Präludien BWV 933-938"

  opus = "BWV 933-938"
  title = "Sechs kleine Präludien BWV 933-938"
  source = "Bach-Gesellschaft Edition Band 36 / Ernst Naumann 1890"
  style = "Baroque"

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
	"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2022,2023 ""by " \maintainer " — " \footer
      }
      \concat {
	\concat {
	  \abs-fontsize #8 {
	    \with-url #"https://spdx.org/licenses/CC-BY-NC-SA-4.0.html"
	               "Creative Commons Attribution Non Commercial Share Alike 4.0 International"
		       " — free to distribute, modify, and perform"
          }
	}
	\abs-fontsize #13 \with-color \coverColor "ǀ"
      }
    }
  }
  tagline = ##f
}
