Readme
=========================== 

## Install
- chmod for makesymlinks.sh
- run makesymlinks.sh

## Setup
### Setup new files
- open makesymlinks.sh
- Add a new filename to the line 
`files="bashrc bash_profile bash vimrc vim sublime-settings"`

### Setup Sublime User Settingsfile
- Run makesymlinks.sh
- create a simlink `ln -s ~/.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/Preferences.sublime-settings`