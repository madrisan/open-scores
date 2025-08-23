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

EXTRA_DIST = Andrea-Turchetto-Composizioni.ly \
	     andrea-turchetto.eps \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     index.ly \
	     logo.ly \
	     parts/turchetto-canon-in-F-sharp-minor.ly \
	     parts/turchetto-chromatic-canon.ly \
	     parts/turchetto-fuga-the-final-countdown.ly \
	     parts/turchetto-intermezzo-in-B-major.ly

all: $(BUILT_SOURCES) Andrea-Turchetto-Composizioni

clean-local:
	 -rm -f $(BUILT_SOURCES)
	 -rm -f *.midi
	 -rm -f *.pdf
