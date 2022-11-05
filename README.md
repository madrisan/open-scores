# :musical_score: Open Scores - Musical Scores for Piano

## Scores (in *pdf* format)

### Alban Berg

 * [Klaviersonate Op. 1](https://github.com/madrisan/open-scores/blob/BergA-op1/scores/Alban-Berg-Sonate-fur-Klavier-op-1.pdf) -- *in progress*

### Baldassare Galuppi

 * [Sonata no. 5 in Do maggiore](https://github.com/madrisan/open-scores/blob/main/scores/Baldassare-Galuppi-Sonata-5.pdf)

### Johann Sebastian Bach

 * [Suite Anglaise IV (BWV809)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV809-Suite-Anglaise-4.pdf)
 * [Italienisches Konzert (BWV971)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV971-Italienisches-Konzert.pdf) -- *in progress*

### Rued Langgaard

 * [Insektarium (BVN 134), *I-VI, IX only*](https://github.com/madrisan/open-scores/blob/main/scores/Rued-Langgaard-Insektarium-BVN-134.pdf)

## How to manually create the `.pdf` and `.midi` files

Software requirements: `git`, [`lilypond`](https://lilypond.org/)

    git clone https://github.com/madrisan/open-scores
    cd open-scores

    # Alban Berg - Klaviersonate Op. 1
    git checkout BergA-op1
    cd alban-berg/Op_1
    lilypond sonate-fur-klavier-op-1.ly

    # Baldassare Galuppi - Sonata no. 5 in Do maggiore
    cd /baldassare-galuppi/sonata-5-c-major
    lilypond sonata-5.ly

    # Johann Sebastian Bach - Suite Anglaise no. 4
    cd johann-sebastian-bach/suites-anglaises/BWV809
    lilypond suite-anglaise-4.ly

    # Rued Langgaard - Insektarium  BVN 134
    cd rued-langgaard/insektarium-BVN_134
    lilypond insektarium.ly
