NOTEX   = NoTex
PDF     = $(MYNAME).pdf
REQUIRE = $(NOTEX).cls
MINTED_TEMP = _minted-$(MYNAME)

TEX     = latexmk -xelatex
MODE    = -shell-escape
FILE    = -cd ../$(MYNAME)
OUTDIR  = -outdir=build

all: $(PDF)

$(PDF): $(REQUIRE) FORCE_MAKE
	$(TEX) $(MODE) $(FILE) $(OUTDIR)

clean:
	$(TEX) -C $(FILE) $(OUTDIR)
	rm -r ../build/$(MINTED_TEMP)

.PHONY: all clean FORCE_MAKE
