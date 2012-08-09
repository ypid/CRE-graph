# About

This project shows the references between episodes of the podcast CRE http://cre.fm/ in a graph.
For this purpose I created a Perl-Script called spider to parse the XML podcast feed http://cre.fm/feed.
The spider exports this information using the description language DOT.
After this the program dot can do it's job and render some nice graphs.

Call make to generate a graph from the current data.

# Resoult
* http://github.com/ypid/CRE-graph/raw/master/CRE-Graph.pdf
* http://github.com/ypid/CRE-graph/raw/master/CRE-Graph.png
* A small cutting and a short introduction is on my blog (in German)
	http://ypid.wordpress.com/2012/04/02/welche-cre-folgen-beziehen-sich-auf-andere/

# Dependencies

* Perl 5.10 and some modules: LWP::Simple XML::RSS::Parser URI::Find Unicode::String
* graphviz
* make
