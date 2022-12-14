EXTRA_DIST = *.ly *.ily parts/*.ly

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: Rued-Langgaard-Insektarium-BVN-134

clean:
	-rm -f *.midi parts/*.midi
	-rm -f *.pdf parts/*.pdf
