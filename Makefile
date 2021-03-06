DotFlags=-Gcharset=latin1
.PHONY: clean all-clean

all: render interlocutor-hitlist.txt duration-hitlist.txt

CRE-Graph.dot: CRE_info_hash
	./spider

more-than-one-interlocutor.dot: CRE_info_hash
	./more-than-one-interlocutor

interlocutor-hitlist.txt: CRE_info_hash
	./interlocutor-hitlist > $@

duration-hitlist.txt: CRE_info_hash
	./duration-hitlist > $@

render: render-png render-pdf

render-png: CRE-Graph.png more-than-one-interlocutor.png

render-pdf: CRE-Graph.pdf more-than-one-interlocutor.pdf

render-svg: CRE-Graph.svg more-than-one-interlocutor.svg

CRE_info_hash:
	./gen_CRE_info_hash

CRE-Graph.png: CRE-Graph.dot
	dot -Tpng -o $@ $^ $(DotFlags)

CRE-Graph.svg: CRE-Graph.dot
	dot -Tsvg -o $@ $^ $(DotFlags)
## The svg file will be damaged. I can't tell why ...

CRE-Graph.pdf: CRE-Graph.dot
	dot -Tpdf -o $@ $^ $(DotFlags)

more-than-one-interlocutor.png: more-than-one-interlocutor.dot
	dot -Tpng -o $@ $^ $(DotFlags)

more-than-one-interlocutor.svg: more-than-one-interlocutor.dot
	dot -Tsvg -o $@ $^ $(DotFlags)

more-than-one-interlocutor.pdf: more-than-one-interlocutor.dot
	dot -Tpdf -o $@ $^ $(DotFlags)

clean:
	rm -f *.dot CRE_info_hash

all-clean: clean
	rm -f *.png *.pdf *.svg interlocutor-hitlist.txt duration-hitlist.txt:
