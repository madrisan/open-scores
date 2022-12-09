# :musical_score: Open Scores for Piano encoded using LilyPond

[LilyPond](https://lilypond.org/) is a music engraving program, devoted to producing the highest-quality sheet music possible.
It brings the aesthetics of traditionally engraved music to computer printouts.
LilyPond is free software and part of the [GNU Project](https://gnu.org/).

![Open Musical Scores Logo](images/SheetMusic-icon.png)

## Scores in *pdf* format

The following *pdf* can be generated from the source code, but they have been added here for convenience.
If you prefer to create these files (and *midi* ones) yourself, skip to the next section.

### List by authors

#### Alban Berg (1885-1935)

 * [Klaviersonate Op. 1](https://github.com/madrisan/open-scores/blob/BergA-op1/scores/Alban-Berg-Sonate-fur-Klavier-op-1.pdf) -- *in progress*

#### Baldassare Galuppi (1706-1785)

 * [Sonata no. 5 in Do maggiore](https://github.com/madrisan/open-scores/blob/main/scores/Baldassare-Galuppi-Sonata-5.pdf)

You can see here the [manuscript](images/baldassare-galuppi-sonata-5-manuscript-1st-page.png) of the first page of the sonata.

#### Johann Sebastian Bach (1685-1750)

 * [Jesu meine Freude (BWV610)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV610-Jesu-meine-Freude.pdf)
 * [Suite Anglaise IV (BWV809)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV809-Suite-Anglaise-4.pdf)
 * [Chromatische Fantasie und Fugue (BWV903)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV903-Chromatische-Fantasie-und-Fugue.pdf)
 * [Italienisches Konzert (BWV971)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV971-Italienisches-Konzert.pdf)
 * [Die Kunst der Fuge (BWV1080)](https://github.com/madrisan/open-scores/blob/main/scores/JS-Bach-BWV1080-Die-Kunst-der-Fuge.pdf) -- *in progress*: contrapunctus I, II

Image of the J.S. Bach's [manuscript](images/js-bach-jesu-meine-freude-manuscript.png) of the Choral "*Jesu meine Freude*" (*Das Orgel-Büchlein*, p.15).

#### Mikhail-Glinka (1804-1857)

 * [Nocturne](https://github.com/madrisan/open-scores/blob/main/scores/Mikhail-Glinka-Nocturne.pdf)

#### Rued Langgaard (1893-1952)

 * [Insektarium (BVN 134)](https://github.com/madrisan/open-scores/blob/main/scores/Rued-Langgaard-Insektarium-BVN-134.pdf)

## How to manually create the `.pdf` and `.midi` files

If you prefer to create these *pdf* (and *midi*) files yourself, please make sure the following software requirements are installed: `git`, [`lilypond`](https://lilypond.org/).
Then execute the commands
```
git clone https://github.com/madrisan/open-scores github-madrisan-open-scores
cd github-madrisan-open-scores
```
and one of the following instructions:
```
git checkout BergA-op1
cd alban-berg/Op_1
lilypond sonate-fur-klavier-op-1.ly
```
```
make baldassare-galuppi-sonata-5-c-major
make johann-sebastian-bach-chromatische-fantasie-und-fugue
make johann-sebastian-bach-italienisches-konzert
make johann-sebastian-bach-jesu-meine-freude
make johann-sebastian-bach-suite-anglaise-4
make mikhail-glinka-nocturne
make rued-langgaard-insektarium
```
