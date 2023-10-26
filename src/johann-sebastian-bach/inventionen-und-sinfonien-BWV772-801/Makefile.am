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
EXTRA_DIST = JS-Bach-BWV772-801-Inventionen-und-Sinfonien.ly
	     covercolor.ly.in \
	     global.ly \
	     header.ily \
	     jsbach-clavier-buchlein-ornament-table.ly \
	     jsbach-clavier-buchlein-ornament-table.eps \
	     logo.ly \
	     ossiasetup.ly \
	     parts/bach-invention-01.ly \
	     parts/bach-invention-01a.ly \
	     parts/bach-invention-02.ly \
	     parts/bach-invention-03.ly \
	     parts/bach-invention-04.ly \
	     parts/bach-invention-05.ly \
	     parts/bach-invention-06.ly \
	     parts/bach-invention-07.ly \
	     parts/bach-invention-08.ly \
	     parts/bach-invention-09.ly \
	     parts/bach-invention-10.ly \
	     parts/bach-invention-11.ly \
	     parts/bach-invention-12.ly \
	     parts/bach-invention-13.ly \
	     parts/bach-invention-14.ly \
	     parts/bach-invention-15.ly \
	     parts/bach-sinfonia-01.ly \
	     parts/bach-sinfonia-02.ly \
	     parts/bach-sinfonia-03.ly \
	     parts/bach-sinfonia-04.ly

all: $(BUILT_SOURCES) JS-Bach-BWV772-801-Inventionen-und-Sinfonien

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi parts/*.midi
	-rm -f *.pdf parts/*.pdf
