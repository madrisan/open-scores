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

EXTRA_DIST = JS-Bach-BWV946-954-Fugen.ly \
	     Makefile.am \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     index.ly \
	     logo.ly \
	     macros.ly \
	     BWV946/parts/bach-fuga-bwv946-c-dur.ly \
	     BWV947/parts/bach-fuga-bwv947-a-moll.ly \
	     BWV948/parts/bach-fuga-bwv948-d-moll.ly \
	     BWV949/parts/bach-fuga-bwv949-a-dur.ly \
	     BWV950/parts/bach-fuga-bwv950-a-dur.ly \
	     BWV951/parts/bach-fuga-bwv951-h-moll.ly \
	     BWV952/parts/bach-fuga-bwv952-c-dur.ly \
	     BWV953/parts/bach-fuga-bwv953-c-dur.ly \
	     BWV954/parts/bach-fuga-bwv954-b-dur.ly

all: $(BUILT_SOURCES) JS-Bach-BWV946-954-Fugen

clean-local:
	-rm -f $(BUILT_SOURCES)
	-rm -f *.midi
	-rm -f *.pdf
