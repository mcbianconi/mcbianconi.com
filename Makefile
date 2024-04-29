SHELL := /bin/bash

img-post:
	@read -p "Novo post: " postname; \
	mkdir posts/$$postname; \
	hugo new posts/$$postname/index.md

post:
	@read -p "Novo post: " postname; \
	hugo new posts/$$postname.md

project:
	@read -p "Novo projeto: " project; \
	hugo new posts/$$project.md


page:
	@read -p "Nova página: " pagename; \
	hugo new $$pagename.md

deploy:
	@echo Use o git para fazer o deploy, só fazer um push. O site está configurado no Cloudflare.

dev:
	@hugo server -D

build:
	@hugo

clean:
	@hugo --gc
	@rm -rf public

update-theme:
	git submodule update --remote --merge

.PHONY: post project page dev build deploy clean update-theme
	