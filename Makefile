DOCUMENT_NAME = Praesentation
COMPILER = latexmk -xelatex --output-directory=out

default:
	$(COMPILER) $(DOCUMENT_NAME)

help:
	@echo 'make       | Erstelle das komplette Dokument mit latexmk'
	@echo 'make clean | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'

clean:
	rm -rf out/
