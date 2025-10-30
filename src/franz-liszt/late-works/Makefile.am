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

EXTRA_DIST = Franz-Liszt-Late-Works.ly \
	     Franz-Liszt-by-Nadar-march-1886.eps \
	     Makefile.am \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     index.ly \
	     logo.ly \
	     ossiasetup.ly \
	     zweite-elegie-s.197/Franz-Liszt-Zweite-Elegie-S.197.ly \
	     wiegenlied-s.198/Franz-Liszt-Wiegenlied-S.198.ly \
	     nuages-gris-s.199/Franz-Liszt-Nuages-Gris-S.199.ly \
	     la-lugubre-gondola-s.200/Franz-Liszt-La-lugubre-gondola-S.200.ly \
	     richard-wagner-venezia-s.201/Franz-Liszt-Richard-Wagner-Venezia-S.201.ly \
	     am-grabe-richard-wagners-s.202/Franz-Liszt-Am-Grabe-Richard-Wagners-S.202.ly \
	     schlaflos-frage-und-antwort-s.203/Franz-Liszt-Schlaflos-Frage-und-Antwort-S.203.ly \
	     recueillement-s.204/Franz-Liszt-Recueillement-S.204.ly \
	     \
	     trauervorspiel-und-trauermarsch-s.206/Franz-Liszt-Trauervorspiel-und-Trauermarsch-S.206.ly \
	     en-reve-nocturne-s.207/Franz-Liszt-En-reve-Nocturne-S.207.ly \
	     unstern-s.208/Franz-Liszt-Unstern-S.208.ly

all: $(BUILT_SOURCES) Franz-Liszt-Late-Works

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi ./*/*.midi
	-rm -f *.pdf ./*/*.pdf
