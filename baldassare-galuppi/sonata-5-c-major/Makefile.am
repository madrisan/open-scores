EXTRA_DIST = *.ly *.ily parts/*.ly

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: Baldassare-Galuppi-Sonata-5

clean:
	-rm -f *.midi
	-rm -f *.pdf
