all:

node_modules/.receipt.txt: package.json package-lock.json
	npm install
	touch node_modules/.receipt.txt

fmt-check: fmt-prettier-check fmt-shfmt-check
fmt-prettier-check: node_modules/.receipt.txt
	npx prettier --check '*.md'
fmt-shfmt-check:
	shfmt --diff nvimv install

fmt: fmt-prettier fmt-shfmt
fmt-prettier: node_modules/.receipt.txt
	npx prettier --write '*.md'
fmt-shfmt:
	shfmt --write nvimv install
