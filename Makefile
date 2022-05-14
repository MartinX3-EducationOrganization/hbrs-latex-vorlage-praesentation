DOCUMENT_NAME = Praesentation
# The flag "--shell-escape" is needed by the package "minted"
COMPILER = latexmk -xelatex --output-directory=out --shell-escape

default | help:
	@echo 'make | Zeigt die Hilfe'
	@echo 'make build | Erstelle das komplette Dokument mit latexmk'
	@echo 'make clean | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'
	@echo 'make help | Zeigt die Hilfe'
	@echo 'make start | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'

build:
	$(COMPILER) $(DOCUMENT_NAME)

clean:
	rm -rf out/

start:
	pdfpc out/Praesentation.pdf
