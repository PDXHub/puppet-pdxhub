#!/bin/sh

sudo apt-get update
sudo apt-get install puppet git-core
#cd /etc/puppet
#chown root:sudo -R .
#chmod g+rw -R .
#for dir in `find . -type d`; do  chmod ug+rwxs $dir; done
git submodule init
git submodule update
