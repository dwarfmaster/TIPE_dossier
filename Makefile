OUTDIR=output
MAIN=main.tex
FILES=formulaire.cls `find . -name "*.tex"`

all: $(OUTDIR) $(MAIN)
	pdflatex -output-directory $(OUTDIR) $(MAIN)

$(OUTDIR):
	mkdir $(OUTDIR)

.PHONY:all


