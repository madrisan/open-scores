dnl Process this file with autoconf to produce a configure script.

AC_PREREQ([2.59])

AC_INIT(open-scores,
        m4_normalize(m4_include([VERSION])),
        [davide.madrisan@gmail.com])

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
  [2.24.[0-9]*],
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
  src/Makefile \
  src/baldassare-galuppi/Makefile \
  src/baldassare-galuppi/sonata-5-c-major/Makefile \
  src/clara-schumann-wieck/Makefile \
  src/clara-schumann-wieck/soirees-musicales-op.6/Makefile \
  src/hans-erich-apostel/Makefile \
  src/hans-erich-apostel/kubiniana-op.13/Makefile \
  src/johannes-brahms/Makefile \
  src/johannes-brahms/klavierstucke-op.119/Makefile \
  src/johannes-brahms/rhapsodie-op.79-nr.1/Makefile \
  src/johannes-brahms/rhapsodie-op.79-nr.2/Makefile \
  src/johann-sebastian-bach/Makefile \
  src/johann-sebastian-bach/chaconne-fur-violine-busoni-BWV1004/Makefile \
  src/johann-sebastian-bach/chorale-preludes/Makefile \
  src/johann-sebastian-bach/chorale-preludes/BWV615-Busoni/Makefile \
  src/johann-sebastian-bach/chorale-preludes/BWV639-Busoni/Makefile \
  src/johann-sebastian-bach/chorale-preludes/BWV659/Makefile \
  src/johann-sebastian-bach/chorale-preludes/BWV659-Busoni/Makefile \
  src/johann-sebastian-bach/chromatische-fantasie-und-fugue-BWV903/Makefile \
  src/johann-sebastian-bach/die-kunst-der-fuge-BWV1080/Makefile \
  src/johann-sebastian-bach/italienisches-konzert-BWV971/Makefile \
  src/johann-sebastian-bach/jesu-meine-freude-BWV610/Makefile \
  src/johann-sebastian-bach/partitas/Makefile \
  src/johann-sebastian-bach/partitas/BWV830/Makefile \
  src/johann-sebastian-bach/praludium-und-fuge-liszt-BWV543-S462/Makefile \
  src/johann-sebastian-bach/schafe-konnen-sicher-weiden-BWV208/Makefile \
  src/johann-sebastian-bach/sechs-kleine-praludien-BWV933-938/Makefile \
  src/johann-sebastian-bach/siciliano-BWV1031/Makefile \
  src/johann-sebastian-bach/suites-anglaises/Makefile \
  src/johann-sebastian-bach/suites-anglaises/BWV809/Makefile \
  src/mikhail-glinka/Makefile \
  src/mikhail-glinka/nocturne/Makefile \
  src/robert-schumann/kinderscenen-op.15/Makefile \
  src/robert-schumann/Makefile \
  src/rued-langgaard/Makefile \
  src/rued-langgaard/insektarium-BVN134/Makefile \
  template/Makefile
])

AC_OUTPUT
