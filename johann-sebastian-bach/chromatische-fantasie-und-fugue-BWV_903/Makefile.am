EXTRA_DIST = *.ly *.ily parts/*.ly
LILYPOND := lilypond

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: JS-Bach-BWV903-Chromatische-Fantasie-und-Fugue

clean:
	-rm -f *.midi
	-rm -f *.pdf
