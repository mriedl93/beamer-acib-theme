all: presentation.tex
	docker run \
		--rm \
		-v $(shell pwd):/project \
		mytex latexmk -pdf --shell-escape presentation.tex

cont:
	docker run \
		--rm \
		-v $(shell pwd):/project \
		mytex latexmk -pdf -pvc --shell-escape presentation.tex
