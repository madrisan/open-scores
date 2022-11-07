# :musical_score: Open Musical Scores for Piano encoded using LilyPond

[LilyPond](https://lilypond.org/) is a music engraving program, devoted to producing the highest-quality sheet music possible.
It brings the aesthetics of traditionally engraved music to computer printouts.
LilyPond is free software and part of the [GNU Project](https://gnu.org/). 

![Open Musical Scores Logo](images/SheetMusic-icon.png)

## Scores in *pdf* format

The following *pdf* can be generated from the source code, but they have been added here for convenience.
If you prefer to create these files (and *midi* ones) yourself, skip to the next section.

### List by authors

#### Alban Berg

 * [Klaviersonate Op. 1](https://github.com/madrisan/open-scores/blob/BergA-op1/scores/Alban-Berg-Sonate-fur-Klavier-op-1.pdf) -- *in progress*

#### Baldassare Galuppi

 * [Sonata no. 5 in Do maggiore](https://github.com/madrisan/open-scores/blob/main/scores/Baldassare-Galuppi-Sonata-5.pdf)

#### Johann Sebastian Bach

 * [Suite Anglaise IV (BWV809)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV809-Suite-Anglaise-4.pdf)
 * [Italienisches Konzert (BWV971)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV971-Italienisches-Konzert.pdf)

#### Rued Langgaard

 * [Insektarium (BVN 134), *I-VI, IX only*](https://github.com/madrisan/open-scores/blob/main/scores/Rued-Langgaard-Insektarium-BVN-134.pdf)

## How to manually create the `.pdf` and `.midi` files

If you prefer to create these *pdf* (and *midi*) files yourself, please make sure the following software requirements are installed: `git`, [`lilypond`](https://lilypond.org/).
Then execute the following commands
```
git clone https://github.com/madrisan/open-scores github-madrisan-open-scores
cd github-madrisan-open-scores
```
and one of the instruction blocks:
```
# Alban Berg - Klaviersonate Op. 1
git checkout BergA-op1
cd alban-berg/Op_1
lilypond sonate-fur-klavier-op-1.ly
```
```
# Baldassare Galuppi - Sonata no. 5 in Do maggiore
make baldassare-galuppi-sonata-5-c-major
```
```
# Johann Sebastian Bach - BWV809 - Suite Anglaise no. 4
make johann-sebastian-bach-suites-anglaises
```
```
# Johann Sebastian Bach - BWV971 - Italienisches Konzert
make johann-sebastian-bach-italienisches-konzert
```
```
# Rued Langgaard - BVN134 - Insektarium
make rued-langgaard-insektarium
```
