EXTRA_DIST = *.ly *.ily
LILYPOND := lilypond

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: Mikhail-Glinka-Nocturne

clean:
	-rm -f *.midi
	-rm -f *.pdf
