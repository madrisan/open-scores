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

EXTRA_DIST = JS-Bach-BWV846-869-Das-Wohltemperierte-Klavier-I.ly \
	     covercolor.ly.in \
	     global.ly \
	     header.ily \
	     logo.ly \
	     macros.ly

all: $(BUILT_SOURCES) JS-Bach-BWV846-869-Das-Wohltemperierte-Klavier-I

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi BWV*/*.midi
	-rm -f *.pdf BWV*/*.pdf

