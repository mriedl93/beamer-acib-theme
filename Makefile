include local.make

figures = transcriptome_pipeline/pipeline.pdf

all: presentation.tex syncfig
	docker run \
		--rm \
		-v $(shell pwd):/project \
		mytex latexmk -pdf --shell-escape presentation.tex

cont:
	docker run \
		--rm \
		-v $(shell pwd):/project \
		mytex latexmk -pdf -pvc --shell-escape presentation.tex

syncfig: figures/tikz/$(figures)

figures/tikz/%.pdf: ~/Nextcloud/PhD/figures/%.pdf
	mkdir -p $(shell dirname $@) && cp $^ $@
