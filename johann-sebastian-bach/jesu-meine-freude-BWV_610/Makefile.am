EXTRA_DIST = *.ly *.ily

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: JS-Bach-BWV610-Jesu-meine-Freude

clean:
	-rm -f *.midi
	-rm -f *.pdf
