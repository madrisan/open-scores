LILYPOND = lilypond

%: %.ly
	$(LILYPOND) --pdf --output $@ $<

baldassare-galuppi-sonata-5-c-major: baldassare-galuppi/sonata-5-c-major/sonata-5
johann-sebastian-bach-italienisches-konzert: johann-sebastian-bach/italienisches-konzert-BWV_971/italienisches-konzert
johann-sebastian-bach-suite-anglaise-4: johann-sebastian-bach/suites-anglaises/BWV809/suite-anglaise-4
rued-langgaard-insektarium: rued-langgaard/insektarium-BVN_134/insektarium

# shorter make targets
insektarium: rued-langgaard-insektarium
italienisches-konzert: johann-sebastian-bach-italienisches-konzert
suite-anglaise-4: johann-sebastian-bach-suite-anglaise-4

.PHONY: clean
clean:
	rm -f baldassare-galuppi/sonata-5-c-major/*.pdf
	rm -f johann-sebastian-bach/italienisches-konzert-BWV_971/*.pdf
	rm -f johann-sebastian-bach/suites-anglaises/BWV809/*.pdf
	rm -f rued-langgaard/insektarium-BVN_134/*.pdf
