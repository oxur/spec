BOOK_OUTPUT = book

default: book

book:
	rm -rf $(BOOK_OUTPUT)/*
	mdbook build
	cd $(BOOK_OUTPUT)/ && \
	git commit -am "Updated docs."
	git add $(BOOK_OUTPUT)/*
	git commit $(BOOK_OUTPUT)/* -m "Regenerated book."

.PHONY: book
