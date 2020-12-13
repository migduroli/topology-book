PDFLATEX = pdflatex
SH 	 = /bin/bash

MKDIR_P = mkdir -p
MV 	= mv
CP 	= cp
OPEN	= open
OUTPUT 	= output
SOURCE  = topology

default : pdf

.PHONY: pdf
pdf: $(SOURCE).tex
	$(MKDIR_P) $(OUTPUT) 
	$(PDFLATEX) $(SOURCE).tex 
	$(PDFLATEX) $(SOURCE).tex 
	$(PDFLATEX) $(SOURCE).tex 
	$(MV) `ls $(SOURCE).*` $(OUTPUT) 
	$(CP) $(OUTPUT)/$(SOURCE).tex $(SOURCE).tex 
	# $(OPEN) -a Preview.app $(OUTPUT)/$(SOURCE).pdf

.PHONY: clean
clean : 
	echo "Removing all TeX-generated files..."
	$(RM) -f -- *.synctex.gz *.aux *.bak *.bbl *.blg *.log *.out *.toc *.tdo _region.* *.maf* *.mtc*
