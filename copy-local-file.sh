#/bin/bash

cp ~/.zshrc .zshrc

ZSHRC_PATH=$(realpath ./.zshrc)

echo $ZSHRC_PATH

# sed creates temp file on macos, so we have to delete that one afterwards
sed -i .tmp -e 's/DEFAULT_USER=.*/DEFAULT_USER="___USER___"/g' $ZSHRC_PATH
rm "${ZSHRC_PATH}.tmp"
