#/bin/bash

cp ~/.zshrc .zshrc

ZSHRC_PATH=$(realpath ./.zshrc)

echo $ZSHRC_PATH

sed -i -e 's/DEFAULT_USER=.*/DEFAULT_USER="___USER___"/' $ZSHRC_PATH

