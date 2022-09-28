all: presentation.tex
	docker run \
		--rm \
		-v $(shell pwd):/project \
		-v $(shell pwd):/project/logos \
		mytex latexmk -pdf presentation.tex
