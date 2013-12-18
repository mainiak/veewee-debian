#!/bin/sh
set -ex
if [ ! -d definitions/debian-base ]; then
  veewee vbox define debian-base debian-7.2.0-amd64-netboot
fi
veewee vbox build debian-base
