![Release Status](https://img.shields.io/badge/status-in--progress-brightgreen.svg)
[![License](https://img.shields.io/badge/License-CC--BY--NC--4.0-blue.svg)](https://spdx.org/licenses/CC-BY-4.0.html)
[![Latest Release](https://img.shields.io/badge/download-latest--version-blue.svg)](https://github.com/madrisan/open-scores/releases)

# :musical_score: Open Scores for Piano encoded using LilyPond

**Open Scores for Piano and and Piano trascriptions encoded using the LilyPond language and tools**

[LilyPond](https://lilypond.org/) is a music engraving program, devoted to producing the highest-quality sheet music possible.
It brings the aesthetics of traditionally engraved music to computer printouts.
LilyPond is free software and part of the [GNU Project](https://gnu.org/).

## Scores in *pdf* format

The following *pdf* files can be generated from source code, but have been added here for convenience.
If you prefer to create these files yourself (and midi files as well), you can skip to the next section.

Latest release: [Open Scores for Piano v48](https://github.com/madrisan/open-scores/releases)

The source code was compiled with `GNU LilyPond 2.25.12 (running Guile 2.2)` (Fedora Linux 39).

![Open Musical Scores Logo](images/SheetMusic-icon.png)

| Author | Work | Status | :link: Scores |
|---|---|:---:|:---:|
| Hans Erich Apostel | Kubiniana Op. 13, *10 Klavierstücke* | II, III, VI, VII, IX | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Hans-Erich-Apostel-Kubiniana-op.13.pdf) |
| Alban Berg | Klaviersonate Op. 1 | *stalled* :zzz: |   |
| Johannes Brahms | Rapsodie Es-Dur, *from 4 Klavierstücke Op. 119* | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Johannes-Brahms-Klavierstucke-op.119.pdf) |
|  | Rapsodie h-moll Op.79. I | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Johannes-Brahms-Rhapsodie-op.op.79-nr.1.pdf) |
|  | Rapsodie g-moll Op.79. II | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Johannes-Brahms-Rhapsodie-op.op.79-nr.2.pdf) |
| Johann Sebastian Bach :zero: | Clavierübung Teil I - Partiten BWV 825 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV825-Partita-1.pdf) |
|  | Clavierübung Teil I - Partiten I BWV 825 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV825-Partita-1.pdf) |
|  | Clavierübung Teil I - Partiten II BWV 826 | to review :grey_question: | [pdf](https://github.com/madrisan/open-scores/releases/download/v49/JS-Bach-BWV826-Partita-2.pdf) |
|  | Clavierübung Teil I - Partiten III BWV 827 | :x: |  |
|  | Clavierübung Teil I - Partiten IV BWV 828 | in progress :notes: |  |
|  | Clavierübung Teil I - Partiten V BWV 829 | :x: |  |
|  | Clavierübung Teil I - Partiten VI BWV 830 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV830-Partita-6.pdf) |
|  | Clavierübung Teil II - Italienisches Konzert BWV 971 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV971-Italienisches-Konzert.pdf) |
|  | Clavierübung Teil II - Ouvertüre nach französischer Art BWV 831 | :x: |  |
|  | Clavierübung Teil IV - Goldberg Variationen BWV 988 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV988-Goldberg-Variationen.pdf) |
|  | Clavierübung Teil V (?) - Die Kunst der Fuga BWV 1080 :one: | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV1080-Die-Kunst-der-Fuge.pdf) |
|  | Inventionen BWV 772-786 :two: | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV772-801-Inventionen-und-Sinfonien.pdf) |
|  | Sinfonien BWV 787-801 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV772-801-Inventionen-und-Sinfonien.pdf) |
|  | Suite Anglaises BWV 806-811 | Suite IV BWV 809 | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV809-Suite-Anglaise-4.pdf) |
|  | Praeludium und Fughetta in G-Dur BWV 902 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-Praeludium-und-Fughetta-BWV902.pdf) |
|  | Neun kleine Präludien BWV 924-932 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV924-932-Neun-kleine-Praludien.pdf) |
|  | Sechs kleine Präludien BWV 933-938 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV933-938-Sechs-kleine-Praludien.pdf) |
|  | Praeludium Fuge und Allegro BWV 998 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV998-Praeludium-Fuge-und-Allegro.pdf) |
|  | Musikalisches Opfer: Ricercar a 3, Ricercar a 6 BWV 1079 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV1079-Musikalisches-Opfer.pdf) |
| Bach / Busoni | Chorale Prelude - In dir ist Freude BWV 615 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-Busoni-Chorale-Prelude-BWV615.pdf) |
|  | Chorale Prelude - Ich ruf zu dir, Herr Jesu Christ BWV 639 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-Busoni-Chorale-Prelude-BWV639.pdf) |
|  | Chorale Prelude - Nun komm’ der Heiden Heiland BWV 659 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Bach-Busoni-Chorale-Prelude-BWV659.pdf) |
|  | Chromatische Fantasie und Fugue BWV 903 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-Busoni-Chromatische-Fantasie-und-Fugue-BWV903.pdf) |
|  | Chaconne für violine allein BWV 1004 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-Busoni-Chaconne-fur-violine-allein-BWV1004.pdf) |
| Bach / Liszt | Präludium und Fuge BWV543 S462 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Bach-Liszt-Praludium-und-Fuge-BWV543-S462.pdf) |
| Bach / me | Chorale Prelude - Jesu meine Freude BWV 610 :three: | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV610-Jesu-meine-Freude.pdf) |
|  | Chorale Prelude - Nun komm’ der Heiden Heiland BWV 659 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-BWV659-Chorale-Prelude.pdf) |
| Bach / Petri | Schafe können sicher weiden BWV 208 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-Petri-Schafe-konnen-sicher-weiden-BWV208.pdf) |
| Bach / Stark | Siciliana BWV 103 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-Stark-Siciliano-BWV1031.pdf) |
| Bach / Stradal | Organ Sonata 4 Andante BWV528 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/JS-Bach-Stradal-Organ-Sonata-4-Andante-BWV528.pdf) |
| Ludwig van Beethoven | Klaviersonate Nr.8 Opus 13 - "Grande Sonate Pathétique" | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Ludwig-van-Beethoven-Klaviersonate-8-op.13.pdf) |
| Alfredo Casella | Deux Contrastes op.31 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Alfredo-Casella-Deux-Contrastes-op.31.pdf) |
| Baldassare Galuppi |Sonata no. 5 in Do maggiore :four: | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Baldassare-Galuppi-Sonata-5.pdf) |
| Mikhail Glinka | Nocturne :five: | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Mikhail-Glinka-Nocturne.pdf) |
| Gluck / Sgambati | Mélodie de Gluck depuis "Orfeo ed Euridice" | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Christoph-Willibald-Gluck-Orfeo-Melodie-Sgambati.pdf) |
| Rued Langgaard | Insektarium, 9 Puzzle Pictures BVN 134 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Rued-Langgaard-Insektarium-BVN-134.pdf) |
| Franz Liszt | Trübe Wolken (Nuages Gris) S.199 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Franz-Liszt-Nuages-Gris-S.199.pdf) |
|  | Am Grabe Richard Wagners S.202 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Franz-Liszt-Am-Grabe-Richard-Wagners-S.202.pdf) |
|  | Trauervorspiel und Trauermarsch S.206 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Franz-Liszt-Trauervorspiel-und-Trauermarsch-S.206.pdf) |
|  | En rêve (Nocturne) S.207 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Franz-Liszt-En-reve-Nocturne-S.207.pdf) |
|  | Unstern (Sinistre) S.208 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Franz-Liszt-Unstern-S.208.pdf) |
| Ildebrando Pizzetti | Sogno | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Ildebrando-Pizzetti-Sogno.pdf) |
| Domenico Scarlatti | Sonata K. 1 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Domenico-Scarlatti-Sonata-k1.pdf) |
| Domenico Scarlatti | Sonata K. 30 (Cat's fugue) | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Domenico-Scarlatti-Sonata-k30.pdf) |
| Domenico Scarlatti | Sonata K. 55 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Domenico-Scarlatti-Sonata-k55.pdf) |
| Domenico Scarlatti | Sonata K. 87 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Domenico-Scarlatti-Sonata-k87.pdf) |
| Domenico Scarlatti | Sonata K. 95 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Domenico-Scarlatti-Sonata-k95.pdf) |
| Domenico Scarlatti | Sonata K. 141 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Domenico-Scarlatti-Sonata-k141.pdf) |
| Domenico Scarlatti | Sonata K. 387 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Domenico-Scarlatti-Sonata-k387.pdf) |
| Arnold Schoenberg | Sechs kleine Klavierstücke op.19 :six: | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Arnold-Schoenberg-Sechs-Kleine-Klavierstucke-op.19.pdf) |
| Clara Schumann Wieck | Soirées Musicales op.6 | 2. Nocturne | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Clara-Schumann-Wieck-Soirees-Musicales-op.6.pdf) |
| Robert Schumann | Kinderscenen op.15 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Robert-Schumann-Kinderscenen-op.15.pdf) |
| Karol Maciej Szymanowski | Dziewięć preludiów (Nine Preludes) Op. 1 | :white_check_mark: | [pdf](https://github.com/madrisan/open-scores/releases/download/v48/Karol-Szymanowski-Nine-Preludes-op.1.pdf) |

 0. Next goal: Digitize all volumes of J.S. Bach's Clavierübung except the third one (which contains works for organ)
 1. Die Kunst der Fuga BWV 1080
    * Contrapunctus I-XIV
    * Brief notes on the completion of Contrapunctus XIV :new:
    * Canon I-IV
 2. Contains in the preface "A guide to ornaments, written in Bach's hand"
 3. Image of the J.S. Bach's [manuscript](images/js-bach-jesu-meine-freude-manuscript.png) of the Choral "*Jesu meine Freude*" (*Das Orgel-Büchlein*, p.15)
 4. [Manuscript](images/baldassare-galuppi-sonata-5-manuscript-1st-page.png) of the first page of the sonata
 5. Thanks to my harpist friend Tristan Rollet ([@Pluiesurlavitre](https://github.com/Pluiesurlavitre)) for pointing me to this beautiful romantic piece
 6. With a preface by Giancarlo Simonacci (Italian and English translation).

## How to manually create the `.pdf` and `.midi` files

This project uses `GNU autotools` for configuration and build.

If you prefer to create the *pdf* (and *midi*) files yourself, please make sure the following software requirements are installed: `GNU autotools`, `git`, `make`, and [`lilypond`](https://lilypond.org/).

Then you will need clone the repository and run `autoreconf` and `configure` to generate the required files:
```
git clone --depth 1 https://github.com/madrisan/open-scores
cd open-scores
autoreconf
./configure
```
Then execute and one of the following instructions:
```
git checkout BergA-op1
make -C alban-berg/Op_1
git checkout main
```
```
make -C src/alfredo-casella/deux-contrastes-op.31
make -C src/arnold-schoenberg/sechs-kleine-klavierstucke-op.19
make -C src/baldassare-galuppi/sonata-5-c-major
make -C src/christoph-willibald-gluck/orfeo-melodie-sgambati
make -C src/clara-schumann-wieck/soirees-musicales-op.6
make -C src/domenico-scarlatti/sonata-k001
make -C src/domenico-scarlatti/sonata-k030
make -C src/domenico-scarlatti/sonata-k055
make -C src/domenico-scarlatti/sonata-k087
make -C src/domenico-scarlatti/sonata-k095
make -C src/domenico-scarlatti/sonata-k387
make -C src/francis-poulenc/2-improvisations-fp.113
make -C src/franz-liszt/am-grabe-richard-wagners-s.202
make -C src/franz-liszt/en-reve-nocturne-s.207
make -C src/franz-liszt/nuages-gris-s.199
make -C src/franz-liszt/trauervorspiel-und-trauermarsch-s.206
make -C src/franz-liszt/unstern-s.208
make -C src/ildebrando-pizzetti/sogno
make -C src/johann-sebastian-bach/chaconne-fur-violine-busoni-BWV1004
make -C src/johann-sebastian-bach/chorale-preludes/BWV615-Busoni
make -C src/johann-sebastian-bach/chorale-preludes/BWV639-Busoni
make -C src/johann-sebastian-bach/chorale-preludes/BWV659
make -C src/johann-sebastian-bach/chorale-preludes/BWV659-Busoni
make -C src/johann-sebastian-bach/chorale-preludes/jesu-meine-freude-BWV610
make -C src/johann-sebastian-bach/chromatische-fantasie-und-fugue-BWV903-busoni
make -C src/johann-sebastian-bach/die-kunst-der-fuge-BWV1080
make -C src/johann-sebastian-bach/goldberg-variationen-BWV988
make -C src/johann-sebastian-bach/inventionen-und-sinfonien-BWV772-801
make -C src/johann-sebastian-bach/italienisches-konzert-BWV971
make -C src/johann-sebastian-bach/musikalisches-opfer-BWV1079
make -C src/johann-sebastian-bach/organ-sonata-4-andante-BWV528-stradal
make -C src/johann-sebastian-bach/partitas/BWV825
make -C src/johann-sebastian-bach/partitas/BWV826
make -C src/johann-sebastian-bach/partitas/BWV828
make -C src/johann-sebastian-bach/partitas/BWV830
make -C src/johann-sebastian-bach/praeludium-fuge-und-allegro-BWV998
make -C src/johann-sebastian-bach/praeludium-und-fughetta-BWV902
make -C src/johann-sebastian-bach/praludien/neun-kleine-praludien-BWV924-932
make -C src/johann-sebastian-bach/praludien/sechs-kleine-praludien-BWV933-938
make -C src/johann-sebastian-bach/praludium-und-fuge-liszt-BWV543-S462
make -C src/johann-sebastian-bach/schafe-konnen-sicher-weiden-BWV208
make -C src/johann-sebastian-bach/siciliano-BWV1031
make -C src/johann-sebastian-bach/suites-anglaises/BWV809
make -C src/johannes-brahms/klavierstucke-op.119
make -C src/johannes-brahms/rhapsodie-op.79-nr.1
make -C src/johannes-brahms/rhapsodie-op.79-nr.2
make -C src/karol-szymanowski/nine-preludes-op.1
make -C src/ludwig-van-beethoven/klaviersonate-8-op.13
make -C src/mikhail-glinka/nocturne
make -C src/robert-schumann/kinderscenen-op.15
make -C src/rued-langgaard/insektarium-BVN_134
```
