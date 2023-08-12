## Process this file with automake to produce Makefile.in

## Copyright (c) 2023 Davide Madrisan <davide.madrisan@gmail.com>
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
EXTRA_DIST = JS-Bach-BWV988-Goldberg-Variationen.ly \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     logo.ly \
	     parts/bach-goldberg-variationen-00-aria.ly \
	     parts/bach-goldberg-variationen-01-variatio.ly \
	     parts/bach-goldberg-variationen-02-variatio.ly \
	     parts/bach-goldberg-variationen-03-variatio.ly \
	     parts/bach-goldberg-variationen-04-variatio.ly \
	     parts/bach-goldberg-variationen-05-variatio.ly \
	     parts/bach-goldberg-variationen-06-variatio.ly \
	     parts/bach-goldberg-variationen-07-variatio.ly \
	     parts/bach-goldberg-variationen-08-variatio.ly \
	     parts/bach-goldberg-variationen-09-variatio.ly \
	     parts/bach-goldberg-variationen-10-variatio.ly \
	     parts/bach-goldberg-variationen-11-variatio.ly \
	     parts/bach-goldberg-variationen-12-variatio.ly \
	     parts/bach-goldberg-variationen-13-variatio.ly \
	     parts/bach-goldberg-variationen-14-variatio.ly \
	     parts/bach-goldberg-variationen-15-variatio.ly \
	     parts/bach-goldberg-variationen-16-variatio.ly \
	     parts/bach-goldberg-variationen-17-variatio.ly \
	     parts/bach-goldberg-variationen-18-variatio.ly \
	     parts/bach-goldberg-variationen-19-variatio.ly \
	     parts/bach-goldberg-variationen-20-variatio.ly \
	     parts/bach-goldberg-variationen-21-variatio.ly \
	     parts/bach-goldberg-variationen-22-variatio.ly \
	     parts/bach-goldberg-variationen-23-variatio.ly \
	     parts/bach-goldberg-variationen-24-variatio.ly \
	     parts/bach-goldberg-variationen-25-variatio.ly \
	     parts/bach-goldberg-variationen-26-variatio.ly \
	     parts/bach-goldberg-variationen-27-variatio.ly

all: $(BUILT_SOURCES) JS-Bach-BWV988-Goldberg-Variationen

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi parts/*.midi
	-rm -f *.pdf parts/*.pdf
