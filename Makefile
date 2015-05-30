EXTRA ?= --no-highlight -V hlss:zenburn

template := reveal-template.html

index.html: index.md $(template)
	pandoc -s --template=$(template) -t revealjs -V theme:black \
		-V transition:none $< -o $@ $(EXTRA)

.PHONY: clean
clean:
	rm -rf index.html
