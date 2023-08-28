\version "2.23.10"

\header {
  composer = "Johann Sebastian Bach (1685-1750)"
  date = "1723"

  footer = "Mutopia-2023/08/27"

  lastupdated = "2023 Aug 27"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainerEmail = "davide.madrisan@gmail.com"
  maintainerWeb = "https://github.com/madrisan/open-scores"

  % Extra Mutopia Information
  mutopiacomposer = "BachJS"
  mutopiacopyright = "Creative Commons Attribution-ShareAlike 4.0"
  mutopiainstrument = "Piano"
  mutopiamaintainer = "Davide Madrisan"
  mutopiaopus = "BWV772-801"
  mutopiatitle = "Inventionen und Sinfonien"

  opus = "BWV772-801"
  title = "Inventionen und Sinfonien"
  source = ""
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
