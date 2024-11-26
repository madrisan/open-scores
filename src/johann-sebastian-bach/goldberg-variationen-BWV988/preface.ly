\markup \fill-line {
  \center-column \abs-fontsize #18 \smallCaps \bold {
    "Preface"
    \null\null\null
  }
}

\markup \column \abs-fontsize #10 {
  \null
  \line {
    \hspace #2
     Rather unusually for Bach's works, the “Goldberg Variations” were published in his own lifetime, in 1741.
  }
  \line {
    \hspace #2
    The publisher was Bach's friend Balthasar Schmid of Nuremberg.
  }
  \line {
    \hspace #2
    It is named after \italic { Johann Gottlieb Goldberg } (1727-1756), a German virtuoso harpsichordist,
    organist,
  }
  \line {
    \hspace #2
    and composer, who may also have been the first performer of the work.
  }
  \null
  \line {
    \hspace #2
    The story of how the “Goldberg Variations” came to be composed comes from an early biography of
  }
  \line {
    \hspace #2
    Bach by \italic { Johann Nikolaus Forkel: }
  }
  \vspace #1
  \line \abs-fontsize #34 { \hspace #2 "“" }
  \vspace #0.4
}

\markup {
  \fill-line {
    \center-column {
      \override #'(line-width . 80)
      \override #'(indent . 20)
      \justify \italic \abs-fontsize #10 {
        [For this work] we have to thank the instigation of the former Russian ambassador to the electoral
        court of Saxony, Count Kaiserling, who often stopped in Leipzig and brought there with him the
        aforementioned Goldberg, in order to have him given musical instruction by Bach.
        The Count was often ill and had sleepless nights. At such times, Goldberg, who lived in his house,
        had to spend the night in an antechamber, so as to play for him during his insomnia. [...]
        Once the Count mentioned in Bach's presence that he would like to have some clavier pieces for Goldberg,
        which should be of such a smooth and somewhat lively character that he might be a little cheered up by
        them in his sleepless nights. Bach thought himself best able to fulfill this wish by means of Variations,
        the writing of which he had until then considered an ungrateful task on account of the repeatedly similar
        harmonic foundation. But since at this time all his works were already models of art, such also these
        variations became under his hand. Yet he produced only a single work of this kind.
        Thereafter the Count always called them his variations.
        He never tired of them, and for a long time sleepless nights meant:
        “Dear Goldberg, do play me one of my variations.” Bach was perhaps never so rewarded for one of his works
        as for this.
        The Count presented him with a golden goblet filled with 100 Louis d'or.
        Nevertheless, even had the gift been a thousand times larger, their artistic value would not yet have been
        paid for.
      }
    }
  }
}

\markup \column \abs-fontsize #10 {
  \vspace #1
  \line {
    \hspace #2
    Forkel wrote his biography in 1802, more than 60 years after the events related, and its accuracy has been
  }
  \line {
    \hspace #2
    questioned. The lack of dedication on the title page also makes the tale of the commission unlikely.
  }
  \line {
    \hspace #2
    Goldberg's age at the time of publication (14 years) has also been cited as grounds for doubting Forkel's
  }
  \line {
    \hspace #2
    tale, although it must be said that he was known to be an accomplished keyboardist and sight-reader.
  }
  \null
  \line {
    \hspace #2
    After a statement of the \italic aria at the beginning of the piece, there are thirty variations
    (and the aria \italic da \italic capo).
  }
  \line {
    \hspace #2
    The variations do not follow the melody of the aria, but rather
    \italic { use its bass line and chord progression. }
  }
  \line {
    \hspace #2
    Every third variation in the series of 30 is a \italic canon, following an ascending pattern.
    Thus, variation 3 is
  }
  \line {
    \hspace #2
    a canon at the unison, variation 6 is a canon at the second, variation 9 is a canon at the third, and so on
  }
  \line {
    \hspace #2
    until variation 27, which is a canon at the ninth. The final variation, instead of being the expected canon
  }
  \line {
    \hspace #2
    in the tenth, is a \italic quodlibet
    (a composition that combines the theme with a few polular melodies in counterpoint,
  }
  \line {
    \hspace #2
    in a light-hearted, humorous manner.)
  }
  \line {
    \hspace #2
    The entire set of variations can be seen as being divided into two halves, clearly marked by the grand
  }
  \line {
    \hspace #2
    \italic { French overture } (variatio 16).
    The note-for-note repetition of the aria at the beginning (aria da capo) makes
  }
  \line {
    \hspace #2
    the composition even more symmetrical.
  }
}


\markup \column \abs-fontsize #10 {
  \null\null
  \line {
    \hspace #2
    [\italic { freely taken from Wikipedia }]
  }
}
\pageBreak

\markup \center-column {
  \null\null\null
  \line {
    \hspace #18
    \general-align #Y #DOWN {
      \epsfile #X #72 #"Johann-Sebastian-Bach-oil-canvas-Elias-Gottlieb-1746.eps"
    }
  }
  \null
  \line \italic {
    \hspace #18
    { \bold "Johann Sebastian Bach" } \char ##x2014 "oil canvas Elias Gottlob Haußmann (1746)"
  }
  \null
}

\markup \column \abs-fontsize #10 {
  \null
  \line {
    \hspace #2
    When Bach's personal copy of the printed edition of the “Goldberg Variations” was discovered in 1974, it was
  }
  \line {
    \hspace #2
    found to include an \italic { appendix in the form of fourteen canons } built on the first eight bass notes
    from the aria.
  }
  \line {
    \hspace #2
    It is speculated that the number 14 refers to the ordinal values of the letters in the composer's name:
  }
}
\markup \center-column \abs-fontsize #10 \italic {
  \null
  \fill-line {
    "B(2) + A(1) + C(3) + H(8) = 14."
  }
}
\markup \column \abs-fontsize #10 {
  \null
  \line {
    \hspace #2
    The portrait of Bach commissioned for his entry into Mizler's
    \italic { “Sozietät der Musicalischen Wissenschaften” }
  }
  \line {
    \hspace #2
    (Bach waited until he was the 14th member to be admitted to the society), depicts him holding the
    manuscript
  }
  \line {
    \hspace #2
    to BWV 1076, which is also the thirteenth canon in the Goldberg Canon cycle:
  }
  \null
}

\include "JS-Bach-BWV1087-13-canon-triplex-six.ly"
