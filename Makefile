all: render

dot: CRE_info_hash
	./spider

render: CRE-Graph.png CRE-Graph.pdf

CRE_info_hash:
	gen_CRE_info_hash

CRE-Graph.png: dot
	dot -Tpng -o CRE-Graph.png dot -Gcharset=latin1

CRE-Graph.svg: dot
	dot -Tsvg -o CRE-Graph.svg dot -Gcharset=latin1
## The svg file will be damaged. I can't tell why ...

CRE-Graph.pdf: dot
	dot -Tpdf -o CRE-Graph.pdf dot -Gcharset=latin1

clean:
	rm -f dot

