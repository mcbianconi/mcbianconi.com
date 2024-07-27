# Variables
SHELL := /bin/bash
TODAY := $(shell date +%d-%m-%Y)
CONTENT_DIR := content/pt-BR/blog
TAROT_FILE := $(CONTENT_DIR)/tarot-do-dia/$(TODAY).md

img-post:
	@read -p "Novo post: " postname; \
	mkdir $(CONTENT_DIR)/$$postname; \
	hugo new $(CONTENT_DIR)/$$postname/index.md

post:
	@read -p "Novo post: " postname; \
	hugo new $(CONTENT_DIR)/$$postname.md

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

missing-translation:
	@hugo --printI18nWarnings | grep i18n

# Target to create a daily tarot content file
tarot-do-dia:
	@echo "Criando leitura para $(TODAY)"
	@hugo new --kind tarot $(TAROT_FILE)
	@echo "Criado $(TAROT_FILE)"

.PHONY: post project page dev build deploy clean update-theme