all: presentation.tex
	docker run \
		--rm \
		-v $(shell pwd):/project \
		-v $(shell readlink -n logos):/project/logos \
		mytex latexmk -pdf presentation.tex
