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

EXTRA_DIST = JS-Bach-BWV830-Partita-4.ly \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     logo.ly \
	     parts/bach-partita-4-1-ouverture.ly \
	     parts/bach-partita-4-2-allemande.ly \
	     parts/bach-partita-4-3-corrente.ly \
	     parts/bach-partita-4-4-aria.ly \
	     parts/bach-partita-4-5-sarabande.ly \
	     parts/bach-partita-4-6-menuet.ly \
	     parts/bach-partita-4-7-gigue.ly

all: $(BUILT_SOURCES) JS-Bach-BWV830-Partita-4

clean-local:
	 -rm -f $(BUILT_SOURCES)
	 -rm -f *.midi parts/*.midi
	 -rm -f *.pdf parts/*.pdf
