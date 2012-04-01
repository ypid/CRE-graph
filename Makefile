all: spider render

dot:
	./spider

render: CRE-Graph.png CRE-Graph.pdf

CRE-Graph.png: dot
	dot -Tpng -o CRE-Graph.png dot -Gcharset=latin1

CRE-Graph.pdf: dot
	dot -Tpdf -o CRE-Graph.pdf dot -Gcharset=latin1

clean:
	rm -f dot

