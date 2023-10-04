PROJECT = $(shell basename $(CURDIR))
MAIN = topology
SRC_DIR = chapters
FIGS_DIR = figs
BIB_DIR = bib
STYLE_DIR = style
OUTPUT_DIR = out

TEX_FILES = $(MAIN).tex $(SRC_DIR)/*.tex
FIGURE_FILES = $(FIGS_DIR)
BIB_FILES = $(BIB_DIR)/*.bib
STYLE_FILES = $(STYLE_DIR)/*.sty
OUTPUT_FILES = $(OUTPUT_DIR)/*.pdf
ALL_SOURCES = Makefile $(TEX_FILES) $(BIB_FILES) $(STYLE_FILES) $(FIGURE_FILES) $(OUTPUT_FILES)

DATE = $(shell date +"%d%b%Y")
OPT = --interaction=nonstopmode

default:  ## Build the book in interactive mode
	latexmk -pdf -pvc -output-directory=$(OUTPUT_DIR) -pdflatex="pdflatex $(OPT)" $(MAIN)

book:  ## Build the book PDF
	latexmk -pdf -output-directory=$(OUTPUT_DIR) -pdflatex="pdflatex" $(MAIN)

pdf:  ## Build the document (pdflatex)
	pdflatex $(MAIN)

clean:   ## Clean the build directory
	rm -f $(OUTPUT_DIR)/$(MAIN).{log,blg,bbl,aux,out,toc,idx,bcf,mtc,mtc0,maf,run.xml,ind,ilg,fls,fdb_latexmk}

targz:  ## Create a tar.gz archive of the document
	$(MAKE) clean
	$(MAKE) book
	$(MAKE) clean
	tar -czf $(PROJECT)_$(DATE).tgz $(ALL_SOURCES)

zip:  ## Create a zip archive of the document
	$(MAKE) clean
	$(MAKE) book
	$(MAKE) clean
	zip -q $(PROJECT)_$(DATE).zip $(ALL_SOURCES)
	@echo $(ALL_SOURCES)
	
.PHONY: clean build pdf targz zip
.DEFAULT_GOAL := help

help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'