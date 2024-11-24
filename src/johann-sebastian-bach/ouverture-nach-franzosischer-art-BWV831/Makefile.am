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

EXTRA_DIST = JS-Bach-BWV831-Ouverture-nach-Franzosischer-Art.ly \
	     covercolor.ly.in \
	     header.ily \
	     global.ly \
	     index.ly \
	     logo.ly \
	     parts/bach-ouverture-nach-franzosischer-art-1-ouverture.ly \
	     parts/bach-ouverture-nach-franzosischer-art-2-courante.ly \
	     parts/bach-ouverture-nach-franzosischer-art-3-gavotte-1.ly \
	     parts/bach-ouverture-nach-franzosischer-art-3-gavotte-2.ly \
	     parts/bach-ouverture-nach-franzosischer-art-4-passepied-1.ly \
	     parts/bach-ouverture-nach-franzosischer-art-4-passepied-2.ly \
	     parts/bach-ouverture-nach-franzosischer-art-5-sarabande.ly \
	     parts/bach-ouverture-nach-franzosischer-art-6-bourree-1.ly \
	     parts/bach-ouverture-nach-franzosischer-art-6-bourree-2.ly \
	     parts/bach-ouverture-nach-franzosischer-art-7-gigue.ly \
	     parts/bach-ouverture-nach-franzosischer-art-8-echo.ly

all: $(BUILT_SOURCES) JS-Bach-BWV831-Ouverture-nach-Franzosischer-Art

clean-local:
	 -rm -f $(BUILT_SOURCES)
	 -rm -f *.midi parts/*.midi
	 -rm -f *.pdf parts/*.pdf
