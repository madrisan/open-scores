EXTRA_DIST = *.ly *.ily parts/*.ly
LILYPOND := lilypond

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: JS-Bach-BWV809-Suite-Anglaise-4

clean:
	-rm -f *.midi
	-rm -f *.pdf
