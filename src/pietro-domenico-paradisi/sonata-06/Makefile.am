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

EXTRA_DIST = Pietro-Domenico-Paradisi-Toccata-La-Maggiore.ly \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     logo.ly

all: $(BUILT_SOURCES) Pietro-Domenico-Paradisi-Toccata-La-Maggiore

clean-local:
	 -rm -f $(BUILT_SOURCES)
	 -rm -f *.midi
	 -rm -f *.pdf
