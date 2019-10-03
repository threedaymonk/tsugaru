TRANSCRIBED = $(wildcard transcribed/*.ly)
TO_CONVERT = $(patsubst transcribed/%.ly,ly/%.ly,$(TRANSCRIBED))
SRCS = $(wildcard ly/*.ly) $(TO_CONVERT)
PDFS = $(patsubst ly/%.ly,publish/%.pdf,$(SRCS))
LYS = $(patsubst ly/%.ly,publish/%.ly,$(SRCS))

.PHONY: convert publish clean

publish: $(PDFS) $(LYS) convert

convert: $(TO_CONVERT)

clean:
	rm -f publish/*.pdf publish/*.ly

ly/%.ly: transcribed/%.ly
	ruby lilypond-shamisen/convert/convert.rb $< > $@.tmp
	mv $@.tmp $@

publish/%.ly: ly/%.ly
	sed 's/REVISION/$(shell git rev-list --count HEAD -- $<)/' $< > $@

publish/%.pdf: publish/%.ly lilypond-shamisen/shamisen.ly
	lilypond --include lilypond-shamisen --pdf --output .$*.tmp $<
	mv .$*.tmp.pdf $@

lilypond-shamisen/shamisen.ly:
	git submodule init
	git submodule update
