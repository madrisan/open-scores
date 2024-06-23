dnl Process this file with autoconf to produce a configure script.

AC_PREREQ([2.59])

AC_INIT(open-scores,
        m4_normalize(m4_include([VERSION])),
        [d.madrisan@proton.me])

AC_MSG_CHECKING([for $PACKAGE_NAME version])
AC_MSG_RESULT([$PACKAGE_VERSION])

AM_INIT_AUTOMAKE([
        1.11
	foreign
        silent-rules
        tar-pax
        no-dist-gzip
        dist-bzip2
        dist-xz
        subdir-objects
        -Wno-portability
])

AM_MAINTAINER_MODE
m4_ifdef([AM_SILENT_RULES], [AM_SILENT_RULES([yes])])

dnl Locate a program and check that its version is acceptable.
dnl AC_PROG_CHECK_VER(var, namelist, version-switch,
dnl                   [version-extract-regexp], version-glob [, do-if-fail])
AC_DEFUN([AC_CHECK_PROG_VER],
[AC_CHECK_PROGS([$1], [$2])
if test -z "[$]$1"; then
  ac_verc_fail=yes
else
  # Found it, now check the version.
  AC_MSG_CHECKING([version of [$]$1])
changequote(<<,>>)dnl
  ac_prog_version=`<<$>>$1 $3 2>&1 ifelse(<<$4>>,,,
                   <<| sed -n 's/^.*patsubst(<<$4>>,/,\/).*$/\1/p'>>)`
  case $ac_prog_version in
    '') ac_prog_version="v. ?.??, bad"; ac_verc_fail=yes;;
    <<$5>>)
changequote([,])dnl
       ac_prog_version="$ac_prog_version, ok"; ac_verc_fail=no;;
    *) ac_prog_version="$ac_prog_version, bad"; ac_verc_fail=yes;;

  esac
  AC_MSG_RESULT([$ac_prog_version])
fi
ifelse([$6],,,
[if test $ac_verc_fail = yes; then
  $6
fi])
])

AC_CHECK_PROG_VER(LILYPOND, lilypond, --version,
  [GNU LilyPond \([0-9]*\.[0-9.]*\.[0-9.]*\) .running Guile .*],
  [2.2[4-5].[0-9]*],
  critic_missing="$critic_missing lilypond")

RGB_COLOR="0.80 0.90 1.00"
AC_MSG_CHECKING([for front page RGB color])
AC_MSG_RESULT([rgb-color( $RGB_COLOR )])
AC_SUBST([RGB_COLOR], [$RGB_COLOR]) # lavender blue

test -n "$critic_missing" && AC_MSG_ERROR([
*** These critical programs are missing or too old:$critic_missing
*** Check the INSTALL file for required versions.])

AC_CONFIG_FILES([\
  Makefile \
  lyinit/Makefile \
  src/Makefile \
  src/alfredo-casella/Makefile \
  src/alfredo-casella/deux-contrastes-op.31/Makefile \
  src/arnold-schoenberg/Makefile \
  src/arnold-schoenberg/sechs-kleine-klavierstucke-op.19/Makefile \
  src/baldassare-galuppi/Makefile \
  src/baldassare-galuppi/sonata-5-c-major/Makefile \
  src/christoph-willibald-gluck/Makefile \
  src/christoph-willibald-gluck/orfeo-melodie-sgambati/Makefile \
  src/clara-schumann-wieck/Makefile \
  src/clara-schumann-wieck/soirees-musicales-op.6/Makefile \
  src/domenico-scarlatti/Makefile \
  src/domenico-scarlatti/sonata-k001/Makefile \
  src/domenico-scarlatti/sonata-k030/Makefile \
  src/domenico-scarlatti/sonata-k055/Makefile \
  src/domenico-scarlatti/sonata-k087/Makefile \
  src/domenico-scarlatti/sonata-k095/Makefile \
  src/domenico-scarlatti/sonata-k141/Makefile \
  src/domenico-scarlatti/sonata-k387/Makefile \
  src/francis-poulenc/Makefile \
  src/francis-poulenc/2-improvisations-fp.113/Makefile \
  src/franz-liszt/Makefile \
  src/franz-liszt/am-grabe-richard-wagners-s.202/Makefile \
  src/franz-liszt/en-reve-nocturne-s.207/Makefile \
  src/franz-liszt/nuages-gris-s.199/Makefile \
  src/franz-liszt/trauervorspiel-und-trauermarsch-s.206/Makefile \
  src/franz-liszt/unstern-s.208/Makefile \
  src/hans-erich-apostel/Makefile \
  src/hans-erich-apostel/kubiniana-op.13/Makefile \
  src/ildebrando-pizzetti/Makefile \
  src/ildebrando-pizzetti/sogno/Makefile \
  src/johannes-brahms/Makefile \
  src/johannes-brahms/klavierstucke-op.119/Makefile \
  src/johannes-brahms/rhapsodie-op.79-nr.1/Makefile \
  src/johannes-brahms/rhapsodie-op.79-nr.2/Makefile \
  src/johann-sebastian-bach/Makefile \
  src/johann-sebastian-bach/cembalo-konzert-largo-BWV1056-kempff/Makefile \
  src/johann-sebastian-bach/chaconne-fur-violine-BWV1004-busoni/Makefile \
  src/johann-sebastian-bach/chorale-preludes/Makefile \
  src/johann-sebastian-bach/chorale-preludes/BWV615-busoni/Makefile \
  src/johann-sebastian-bach/chorale-preludes/BWV639-busoni/Makefile \
  src/johann-sebastian-bach/chorale-preludes/BWV659/Makefile \
  src/johann-sebastian-bach/chorale-preludes/BWV659-busoni/Makefile \
  src/johann-sebastian-bach/chorale-preludes/jesu-meine-freude-BWV610/Makefile \
  src/johann-sebastian-bach/chromatische-fantasie-und-fugue-BWV903-busoni/Makefile \
  src/johann-sebastian-bach/das-wohltemperierte-klavier-I/Makefile \
  src/johann-sebastian-bach/die-kunst-der-fuge-BWV1080/Makefile \
  src/johann-sebastian-bach/goldberg-variationen-BWV988/Makefile \
  src/johann-sebastian-bach/inventionen-und-sinfonien-BWV772-801/Makefile \
  src/johann-sebastian-bach/italienisches-konzert-BWV971/Makefile \
  src/johann-sebastian-bach/musikalisches-opfer-BWV1079/Makefile \
  src/johann-sebastian-bach/organ-sonata-4-andante-BWV528-stradal/Makefile \
  src/johann-sebastian-bach/ouverture-nach-franzosischer-art-BWV831/Makefile \
  src/johann-sebastian-bach/partitas/Makefile \
  src/johann-sebastian-bach/partitas/BWV825/Makefile \
  src/johann-sebastian-bach/partitas/BWV826/Makefile \
  src/johann-sebastian-bach/partitas/BWV827/Makefile \
  src/johann-sebastian-bach/partitas/BWV828/Makefile \
  src/johann-sebastian-bach/partitas/BWV829/Makefile \
  src/johann-sebastian-bach/partitas/BWV830/Makefile \
  src/johann-sebastian-bach/praludien/Makefile \
  src/johann-sebastian-bach/praludien/neun-kleine-praludien-BWV924-932/Makefile
  src/johann-sebastian-bach/praludien/sechs-kleine-praludien-BWV933-938/Makefile \
  src/johann-sebastian-bach/praeludium-fuge-und-allegro-BWV998/Makefile \
  src/johann-sebastian-bach/praeludium-und-fughetta-BWV899/Makefile \
  src/johann-sebastian-bach/praeludium-und-fughetta-BWV900/Makefile \
  src/johann-sebastian-bach/praeludium-und-fughetta-BWV901/Makefile \
  src/johann-sebastian-bach/praeludium-und-fughetta-BWV902/Makefile \
  src/johann-sebastian-bach/praludium-und-fuge-liszt-BWV543-S462/Makefile \
  src/johann-sebastian-bach/schafe-konnen-sicher-weiden-BWV208/Makefile \
  src/johann-sebastian-bach/siciliano-BWV1031-kempff/Makefile \
  src/johann-sebastian-bach/siciliano-BWV1031-stark/Makefile \
  src/johann-sebastian-bach/suites-anglaises/Makefile \
  src/johann-sebastian-bach/suites-anglaises/BWV807/Makefile \
  src/johann-sebastian-bach/suites-anglaises/BWV808/Makefile \
  src/johann-sebastian-bach/suites-anglaises/BWV809/Makefile \
  src/johann-sebastian-bach/suites-anglaises/BWV810/Makefile \
  src/karol-szymanowski/Makefile \
  src/karol-szymanowski/nine-preludes-op.1/Makefile \
  src/ludwig-van-beethoven/Makefile \
  src/ludwig-van-beethoven/klaviersonate-8-op.13/Makefile \
  src/mikhail-glinka/Makefile \
  src/mikhail-glinka/nocturne/Makefile \
  src/robert-schumann/kinderscenen-op.15/Makefile \
  src/robert-schumann/Makefile \
  src/rued-langgaard/Makefile \
  src/rued-langgaard/insektarium-BVN134/Makefile \
])

AC_OUTPUT
