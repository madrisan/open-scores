EXTRA_DIST = *.ly *.ily

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: Mikhail-Glinka-Nocturne

clean:
	-rm -f *.midi
	-rm -f *.pdf
