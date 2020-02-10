BOOK_OUTPUT = book

default: book

book:
	@mdbook build
	cd $(BOOK_OUTPUT)/ && \
	git commit -am "Regenerated book." && \
	cd -
	git add $(BOOK_OUTPUT)
	git commit $(BOOK_OUTPUT) -m "Tracking latest book changes."

publish:
	cd $(BOOK_OUTPUT) && \
	git push origin gh-pages && \
	cd -
	git push origin master

.PHONY: book
