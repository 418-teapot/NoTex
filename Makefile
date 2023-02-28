NOTEX   = notex
PDF     = $(MYNAME).pdf
REQUIRE = $(NOTEX).cls
MINTED_TEMP = _minted-$(MYNAME)

TEX     = latexmk -xelatex
MODE    = -shell-escape
CD      = -cd ../
OUTDIR  = -outdir=build

all: $(PDF)

$(PDF): $(REQUIRE) FORCE_MAKE
	$(TEX) $(MODE) $(CD)$(MYNAME) $(OUTDIR)

clean:
	$(TEX) -C $(CD)$(MYNAME) $(OUTDIR)
	rm -r ../build/$(MINTED_TEMP)

.PHONY: all clean FORCE_MAKE
