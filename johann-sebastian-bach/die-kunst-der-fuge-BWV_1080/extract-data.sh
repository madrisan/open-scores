#!/bin/bash
# Extract and reformat data from Mutopia files written for string ensemble
# Copyright (C) 2022 Davide Madrisan <davide.madrisan@gmail.com>

# usage: ./extract-data.ly < contrapunctusXXXX.ly
# data: https://www.mutopiaproject.org/cgibin/make-table.cgi?searchingfor=Die+Kunst+der+Fuge

Sopran_FOUND=0
Alto_FOUND=0
Tenor_FOUND=0
Bass_FOUND=0

echo 'Global = {
  \key d \minor
  \time 4/4
  \include "../global.ly"
}'

while read -r line; do
  case $line in
  sopran*) echo "
Sopran = \\context Voice = \"one\" \\relative c'' {
  \\voiceOne"
    Sopran_FOUND=1
  ;;
  alto*) echo "
Alto = \\context Voice = \"two\" \\relative c' {
  \\voiceTwo"
    Alto_FOUND=1
  ;;
  tenor*) echo "
Tenor = \\context Voice = \"three\" \\relative c' {
  \\voiceThree"
    Tenor_FOUND=1
  ;;
  bass*) echo "
Bass = \\context Voice = \"four\" \\relative c {
  \\voiceFour"
    Bass_FOUND=1
  ;;
  ""|%*) ;;
  "}") echo "$line" ;;
  *) set -- $line
     lastarg="${@: -1}"
     if [[ "$lastarg" =~ % ]]; then
       echo "  $lastarg"
       set -- "${@:1:$#-1}"
     fi
     echo "  | $@" ;;
  esac
done

echo '
\score {
  \new PianoStaff
  <<
    \accidentalStyle Score.piano
    \context Staff = "upper" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef treble'
[ "$Sopran_FOUND" = "1" ] && echo "      \Sopran"
[ "$Alto_FOUND" = "1" ] && echo "      \Alto"
echo '    >>
    \context Staff = "lower" <<
      \set Staff.midiInstrument = #"acoustic grand"
      \Global
      \clef bass'
[ "$Tenor_FOUND" = "1" ] && echo "      \Tenor"
[ "$Bass_FOUND" = "1" ] && echo "      \Bass"
echo '    >>
  >>
  \header {
    %composer = "Johann Sebastian Bach"
    %opus = "BWV 1080, X"
    subtitle = "Fuga a 4 voci"
    title = \markup {
      Contrapunctus XXXXXX
    }
  }
  \layout { }
  \midi { }
}'
