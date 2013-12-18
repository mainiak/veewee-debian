#!/bin/sh
#
# see http://cbednarski.com/articles/veewee/
#
# gem install veewee
#
T="debian-base"
set -ex
if [ ! -d definitions/$T ]; then
  veewee vbox define $T debian-7.2.0-amd64-netboot
fi
OPT="-n" # NO GUI
veewee vbox build $OPT $T
veewee vbox export $T
veewee vbox destroy $T
vagrant box add $T ./$T.box
