## Process this file with automake to produce Makefile.in

## Copyright (c) 2022 Davide Madrisan <d.madrisan@proton.me>
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

SUFFIXES = .in
.in:; @echo "Generating $@...";\
	sed "s,@rgb_color@,$(RGB_COLOR),g;" \
	$< > $@

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

BUILT_SOURCES = covercolor.ly
EXTRA_DIST = JS-Bach-BWV1080-Die-Kunst-der-Fuge.ly \
	     brief-notes-on-the-completion-of-contrapunctus-xiv.ly \
	     bwv1080-subjects-1-2-3-4-permutation.eps \
	     covercolor.ly.in \
	     global.ly \
	     header.ily \
	     index.ly \
	     list-of-subjects.ly \
	     logo.ly \
	     macros.ly \
	     parts/01-contrapunctus-I.ly \
	     parts/02-contrapunctus-II.ly \
	     parts/03-contrapunctus-III.ly \
	     parts/04-contrapunctus-IV.ly \
	     parts/05-contrapunctus-V.ly \
	     parts/06-contrapunctus-VI.ly \
	     parts/07-contrapunctus-VII.ly \
	     parts/08-contrapunctus-VIII.ly \
	     parts/09-contrapunctus-IX.ly \
	     parts/10-contrapunctus-X.ly \
	     parts/11-contrapunctus-XI.ly \
	     parts/12-contrapunctus-XII-II.ly \
	     parts/12-contrapunctus-XII-I.ly \
	     parts/13-contrapunctus-XIII-II.ly \
	     parts/13-contrapunctus-XIII-I.ly \
	     parts/14-contrapunctus-XIV.ly \
	     parts/15-canon-in-hypodiapason.ly \
	     parts/16-canon-alla-decima.ly \
	     parts/17-canon-alla-duodecima.ly \
	     parts/18-canon-in-hypodiatessaron.ly \
	     structure-of-the-fugues.ly

all: $(BUILT_SOURCES) JS-Bach-BWV1080-Die-Kunst-der-Fuge

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi parts/*.midi
	-rm -f *.pdf parts/*.pdf
