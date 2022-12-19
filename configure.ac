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
  [2.23.[0-9]*],
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
  baldassare-galuppi/Makefile \
  baldassare-galuppi/sonata-5-c-major/Makefile \
  clara-schumann-wieck/Makefile \
  clara-schumann-wieck/soirees-musicales-op.6/Makefile \
  johann-sebastian-bach/Makefile \
  johann-sebastian-bach/chromatische-fantasie-und-fugue-BWV_903/Makefile \
  johann-sebastian-bach/die-kunst-der-fuge-BWV_1080/Makefile \
  johann-sebastian-bach/italienisches-konzert-BWV_971/Makefile \
  johann-sebastian-bach/jesu-meine-freude-BWV_610/Makefile \
  johann-sebastian-bach/suites-anglaises/BWV809/Makefile \
  johann-sebastian-bach/suites-anglaises/Makefile \
  mikhail-glinka/Makefile \
  mikhail-glinka/nocturne/Makefile \
  rued-langgaard/Makefile \
  rued-langgaard/insektarium-BVN_134/Makefile \
])

AC_OUTPUT