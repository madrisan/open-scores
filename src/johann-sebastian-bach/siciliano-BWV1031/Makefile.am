## Process this file with automake to produce Makefile.in

## Copyright (c) 2023 Davide Madrisan <d.madrisan@proton.me>
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
EXTRA_DIST = JS-Bach-Stark-Siciliano-BWV1031.ly \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     logo.ly

all: $(BUILT_SOURCES) JS-Bach-Stark-Siciliano-BWV1031

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi
	-rm -f *.pdf
