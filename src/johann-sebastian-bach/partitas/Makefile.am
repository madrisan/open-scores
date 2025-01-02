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

EXTRA_DIST = JS-Bach-BWV825-830-Partiten.ly \
	     Makefile.am \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     index.ly \
	     logo.ly \
	     BWV825/parts/bach-partita-1-1-praeludium.ly \
	     BWV825/parts/bach-partita-1-2-allemande.ly \
	     BWV825/parts/bach-partita-1-3-corrente.ly \
	     BWV825/parts/bach-partita-1-4-sarabande.ly \
	     BWV825/parts/bach-partita-1-5-menuet-1.ly \
	     BWV825/parts/bach-partita-1-5-menuet-2.ly \
	     BWV825/parts/bach-partita-1-6-giga.ly \
	     \
	     BWV826/parts/bach-partita-2-2-allemande.ly \
	     BWV826/parts/bach-partita-2-3-courante.ly \
	     BWV826/parts/bach-partita-2-4-sarabande.ly \
	     BWV826/parts/bach-partita-2-5-rondeau.ly \
	     BWV826/parts/bach-partita-2-6-capriccio.ly \
	     BWV826/parts/bach-partita-2-1-sinfonia.ly \
	     \
	     BWV827/parts/bach-partita-3-1-fantasia.ly \
	     BWV827/parts/bach-partita-3-2-allemande.ly \
	     BWV827/parts/bach-partita-3-3-corrente.ly \
	     BWV827/parts/bach-partita-3-4-sarabande.ly \
	     BWV827/parts/bach-partita-3-5-burlesca.ly \
	     BWV827/parts/bach-partita-3-6-scherzo.ly \
	     BWV827/parts/bach-partita-3-7-gigue.ly \
	     \
	     BWV828/parts/bach-partita-4-1-ouverture.ly \
	     BWV828/parts/bach-partita-4-2-allemande.ly \
	     BWV828/parts/bach-partita-4-3-courante.ly \
	     BWV828/parts/bach-partita-4-4-aria.ly \
	     BWV828/parts/bach-partita-4-5-sarabande.ly \
	     BWV828/parts/bach-partita-4-6-menuet.ly \
	     BWV828/parts/bach-partita-4-7-gigue.ly \
	     \
	     BWV829/parts/bach-partita-5-1-praeludium.ly \
	     BWV829/parts/bach-partita-5-2-allemande.ly \
	     BWV829/parts/bach-partita-5-3-courante.ly \
	     BWV829/parts/bach-partita-5-4-sarabande.ly \
	     BWV829/parts/bach-partita-5-5-minuetto.ly \
	     BWV829/parts/bach-partita-5-6-passepied.ly \
	     BWV829/parts/bach-partita-5-7-gigue.ly \
	     \
	     BWV830/parts/bach-partita-6-1-toccata.ly \
	     BWV830/parts/bach-partita-6-2-allemanda.ly \
	     BWV830/parts/bach-partita-6-3-corrente.ly \
	     BWV830/parts/bach-partita-6-4-air.ly \
	     BWV830/parts/bach-partita-6-5-sarabande.ly \
	     BWV830/parts/bach-partita-6-6-gavotta.ly \
	     BWV830/parts/bach-partita-6-7-gigue.ly

all: $(BUILT_SOURCES) JS-Bach-BWV825-830-Partiten

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi BWV*/parts/*.midi
	-rm -f *.pdf BWV*/parts/*.pdf
