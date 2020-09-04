SHELL = /bin/zsh
install brew:
	/bin/zsh -c "$$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
sync:
	rsync -av --exclude='.*' ./*  ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/one-key-mac
bak:
	brew bundle dump --describe --force --file="./Brewfile" && node ./index.js && make sync
res:
	brew bundle --file="./Brewfile"
resf:
	export HOMEBREW_NO_AUTO_UPDATE=true && brew bundle --file='./Brewfile'