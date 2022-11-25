LILYPOND := lilypond
ALL_TARGETS := baldassare-galuppi-sonata-5-c-major \
	johann-sebastian-bach-chromatische-fantasie-und-fugue \
	johann-sebastian-bach-italienisches-konzert \
	johann-sebastian-bach-jesu-meine-freude \
	johann-sebastian-bach-suite-anglaise-4 \
	johann-sebastian-bach-suite-anglaise-4

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

all: $(ALL_TARGETS)

baldassare-galuppi-sonata-5-c-major: baldassare-galuppi/sonata-5-c-major/sonata-5
johann-sebastian-bach-chromatische-fantasie-und-fugue: johann-sebastian-bach/chromatische-fantasie-und-fugue-BWV_903/chromatische-fantasie-und-fugue
johann-sebastian-bach-italienisches-konzert: johann-sebastian-bach/italienisches-konzert-BWV_971/italienisches-konzert
johann-sebastian-bach-jesu-meine-freude: johann-sebastian-bach/jesu-meine-freude-BWV_610/jesu-meine-freude
johann-sebastian-bach-suite-anglaise-4: johann-sebastian-bach/suites-anglaises/BWV809/suite-anglaise-4
rued-langgaard-insektarium: rued-langgaard/insektarium-BVN_134/insektarium

# short targets (aliases)
insektarium: rued-langgaard-insektarium
jesu-meine-freude: johann-sebastian-bach-jesu-meine-freude
italienisches-konzert: johann-sebastian-bach-italienisches-konzert
chromatische-fantasie-und-fugue: johann-sebastian-bach-chromatische-fantasie-und-fugue
chromatische-fantasie: johann-sebastian-bach-chromatische-fantasie-und-fugue
suite-anglaise-4: johann-sebastian-bach-suite-anglaise-4

clean:
	rm -f baldassare-galuppi/sonata-5-c-major/*.pdf
	rm -f johann-sebastian-bach/chromatische-fantasie-und-fugue-BWV_903/*.pdf
	rm -f johann-sebastian-bach/italienisches-konzert-BWV_971/*.pdf
	rm -f johann-sebastian-bach/jesu-meine-freude-BWV_610/*.pdf
	rm -f johann-sebastian-bach/suites-anglaises/BWV809/*.pdf
	rm -f rued-langgaard/insektarium-BVN_134/*.pdf

.PHONY: all clean $(ALL_TARGETS)
