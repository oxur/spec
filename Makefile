BOOK_DIR = book
BUILD_DIR = build

default: regen

gh-pages:
	@git checkout --orphan gh-pages
	@git rm -rf .
	@git commit -m 'Preparing gh-pages branch as git submodule ...'
	@git push origin gh-pages
	@git checkout master

$(BOOK_DIR):
	@-$(MAKE) gh-pages
	@git submodule add -b gh-pages `git remote get-url --push origin` $(BOOK_DIR)
	@git commit -m "Added gh-pages as submodule ($(BOOK_DIR) dir)."
	@git push origin master
	@git submodule init

regen: $(BOOK_DIR)
	@mdbook build -d $(BUILD_DIR)
	@cp -r build/* $(BOOK_DIR)/
	@cd $(BOOK_DIR) && git add * 
	@cd $(BOOK_DIR) && git commit -am "Regenerated book." || \
		echo "Nothing to commit."
	@git commit $(BOOK_DIR) -m "Tracking latest book changes." || \
		echo "Nothing to commit."
	@rm -rf $(BUILD_DIR)

publish:
	@cd $(BOOK_DIR) && \
	git push origin gh-pages && \
	cd -
	@git push origin master

remove-book:
	@echo "You need to remove the book section in .gitmodules."
	@read -p "Press any key to edit the file ..."
	@vi .gitmodules
	@git add .gitmodules
	@echo "You need to remove the book section in .git/config."
	@read -p "Press any key to edit the file ..."
	@vi .git/config
	@git rm --cached $(BOOK_DIR)
	@rm -rf .git/modules/$(BOOK_DIR)
	@git commit -m "Removed submodule '$(BOOK_DIR)'."
	@rm -rf $(BOOK_DIR)
