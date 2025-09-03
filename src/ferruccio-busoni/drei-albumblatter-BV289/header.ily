\header {
  composer = "Ferruccio Busoni (1866-1924)"
  date = "1921"

  footer = "Mutopia-2024/10/26"

  lastupdated = "2024 October 26"
  license = "Creative Commons Attribution Non Commercial Share Alike 4.0 International"
  maintainerEmail = "d.madrisan@proton.me"
  maintainerWeb = "https://github.com/madrisan/open-scores"

  % Extra Mutopia Information
  mutopiacomposer = "BusoniF"
  mutopiacopyright = "Creative Commons Attribution Non Commercial Share Alike 4.0 International"
  mutopiainstrument = "Piano"
  mutopiamaintainer = "Davide Madrisan"
  mutopiaopus = "BV 289"
  mutopiatitle = "Drei Albumblätter, BV 289"

  opus = "BV 289"
  title = "Drei Albumblätter, BV 289"
  source = "Based on Breitkopf & Härtel - Leipzig, 1921"
  style = "Modern"

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
