#!/bin/sh

/usr/local/bin/brew update
/usr/local/bin/brew upgrade
/usr/local/bin/brew autoremove
/usr/local/bin/brew cleanup
touch ~/.config/.brew
