# :musical_score: Open Scores - Musical Scores for Piano

Scores
 * [J.S. Bach Suite Anglaise IV (BWV809)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV809-Suite-Anglaise-4.pdf)
 * [Rued Langgaard - Insektarium (BVN 134)](https://github.com/madrisan/open-scores/blob/main/scores/Rued-Langgaard-Insektarium-BVN-134.pdf)

## How to manually create the `.pdf` and `.midi` files

Software requirements: `git`, [`lilypond`](https://lilypond.org/)

    git clone https://github.com/madrisan/open-scores
    cd open-scores

    # Johann Sebastian Bach - Suite Anglaise no. 4
    cd johann-sebastian-bach/suites-anglaises/BWV809
    lilypond suite-anglaise-4.ly

    # Alban Berg - Klaviersonate Op. 1 -- IN PROGRESS
    git checkout BergA-op1
    cd alban-berg/Op_1
    lilypond sonate-fur-klavier-op-1.ly

    # Rued Langgaard - Insektarium  BVN 134 -- IN PROGRESS (I-VI, IX merged to main)
    cd rued-langgaard/insektarium-BVN_134
    lilypond insektarium.ly
