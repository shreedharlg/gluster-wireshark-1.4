#!/bin/bash
#
# $Id$

# 32-bit wrapper for win-setup.sh.

export DOWNLOAD_TAG="2011-09-07-1.4"
export WIRESHARK_TARGET_PLATFORM="win32"

WIN_SETUP=`echo $0 | sed -e s/win32/win/`

exec $WIN_SETUP $@
