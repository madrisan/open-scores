\header {
  composer = "Christoph Willibald Gluck (1714-1787)"
  date = "1762"

  footer = "Mutopia-2023/07/18"

  lastupdated = "2023 July 18"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainerEmail = "davide.madrisan@gmail.com"
  maintainerWeb = "https://github.com/madrisan/open-scores"

  % Extra Mutopia Information
  mutopiacomposer = "CWGluck"
  mutopiacopyright = "Creative Commons Attribution-ShareAlike 4.0"
  mutopiainstrument = "Piano"
  mutopiamaintainer = "Davide Madrisan"
  mutopiaopus = ""
  mutopiatitle = "Mélodie de Gluck (depuis Orfeo ed Euridice)"

  opus = ""
  title = "Mélodie de Gluck"
  source = ""
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
        "Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " ©" 2022-2023 ""by " \maintainer " — " \footer
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
