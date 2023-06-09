CONTAINER_NAME = presentation

ifeq ($(shell hostname),lenovarch)
	texenv =
else ifeq ($(shell hostname),yawin)
	texenv = docker exec -it $(CONTAINER_NAME)
else
	texenv =
endif

all: presentation.tex
	$(texenv) \
		lualatex \
			-shell-escape \
			--jobname=build/draft \
			presentation.tex


cont:
	$(texenv) \
		latexmk -lualatex -pvc \
			--shell-escape \
			--jobname=build/draft \
			presentation.tex \


full:
	$(texenv) \
		latexmk -lualatex \
			-shell-escape \
			--jobname=build/presentation \
			presentation.tex \
		&& cp build/presentation.pdf presentation.pdf


run_container:
	docker run --name $(CONTAINER_NAME) -t -d --rm \
		-v "${PWD}":/usr/src/app \
		-w /usr/src/app \
		latex bash
