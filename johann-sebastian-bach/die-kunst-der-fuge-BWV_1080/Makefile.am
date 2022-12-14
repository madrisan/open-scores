EXTRA_DIST = *.ly *.ily parts/*.ly
LILYPOND := lilypond

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: JS-Bach-BWV1080-Die-Kunst-der-Fuge

clean:
	-rm -f *.midi
	-rm -f *.pdf
