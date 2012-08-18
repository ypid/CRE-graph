# About

This project shows the references between episodes of the podcast [CRE](http://cre.fm/) in a graph.
For this purpose I created two Perl-Scripts called gen\_CRE\_info\_hash and spider to parse all required html pages.
The spider exports this information using the description language DOT.
After this the program dot can do it's job and render some nice graphs.

Call make to generate a graph from the current data.

There is also an implementation that uses the XML podcast feed:
[using-rssfeed](http://github.com/ypid/CRE-graph/tree/using-rssfeed)

# Resoult
* [CRE-Graph.pdf](https://github.com/ypid/CRE-graph/raw/master/CRE-Graph.pdf)
* [CRE-Graph.png](https://github.com/ypid/CRE-graph/raw/master/CRE-Graph.png)
* A small cutting and a short introduction is on my blog (in German):
	[Welche CRE-Folgen beziehen sich auf andere?]
	(http://ypid.wordpress.com/2012/04/02/welche-cre-folgen-beziehen-sich-auf-andere/)

I also added some statistics:
* Sorted after duration: [duration-hitlist.txt](https://github.com/ypid/CRE-graph/blob/master/duration-hitlist.txt)
* Sorted after interlocutor: [interlocutor-hitlist.txt](https://github.com/ypid/CRE-graph/blob/master/interlocutor-hitlist.txt)
* Sorted after interlocutor (Graph): [more-than-one-interlocutor.png](https://raw.github.com/ypid/CRE-graph/master/more-than-one-interlocutor.png)

# Dependencies
* Perl 5.10 and the module WWW::Mechanize Storable HTML::Parser LWP::Simple
* graphviz
* make
