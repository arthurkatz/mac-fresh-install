# Mac OS X Fresh Install

This repo will provide you all the software and configuration I need and like as a Front-end developer.  

## Brew

Install brew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
```

Install all the dev basics tools
```
brew update
brew install dockutil
brew install git
brew install heroku-toolbelt
brew install jenv
brew install maven
brew install mongodb
brew install node
brew install openssl
brew install python
brew install python3
brew install redis
brew install subversion
brew install wget
```

## Cask

Install cask and cask fonts
```
brew tap caskroom/cask
brew tap caskroom/fonts
```

Install all my favorites apps
```
brew cask install adobe-photoshop-cc
brew cask install adobe-indesign-cc
brew cask install adobe-illustrator-cc
brew cask install astrill
brew cask install atom
brew cask install bose-soundtouch
brew cask install cakebrew
brew cask install dashlane
brew cask install docker-toolbox
brew cask install dropbox
brew cask install fantastical
brew cask install firefox
brew cask install franz
brew cask install google-chrome
brew cask install google-drive
brew cask install istat-menus
brew cask install iterm
brew cask install java
brew cask install jumpcut
brew cask install licecap
brew cask install mamp
brew cask install microsoft-office
brew cask install mjml
brew cask install numi
brew cask install sketch
brew cask install skype
brew cask install spectacle
brew cask install spotify
brew cask install sublime
brew cask install the-unarchiver
brew cask install timing
brew cask install torbrowser
brew cask install touchswitcher
brew cask install transmission
brew cask install transmit
brew cask install virtualbox
brew cask install vlc
```

## Dockutil

Remove all the unnecessary dock icons and keep only the useful ones
```
dockutil --remove all --allhomes
dockutil --add /Applications/Google\ Chrome.app --allhomes
dockutil --add /Applications/iTerm.app --allhomes
dockutil --add /Applications/Franz.app --allhomes
dockutil --add /Applications/Fantastical\ 2.app --allhomes
dockutil --add /Applications/Atom.app --allhomes
```

## iTerm

Add some style and aliases to iTerm

In iTerm > Preferences..., under the tab General, uncheck Confirm closing multiple sessions and Confirm "Quit iTerm2 (Cmd+Q)" command under the section Closing.

```
cd ~
curl -O https://raw.githubusercontent.com/arthurkatz_fr/mac-fresh-install/master/.bash_profile
curl -O https://raw.githubusercontent.com/arthurkatz_fr/mac-fresh-install/master/.bash_prompt
```

## npm

Install NPM
```
npm install less --global
```

Install Grunt
```
sudo npm install -g grunt-cli
```

Install Gulp
```
npm install -g gulp
```

## Custom things

Change screenshots default folder
```
defaults write com.apple.screencapture location ~/Downloads
```

Allow Apps from Anywhere
```
sudo spctl --master-disable
```

Show hidden files
```
defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
```

Allow speedtest in cli
```
pip install speedtest-cli
```

Use Gandi CLI
```
pip install gandi.cli
```

Use Git lab,hub... CLI
```
brew install python3
```
## Configure ssh github

Configure your git
```
git config --global user.name "{YOUR NAME}"
git config --global user.email "{YOUR EMAIL}"
git config --global credential.helper osxkeychain
```

Configuring global git ignore file:
```
git config --global core.excludesfile '~/.gitignore'
echo '.DS_Store' >> ~/.gitignore
```

Add your rsa key to your git repository manager
```
ls -al ~/.ssh # Lists the files in your .ssh directory, if they exist
ssh-keygen -t rsa -C "your_email@example.com" # Creates a new ssh key, using the provided email as a label
eval "$(ssh-agent -s)" # start the ssh-agent in the background
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub # Copies the contents of the id_rsa.pub file to your clipboard to paste in github or w/e

```

## One line install

TODO
