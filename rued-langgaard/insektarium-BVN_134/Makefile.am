EXTRA_DIST = *.ly *.ily parts/*.ly
LILYPOND := lilypond

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: Rued-Langgaard-Insektarium-BVN-134

clean:
	-rm -f *.midi
	-rm -f *.pdf
