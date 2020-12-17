PROJECT = 'topologybook' 
MAIN = topology
SRC_DIR = chapters
FIGS_DIR = figs
BIB_DIR = bib
STYLE_DIR = style
OUTPUT_DIR = out

TEX_SOURCES = Makefile \
              $(MAIN).tex \
              $(SRC_DIR)/ch-1.tex \
              # $(SRC_DIR)/introduction.tex \
              # $(BIB_DIR)/references.bib \
              $(STYLE_DIR)/cleanbook.sty 

FIGURES := $(shell find figs/* -type f)

SHELL=/bin/bash
DATE = $(shell date +"%d%b%Y")
OPT = --interaction=nonstopmode

all: $(MAIN).pdf

$(MAIN).pdf: $(TEX_SOURCES) $(FIGURES)
	latexmk -pdf -pvc -output-directory=$(OUTPUT_DIR) -pdflatex="pdflatex $(OPT)" $(MAIN)

once: 
	pdflatex $(MAIN)

clean: 
	rm -f $(OUTPUT_DIR)/$(MAIN).{log,blg,bbl,aux,out,toc,idx,bcf,mtc,mtc0,maf,run.xml,ind,ilg,fls,fdb_latexmk}

targz:
	$(MAKE) clean
	$(MAKE) all
	$(MAKE) clean
	tar czf $(PROJECT)_$(DATE).tgz $(TEX_SOURCES) $(FIGURES)

zip:
	$(MAKE) clean
	$(MAKE) all
	$(MAKE) clean
	zip -q $(PROJECT)_$(DATE).zip $(TEX_SOURCES) $(FIGURES)
	
.PHONY: clean all
