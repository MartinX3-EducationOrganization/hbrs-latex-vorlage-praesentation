DOCUMENT_NAME = Praesentation
# The flag "--shell-escape" is needed by the package "minted"
COMPILER = latexmk -xelatex --output-directory=out --shell-escape

default:
	$(COMPILER) $(DOCUMENT_NAME)

help:
	@echo 'make       | Erstelle das komplette Dokument mit latexmk'
	@echo 'make clean | Säubere das Arbeitsverzeichnis von temporären Dateien und Verzeichnissen.'

clean:
	rm -rf out/
