NAMES = resume resume_alt

all:
	for name in $(NAMES); do latexmk -pdf $$name.tex; done

clean:
	for name in $(NAMES); do rm -f $$name.aux $$name.bbl $$name.bcf $$name.fdb_latexmk $$name.fls $$name.log $$name.out $$name.run.xml $$name.blg $$name.toc; done
	rm -f *~

distclean: clean
	for name in $(NAMES); do rm -f $$name.pdf; done
