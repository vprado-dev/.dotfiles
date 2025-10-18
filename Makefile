.PHONY: install
install: packages zsh git cfg-docker

.PHONY: packages
packages:
	./.scripts/install-packages

.PHONY: git
git:
	stow --no-folding -t ~ git

.PHONY: zsh
zsh:
	./.scripts/install-zsh \
		&& rm ~/.zshrc \
		&& stow --no-folding -t ~ zsh

.PHONY: asdf
asdf:
	./.scripts/install-asdf

.PHONY: cfg-docker
cfg-docker:
	./.scripts/configure-docker