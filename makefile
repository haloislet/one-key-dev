SHELL = /bin/zsh
install brew:
	/bin/zsh -c "$$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
bak:
	brew bundle dump --describe --force --file="./Brewfile"
res:
	brew bundle --file="./Brewfile"