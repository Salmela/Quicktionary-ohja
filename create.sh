#!/bin/bash

folder_name=`basename "$PWD"`

if [[ "x$folder_name" != "xQuicktionary-ohja" ]]; then
	echo "You are in wrong directory"
	exit
fi

if [[ "x$1" == "xcreate" ]]; then
	mkdir Quicktionary
	mkdir javadoc
	mkdir docs
fi

if [[ "x$1" == "xremove" ]]; then
	rm -r `find . | grep -vE "create.sh|.git|Quicktionary"`
fi
