Generate:
cp ~/Library/Preferences/com.googlecode.iterm2.plist /tmp
cd /tmp
plutil -convert xml1 com.googlecode.iterm2.plist

If you want to load a file remotely, I recommend storing it in dropbox and using prefs>general>load preferences from a user-defined folder.

Source: https://groups.google.com/forum/#!topic/iterm2-discuss/mox3lYM25P4
