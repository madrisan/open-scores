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

EXTRA_DIST = JC-Bach-W.A11-Sonata-op-17-5.ly \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     logo.ly \
	     parts/sonata-op-17-5-WA11-1-allegro.ly \
	     parts/sonata-op-17-5-WA11-2-presto.ly

all: $(BUILT_SOURCES) JC-Bach-W.A11-Sonata-op-17-5

clean-local:
	 -rm -f $(BUILT_SOURCES)
	 -rm -f *.midi parts/*.midi
	 -rm -f *.pdf parts/*.pdf
