EXTRA_DIST = *.ly *.ily parts/*.ly

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: Clara-Schumann-Wieck-Soirees-Musicales-op.6

clean:
	-rm -f *.midi parts/*.midi
	-rm -f *.pdf parts/*.pdf
