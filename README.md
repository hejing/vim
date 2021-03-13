# Vim

![screenshot](screenshot.png)

### Statement
This repo is forked from [baopham-vim](https://github.com/baopham/vim.git)


### Requirements

* Vim 8 (2 options)

1> [Install MacVim app](https://github.com/macvim-dev/macvim/releases) and then 
`ln -s /Applications/MacVim.app/Contents/bin/mvim /usr/local/bin/mvim &&ln -s /usr/local/bin/mvim /usr/local/bin/vim`

2> brew install macvim
`ln -s /usr/local/bin/mvim /usr/local/bin/vim`


### Installation

```bash
git clone git://github.com/hejing/vim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
vim +PlugInstall
```
* About Powerline symbols:
Bao used [vim-airline](https://github.com/bling/vim-airline), with Powerline symbols. Try this patched font if you want Powerline symbols: [Monaco for Powerline](https://gist.github.com/baopham/1838072/raw/2c0e00770826e651d1e355962e751325edb0f1ee/Monaco%20for%20Powerline.otf).  



* Install jedi: `pip install jedi`
* Install ctags: `brew install ctags`

> Shameless plug: Install Bao's tool [vimplugin-cli](https://github.com/baopham/vimplugin-cli) to quickly find/remove plugins and their settings
