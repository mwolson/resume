OUT_DIR=output
IN_DIR=markdown
STYLES_DIR=styles
STYLE=chmduquesne
FORMATS=
EXPORT_DIR=

all: html pdf docx rtf txt

pdf: init
	for f in $(IN_DIR)/*.md; do \
		FILE_NAME=`basename $$f | sed 's/.md//g'`; \
		echo $$FILE_NAME.pdf; \
		pandoc --standalone --template $(STYLES_DIR)/$(STYLE).tex \
			--from markdown --to context \
			--top-level-division=section \
			--variable papersize=letter \
			--pdf-engine=xelatex \
			--output $(OUT_DIR)/$$FILE_NAME.tex $$f > /dev/null; \
		mtxrun --path=$(OUT_DIR) --result=$$FILE_NAME.pdf --script context $$FILE_NAME.tex > $(OUT_DIR)/context_$$FILE_NAME.log 2>&1; \
	done

html: init
	for f in $(IN_DIR)/*.md; do \
		FILE_NAME=`basename $$f | sed 's/.md//g'`; \
		echo $$FILE_NAME.html; \
		pandoc --standalone --include-in-header $(STYLES_DIR)/$(STYLE).css \
			--lua-filter=pdc-links-target-blank.lua \
			--from markdown --to html \
			--output $(OUT_DIR)/$$FILE_NAME.html $$f \
			--metadata pagetitle=$$FILE_NAME;\
	done

docx: init
	for f in $(IN_DIR)/*.md; do \
		FILE_NAME=`basename $$f | sed 's/.md//g'`; \
		echo $$FILE_NAME.docx; \
		pandoc --standalone $$SMART $$f --output $(OUT_DIR)/$$FILE_NAME.docx; \
	done

rtf: init
	for f in $(IN_DIR)/*.md; do \
		FILE_NAME=`basename $$f | sed 's/.md//g'`; \
		echo $$FILE_NAME.rtf; \
		pandoc --standalone $$SMART $$f --output $(OUT_DIR)/$$FILE_NAME.rtf; \
	done

txt: init
	for f in $(IN_DIR)/*.md; do \
		FILE_NAME=`basename $$f | sed 's/.md//g'`; \
		echo $$FILE_NAME.txt; \
		pandoc --standalone $$SMART $$f --output $(OUT_DIR)/$$FILE_NAME.txt; \
	done

init: dir version

dir:
	mkdir -p $(OUT_DIR)

version:
	PANDOC_VERSION=`pandoc --version | head -1 | cut -d' ' -f2 | cut -d'.' -f1`; \
	if [ "$$PANDOC_VERSION" -eq "2" ]; then \
		SMART=-smart; \
	else \
		SMART=--smart; \
	fi \

clean:
	rm -fr $(OUT_DIR)/*

docker: clean
	docker compose kill 2> /dev/null
	docker compose run --build --rm resume-make $(FORMATS)
	docker compose down

export:
	@if [ -z "$(EXPORT_DIR)" ]; then \
		echo >&2 "Usage: make EXPORT_DIR=some-dir export"; \
		echo >&2; \
		echo >&2 "Error: EXPORT_DIR not provided"; \
		exit 1; \
	fi
	mkdir -p $(EXPORT_DIR)
	@for f in $(OUT_DIR)/*; do \
		if [ ! -f "$$f" ]; then \
			continue; \
		fi; \
		FILE_NAME=`basename $$f`; \
		for ext in html pdf docx rtf txt; do \
			if [ `basename $$FILE_NAME .$$ext` != "$$FILE_NAME" ]; then \
				cp $$f $(EXPORT_DIR); \
				echo $(EXPORT_DIR)/$$FILE_NAME; \
			fi; \
		done; \
	done \
