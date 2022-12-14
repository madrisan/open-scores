EXTRA_DIST = *.ly *.ily parts/*.ly

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: JS-Bach-BWV809-Suite-Anglaise-4

clean:
	-rm -f *.midi parts/*.midi
	-rm -f *.pdf parts/*.pdf
