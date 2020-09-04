SHELL = /bin/zsh
install brew:
	/bin/zsh -c "$$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
bak:
	brew bundle dump --describe --force --file="./Brewfile" && node ./index.js
res:
	brew bundle --file="./Brewfile"
resf:
	export HOMEBREW_NO_AUTO_UPDATE=true && brew bundle --file='./Brewfile'