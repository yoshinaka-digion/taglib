#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
cd $SCRIPT_DIR
cd ..
echo "pwd=$PWD"

sudo make uninstall
sudo rm -fr /Library/Frameworks/tag_c.framework
sudo rm -fr /Library/Frameworks/tag.framework
