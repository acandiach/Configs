# Configs
My personal configs
### If you want to get my settings.

Installing necessary dependencies
```bash
sudo apt update & sudo apt upgrade &
sudo apt install ripgrep fd-find xclip wget curl git python3-pip ruby ruby-dev
build-essential

```
Updating dependencies
```bash
sudo python3 -m pip install neovim & sudo python3 -m pip install neovim & sudo python3 -m pip install --upgrade neovim &
sudo gem install neovim

```
Now clone my repository
```bash
git clone https://github.com/acandiach/configs.git
```
## For Neovim Linux 
>For Debian, Ubuntu and derivatives. 
First you should get the latest version of neovim

```bash
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb &
sudo dpkg -i nvim-linux64.deb
```
Then you install packer.nvim
, first clone this repository to somewhere on your `packpath`, e.g.:

> Unix, Linux Installation

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

If you use Arch Linux, there is also [an AUR
package](https://aur.archlinux.org/packages/nvim-packer-git/).
## 

> Then you download a font in [Hack Nerd Font](https://www.nerdfonts.com/font-downloads)
##  

> Go to download and copy the downloaded font to the directory that contains the fonts and unzip it.
```bash
cp [font-name.zip] /usr/share/fonts/ & sudo unzip [font-name.zip]
```
Make sure to select the font you downloaded in your terminal

>Enter the cloned repository directory and copy the *nvim* directory to the configuration directory
```bash
cp -r nvim/ .config/
```
>Go to nvim directory and run init.lua
```bash
cd nvim & nvim init.lua
```
>Run packer to install the plugins **:PackerSync**


## For Zsh

Install zsh
```bash
sudo apt install zsh
```
Clone [powerlevel10k](https://github.com/romkatv/powerlevel10k)
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

Now the next time you enter zsh it will show you the configuration

If you want to change the default shell to zsh
```bash
chsh -s /bin/zsh [your user]

```

