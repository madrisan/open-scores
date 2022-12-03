\version "2.23.80"

\header {
  composer = "Alban Berg (1885-1935)"
  date = "1907/1908, revision 1920"

  footer = "Mutopia-2023/02/01-100"

  lastupdated = "2023 Feb 01"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainerEmail = "davide.madrisan@gmail.com"
  maintainerWeb = "https://github.com/madrisan/open-scores"

  % Extra Mutopia Information
  mutopiacomposer = "BergA"
  mutopiacopyright = "Creative Commons Attribution-ShareAlike 4.0"
  mutopiainstrument = "Piano"
  mutopiamaintainer = "Davide Madrisan"
  mutopiaopus = "Op. 1"
  mutopiatitle = "Klaviersonate"

  opus = "Op. 1"
  title = "Klaviersonate Op.1"
  source = "Robert Emil Lienau"
  style = "Post Romantic"

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
