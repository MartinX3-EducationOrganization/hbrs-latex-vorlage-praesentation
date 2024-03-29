DOCUMENT_NAME = Praesentation
# The flag "--shell-escape" is needed by the package "minted"
# TODO WORKAROUND Use xelatex instead of lualatex, until the upstream PR got released in texlive https://github.com/pdfpc/latex-pdfpc/pull/6
COMPILER = latexmk -xelatex --jobname=$(DOCUMENT_NAME) --output-directory=out --shell-escape

default | help:
	@echo 'make | Zeigt die Hilfe'
	@echo 'make build | Erstelle das komplette Dokument mit latexmk'
	@echo 'make clean | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'
	@echo 'make help | Zeigt die Hilfe'
	@echo 'make start | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'

build:
	$(COMPILER) Praesentation

clean:
	rm -rf out/

start:
	pdfpc out/$(DOCUMENT_NAME).pdf
