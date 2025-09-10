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

EXTRA_DIST = Franco-Margola-Sei-sonatine-facili.ly \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     logo.ly \
	     parts/margola-6-sonatine-facili-1-allegro.ly \
	     parts/margola-6-sonatine-facili-2-allegro-giocoso.ly \
	     parts/margola-6-sonatine-facili-3-andante-piuttosto-lento.ly \
	     parts/margola-6-sonatine-facili-4-allegro-giusto.ly \
	     parts/margola-6-sonatine-facili-5-andantino.ly \
	     parts/margola-6-sonatine-facili-6-allegro.ly

all: $(BUILT_SOURCES) Franco-Margola-Sei-sonatine-facili

clean-local:
	 -rm -f $(BUILT_SOURCES)
	 -rm -f *.midi parts/*.midi
	 -rm -f *.pdf parts/*.pdf
