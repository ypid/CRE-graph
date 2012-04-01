# About

This project shows the references between episodes of the podcast CRE http://cre.fm/ in a graph.
For this purpose it uses a Perl-Script called spider to parse all required html pages.
The spider exports this information using the description language DOT.
After this the program dot can do it's job and render some nice graphs.

Call make to generate a graph from the current data.

# Dependencies

* Perl 5.10
* graphviz
* make
