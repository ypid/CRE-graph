# About

This project shows the references between episodes of the podcast CRE http://cre.fm/ in a graph.
For this purpose I created a Perl-Script called spider to parse all required html pages.
The spider exports this information using the description language DOT.
After this the program dot can do it's job and render some nice graphs.

Call make to generate a graph from the current data.

# Resoult
* http://github.com/ypid/CRE-graph/raw/master/CRE-Graph.pdf
* http://github.com/ypid/CRE-graph/raw/master/CRE-Graph.png

# Dependencies

* Perl 5.10 and the module WWW::Mechanize
* graphviz
* make
