EXTRA_DIST = *.ly *.ily parts/*.ly
LILYPOND := lilypond

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: JS-Bach-BWV971-Italienisches-Konzert

clean:
	-rm -f *.midi
	-rm -f *.pdf
