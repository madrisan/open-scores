EXTRA_DIST = *.ly *.ily parts/*.ly

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: JS-Bach-BWV1080-Die-Kunst-der-Fuge

clean:
	-rm -f *.midi parts/*.midi
	-rm -f *.pdf parts/*.pdf
