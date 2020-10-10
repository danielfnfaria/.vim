#!/bin/sh

BUNDLE="./bundle"

for d in $(ls $BUNDLE); do
	git submodule add $(cat ${BUNDLE}/${d}/.git/config | grep -i url | awk -F '=' '{print $2}') ${BUNDLE}/${d}
done
