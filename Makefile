# Compila cada cvs/*.typ a out/*.pdf  (requiere el CLI de typst: https://typst.app/open-source)
SRC := $(wildcard cvs/*.typ)
PDF := $(patsubst cvs/%.typ,out/%.pdf,$(SRC))

all: $(PDF)

out/%.pdf: cvs/%.typ lib/template.typ
	@mkdir -p out
	typst compile --root . $< $@
	@echo "$@: $$(pdfinfo $@ 2>/dev/null | grep Pages || echo 'páginas: verifica que sea 1')"

clean:
	rm -rf out

.PHONY: all clean
