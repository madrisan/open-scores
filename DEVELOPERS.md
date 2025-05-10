# Instructions for Developers

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
make -C src/dietric-buxtehude/canzonetta-in-a-BuxWV225
make -C src/domenico-scarlatti/sonata-k001
make -C src/domenico-scarlatti/sonata-k030
make -C src/domenico-scarlatti/sonata-k055
make -C src/domenico-scarlatti/sonata-k087
make -C src/domenico-scarlatti/sonata-k095
make -C src/domenico-scarlatti/sonata-k387
make -C src/ferruccio-busoni/drei-albumblatter-BV289
make -C src/francis-poulenc/2-improvisations-fp.113
make -C src/franz-liszt/am-grabe-richard-wagners-s.202
make -C src/franz-liszt/en-reve-nocturne-s.207
make -C src/franz-liszt/la-lugubre-gondola-s.200
make -C src/franz-liszt/nuages-gris-s.199
make -C src/franz-liszt/recueillement-s.204
make -C src/franz-liszt/sancta-dorothea-s.187
make -C src/franz-liszt/trauervorspiel-und-trauermarsch-s.206
make -C src/franz-liszt/unstern-s.208
make -C src/frederic-chopin/valse
make -C src/ildebrando-pizzetti/sogno
make -C src/jan-pieterszoon-sweelinck/fantasia-cromatica-SwWV258
make -C src/johann-sebastian-bach/cantata-BWV106-actus-tragicus-sonatina
make -C src/johann-sebastian-bach/cantata-BWV54-aria
make -C src/johann-sebastian-bach/cembalo-konzert-largo-BWV1056-kempff
make -C src/johann-sebastian-bach/chaconne-fur-violine-busoni-BWV1004
make -C src/johann-sebastian-bach/chorale-preludes/BWV615-Busoni
make -C src/johann-sebastian-bach/chorale-preludes/BWV639-Busoni
make -C src/johann-sebastian-bach/chorale-preludes/BWV659
make -C src/johann-sebastian-bach/chorale-preludes/BWV659-Busoni
make -C src/johann-sebastian-bach/chorale-preludes/BWV668-ruoshi-sun
make -C src/johann-sebastian-bach/chorale-preludes/jesu-meine-freude-BWV610
make -C src/johann-sebastian-bach/chromatische-fantasie-und-fugue-BWV903-busoni
make -C src/johann-sebastian-bach/die-kunst-der-fuge-BWV1080
make -C src/johann-sebastian-bach/fantasie-und-fuge-BWV904
make -C src/johann-sebastian-bach/fantasie-und-fuge-BWV944
make -C src/johann-sebastian-bach/fuga/BWV947
make -C src/johann-sebastian-bach/fuga/BWV948
make -C src/johann-sebastian-bach/fuga/BWV951
make -C src/johann-sebastian-bach/fuga/BWV952
make -C src/johann-sebastian-bach/fuga/BWV953
make -C src/johann-sebastian-bach/goldberg-variationen-BWV988
make -C src/johann-sebastian-bach/inventionen-und-sinfonien-BWV772-801
make -C src/johann-sebastian-bach/italienisches-konzert-BWV971
make -C src/johann-sebastian-bach/musikalisches-opfer-BWV1079
make -C src/johann-sebastian-bach/organ-sonata-4-andante-BWV528-stradal
make -C src/johann-sebastian-bach/ouverture-nach-franzosischer-art-BWV831
make -C src/johann-sebastian-bach/partitas
make -C src/johann-sebastian-bach/praeludium-fuge-und-allegro-BWV998
make -C src/johann-sebastian-bach/praeludium-und-fughetta-BWV900
make -C src/johann-sebastian-bach/praeludium-und-fughetta-BWV901
make -C src/johann-sebastian-bach/praeludium-und-fughetta-BWV902
make -C src/johann-sebastian-bach/praludien/neun-kleine-praludien-BWV924-932
make -C src/johann-sebastian-bach/praludien/sechs-kleine-praludien-BWV933-938
make -C src/johann-sebastian-bach/praludium-und-fuge-liszt-BWV543-S462
make -C src/johann-sebastian-bach/schafe-konnen-sicher-weiden-BWV208
make -C src/johann-sebastian-bach/siciliano-BWV1031-kempff
make -C src/johann-sebastian-bach/siciliano-BWV1031-stark
make -C src/johann-sebastian-bach/suites-anglaises
make -C src/johannes-brahms/klavierstucke-op.119
make -C src/johannes-brahms/rhapsodie-op.79-nr.1
make -C src/johannes-brahms/rhapsodie-op.79-nr.2
make -C src/karol-szymanowski/nine-preludes-op.1
make -C src/ludwig-van-beethoven/klaviersonate-8-op.13
make -C src/mikhail-glinka/nocturne
make -C src/robert-schumann/kinderscenen-op.15
make -C src/rued-langgaard/insektarium-BVN_134
```
