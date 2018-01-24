# Makefile for generating R packages.
# 2017 Rob J Hyndman
#
# Assumes Makefile is in top folder of package

all: build pkgdown install

check: 
	Rscript -e "devtools::check(document=TRUE)"

build:
	R CMD build .
	mv -f *.tar.gz ..

install: 
	rmake

pkgdown:
	Rscript -e "rt::rdoc(); rt::rpkgdown()"

winbuild:
	Rscript -e "rt::rwinbuild(devel=TRUE)"

clean:
	-rm -f ../fpp_*.tar.gz
	-rm -r -f man/*.Rd
	-rm -r -f NAMESPACE

docs:
	Rscript -e "rt::rdoc()"

