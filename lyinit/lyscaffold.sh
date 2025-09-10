#!/usr/bin/env bash
# A simple scaffolding script for Lilypond partitions.
# Copyright (c) 2024 Davide Madrisan <d.madrisan@proton.me>

PROGNAME="${0##*/}"
PROGPATH="${0%/*}"
REVISION=3

die () { echo -e "$PROGNAME: ERROR: $1" 1>&2; exit 1; }
warning () { echo -e "$PROGNAME: WARNING: $1" 1>&2; }

usage () {
   cat <<__EOF
Usage: $PROGNAME --targetdir <targetdir> --parts [options]
       $PROGNAME --help
       $PROGNAME --version

Options:
   -c|--composer  : the data file for the composer
   -C|--no-cover  : do not create the cover
   -d|--targetdir : the directory where to create the partition
   -H|--no-header : do not create the header file
   -k|--key       : the tonality of the score(s) (default: c \\major)
   -n|--pdfname   : the name of the file containing the partition
   -o|--opus      : opus of the composition
   -p|--parts     : the partition is splitted into several files
   -P|--parts-only: only create the files in folder part
   -s|--source    : the source of the partition
   -t|--title     : title of the composition
   -y|--year      : the date of the composition
     |--part4     : 4-voice part to be added to ./parts folder

Example:
   $0 -c $PROGPATH/data/jsbach \\
     --targetdir src/johann-sebastian-bach/partitas/BWV825 \\
     --key 'bes \\major' \\
     --opus 'BWV 825' \\
     --parts \\
     --title 'Partita I' \\
     --pdfname JS-Bach-BWV825-Partita-1.pdf \\
     --source 'Bach-Gesellschaft Ausgabe, Leipzig (1853)' \\
     --year "between 1725 and 1726" \\
     --part4 bach-partita-1-1-praeludium.ly Praeludium \\
     --part4 bach-partita-1-2-allemande.ly Allemande \\
     --part4 bach-partita-1-3-corrente.ly Corrente \\
     --part4 bach-partita-1-4-sarabande.ly Sarabande  \\
     --part4 bach-partita-1-5-menuet-1.ly "Menuet I" \\
     --part4 bach-partita-1-5-menuet-2.ly "Menuet II" \\
     --part4 bach-partita-1-6-giga.ly Giga

__EOF
}

help () {
   cat <<__EOF
$PROGNAME v$REVISION - a simple scaffolding script for Lilypond partitions
Copyright (C) 2024 Davide Madrisan <d.madrisan@proton.me>

__EOF

   usage
}

lilypond_version () {
   ( set -- $(lilypond --version 2>/dev/null | head -n 1); echo "$3"; )
}

ly_opus="Unset --opus"
ly_title="Unset --title"

ly_key="c \\\\major"
ly_parts="false"
ly_parts_only="false"

ly_sed () {
  [ -n "$1" -a ! -r "$1" ] && die "ly_sed: cannot read input file: $1"
  (
     . "$ly_data"
     # footer = "Mutopia-2023/04/15"
     header_footer="$(date +'%Y/%m/%d')"
     # lastupdated = "2023 April 15"
     header_lastupdate="$(date +'%Y %B %d')"

     sed "s^@composer_firstname@^${composer_firstname}^g;
          s^@composer_lastname@^${composer_lastname}^g;
          s^@COMPOSER_LASTNAME@^${composer_lastname^^}^g;
          s^@header_composer@^${header_composer}^;
          s^@header_date@^${ly_date}^;
          s^@header_footer@^${header_footer}^;
          s^@header_lastupdate@^${header_lastupdate}^;
          s^@header_style@^${header_style}^;
          s^@instruments@^${instruments}^;
          s^@key@^${ly_key}^;
          s^@mutopiacomposer@^${mutopiacomposer}^;
          s^@mutopiainstrument@^${mutopiainstrument}^;
          s^@opus@^${ly_opus}^g;
          s^@partfile_title@^${partfile_title}^g;
          s^@source@^${ly_source}^g;
          s^@title@^${ly_title}^g;
          " < "${1:-/dev/stdin}"
  )
}

ly_parts4_files=()

while test -n "$1"; do
   case "$1" in
      --help|-h) help; exit 0 ;;
      --version|-V)
         echo "$PROGNAME v$REVISION"
         exit 0 ;;
      --composer|-c)
         ly_data="$2"; shift ;;
      --key|-k)
         ly_key="$2"; shift ;;
      --opus|-o)
         ly_opus="$2"; shift ;;
      --parts|-p)
         ly_parts="true" ;;
      --parts-only|P)
         ly_parts_only="true" ;;
      --part4)
         ly_parts4_files+=("$2")
         ly_parts4_titles+=("$3")
         shift; shift ;;
      --pdfname|-n)
         ly_pdfname="$2"; shift ;;
      --source|-s)
         ly_source="$2"; shift ;;
      --targetdir|-d)
         ly_targetdir="$2"; shift ;;
      --title|-t)
         ly_title="$2"; shift ;;
      --year|-y)
         ly_date="$2"; shift ;;
      --*|-*) die "unknown argument: $1" ;;
      *) die "unknown option: $1" ;;
    esac
    shift
done

[ "$ly_data" ] || die "you must set a --composer"
[ "$ly_date" ] || die "you must set a --year"
[ -z "$ly_pdfname" -a "$ly_parts_only" == "false" ] && die "you must set a --pdfname"
[ "$ly_source" ] || {
    warning "--source has been specified, an unidentified publisher or a forgotten cmdline arg?"
    ly_source="Unidentified Publisher"
}
[ "$ly_targetdir" ] || die "you must set a --targetdir"

[ -r "$ly_data" ] || die "file not found: $ly_data"

# remove the .pdf suffix if any
ly_mainfile="${ly_pdfname%\.pdf}"

if [ "$ly_parts_only" = "false" ]; then
   LY_STATIC_FILES="\
covercolor.ly
covercolor.ly.in
global.ly
logo.ly"
else
   LY_STATIC_FILES=""
fi

ly_version="$(lilypond_version)"
[ "$ly_version" ] || die "cannot get the Lilyond version"
echo "found Lilypond version $ly_version"

echo "creating the target folder '$ly_targetdir' ..."
mkdir -p "$ly_targetdir"
[ "$ly_parts" = "true" ] && mkdir -p "$ly_targetdir/parts"

[ "$LY_STATIC_FILES" ] && echo "copying common files ..."
for f in $LY_STATIC_FILES; do
   cp -v $PROGPATH/templates/$f "$ly_targetdir"
done

if [ "$ly_parts_only" = "false" ]; then
   echo "creating '$ly_targetdir/header.ily' ..."
   (
      ly_sed < $PROGPATH/templates/header.ily
   ) > "$ly_targetdir/header.ily"

   echo "creating '$ly_targetdir/${ly_mainfile}.ly'"
   (
      echo "\\version \"$ly_version\""
      echo
      ly_sed < $PROGPATH/templates/mainfile.ly
   ) > "$ly_targetdir/${ly_mainfile}.ly"

   echo "creating the makefile '$ly_targetdir/Makefile.am' ..."
   (
      cat $PROGPATH/templates/makefile-head
      echo
      echo "EXTRA_DIST = ${ly_mainfile}.ly \\"
      echo -e "\t     covercolor.ly.in \\"
      echo -e "\t     header.ily \\"
      echo -e "\t     global.ly \\"

      nparts="${#ly_parts4_files[@]}"

      if [[ "${!ly_parts4_files[@]}" != "0" ]]; then
         echo -e "\t     logo.ly \\"
         for i in ${!ly_parts4_files[@]}; do
             echo -en "\t     parts/${ly_parts4_files[$i]}"
             [ "$i" != "$(( $nparts - 1 ))" ] && echo " \\" || echo ""
         done
      else
         echo -e "\t     logo.ly"
      fi

      set -- $LY_COMMON_FILES
      while test -n "$1"; do
         [ "$f" = "covercolor.ly" ] && { shift; continue; }
         echo -en "\t     $1"
         [ "$2" ] && echo " \\" || echo ""
         shift
      done

      echo
      echo "all: \$(BUILT_SOURCES) $ly_mainfile"

      echo
      if [ "$ly_parts" = "true" ]; then
         cat $PROGPATH/templates/makefile-clean-parts
      else
         cat $PROGPATH/templates/makefile-clean
      fi
   ) > "$ly_targetdir/Makefile.am"
   fi

if [ "$ly_parts" = "true" ]; then
   for i in ${!ly_parts4_files[@]}; do
      partfile="${ly_parts4_files[$i]}"
      title="${ly_parts4_titles[$i]}"
      if [ -s "$ly_targetdir/parts/$partfile" ]; then
          echo "WARNING: skip non empty file: $ly_targetdir/parts/$partfile"
      else
          echo "creating $ly_targetdir/parts/$partfile ..."
          ( partfile_title="$title"
            ly_sed < $PROGPATH/templates/part-four-voices.ly ) \
               > "$ly_targetdir/parts/$partfile"
      fi
      if [ "$ly_parts_only" == "false" ]; then
         echo "updating $ly_targetdir/${ly_mainfile}.ly"
         echo "\\include \"./parts/$partfile\"" >> $ly_targetdir/${ly_mainfile}.ly
      fi
   done
else
   echo "updating $ly_targetdir/${ly_mainfile}.ly ..."
   ( partfile_title="$title"
     ly_sed < $PROGPATH/templates/single-four-voices.ly ) \
        >> $ly_targetdir/${ly_mainfile}.ly
fi

echo "
+ new project structure"
tree "$ly_targetdir"

echo "
WARNING: make sure to update
 * configure.ac
   add \"$ly_targetdir/Makefile\" to AC_CONFIG_FILES
 * if applicable, update the SUBDIRS variable of the Makefile.am files in
   ${ly_targetdir//\// \/ }
"
