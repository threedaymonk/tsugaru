TRANSCRIBED = $(wildcard transcribed/*.ly)
TO_CONVERT = $(patsubst transcribed/%.ly,ly/%.ly,$(TRANSCRIBED))
LYS = $(wildcard ly/*.ly)
PDFS = $(patsubst ly/%.ly,pdf/%.pdf,$(LYS))

.PHONY: convert pdfs clean

pdfs: $(PDFS)

convert: $(TO_CONVERT)

clean:
	rm -f pdf/*.pdf

ly/%.ly: transcribed/%.ly
	ruby lilypond-shamisen/convert.rb $< > $@.tmp
	mv $@.tmp $@

pdf/%.pdf: ly/%.ly
	lilypond --include lilypond-shamisen --output .lilypond.tmp $<
	mv .lilypond.tmp.pdf $@
