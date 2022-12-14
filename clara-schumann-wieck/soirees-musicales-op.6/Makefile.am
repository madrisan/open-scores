EXTRA_DIST = *.ly *.ily parts/*.ly

LILYPOND := lilypond

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: Clara-Schumann-Wieck-Soirees-Musicales-op.6

clean:
	-rm -f *.midi
	-rm -f *.pdf
