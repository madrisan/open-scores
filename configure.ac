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
