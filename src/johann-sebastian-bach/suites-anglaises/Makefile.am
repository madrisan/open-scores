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

EXTRA_DIST = JS-Bach-BWV806-811-Suites-Anglaises.ly \
	     Makefile.am \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     index.ly \
	     logo.ly \
	     BWV806/macros-schleifer.ly \
	     BWV806/macros-slidenotes.ly \
	     BWV806/parts/bach-suite-anglaise-1-1-prelude.ly \
	     BWV806/parts/bach-suite-anglaise-1-2-allemande.ly \
	     BWV806/parts/bach-suite-anglaise-1-3-courante-1.ly \
	     BWV806/parts/bach-suite-anglaise-1-3-courante-2.ly \
	     BWV806/parts/bach-suite-anglaise-1-4-double-1.ly \
	     BWV806/parts/bach-suite-anglaise-1-4-double-2.ly \
	     BWV806/parts/bach-suite-anglaise-1-5-sarabande.ly \
	     BWV806/parts/bach-suite-anglaise-1-6-bourree-1.ly \
	     BWV806/parts/bach-suite-anglaise-1-6-bourree-2.ly \
	     BWV806/parts/bach-suite-anglaise-1-7-gigue.ly \
	     \
	     BWV807/parts/bach-suite-anglaise-2-1-prelude.ly \
	     BWV807/parts/bach-suite-anglaise-2-2-allemande.ly \
	     BWV807/parts/bach-suite-anglaise-2-3-courante.ly \
	     BWV807/parts/bach-suite-anglaise-2-4-sarabande-1.ly \
	     BWV807/parts/bach-suite-anglaise-2-4-sarabande-2.ly \
	     BWV807/parts/bach-suite-anglaise-2-5-bourree-1.ly \
	     BWV807/parts/bach-suite-anglaise-2-5-bourree-2.ly \
	     BWV807/parts/bach-suite-anglaise-2-6-gigue.ly \
	     \
	     BWV808/parts/bach-suite-anglaise-3-1-prelude.ly \
	     BWV808/parts/bach-suite-anglaise-3-2-allemande.ly \
	     BWV808/parts/bach-suite-anglaise-3-3-courante.ly \
	     BWV808/parts/bach-suite-anglaise-3-4-sarabande.ly \
	     BWV808/parts/bach-suite-anglaise-3-5-gavotte-1.ly \
	     BWV808/parts/bach-suite-anglaise-3-5-gavotte-2.ly \
	     BWV808/parts/bach-suite-anglaise-3-6-gigue.ly \
	     \
	     BWV809/parts/bach-suite-anglaise-4-1-prelude.ly \
	     BWV809/parts/bach-suite-anglaise-4-2-allemande.ly \
	     BWV809/parts/bach-suite-anglaise-4-3-courante.ly \
	     BWV809/parts/bach-suite-anglaise-4-4-sarabande.ly \
	     BWV809/parts/bach-suite-anglaise-4-5-menuet-1.ly \
	     BWV809/parts/bach-suite-anglaise-4-5-menuet-2.ly \
	     BWV809/parts/bach-suite-anglaise-4-6-giga.ly \
	     \
	     BWV810/parts/bach-suite-anglaise-5-1-prelude.ly \
	     BWV810/parts/bach-suite-anglaise-5-2-allemande.ly \
	     BWV810/parts/bach-suite-anglaise-5-3-courante.ly \
	     BWV810/parts/bach-suite-anglaise-5-4-sarabande.ly \
	     BWV810/parts/bach-suite-anglaise-5-5-passepied-1.ly \
	     BWV810/parts/bach-suite-anglaise-5-5-passepied-2.ly \
	     BWV810/parts/bach-suite-anglaise-5-6-gigue.ly \
	     \
	     BWV811/parts/bach-suite-anglaise-6-1-prelude.ly \
	     BWV811/parts/bach-suite-anglaise-6-2-allemande.ly \
	     BWV811/parts/bach-suite-anglaise-6-3-courante.ly \
	     BWV811/parts/bach-suite-anglaise-6-4-sarabande.ly \
	     BWV811/parts/bach-suite-anglaise-6-5-double.ly \
	     BWV811/parts/bach-suite-anglaise-6-6-gavotte-1.ly \
	     BWV811/parts/bach-suite-anglaise-6-6-gavotte-2.ly \
	     BWV811/parts/bach-suite-anglaise-6-7-gigue.ly

all: $(BUILT_SOURCES) JS-Bach-BWV806-811-Suites-Anglaises

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi BWV*/parts/*.midi
	-rm -f *.pdf BWV*/parts/*.pdf

