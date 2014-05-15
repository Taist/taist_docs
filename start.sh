#!/bin/sh
DOCS_ROOT=`dirname $0`

cd $DOCS_ROOT

make html

sphinx-autobuild . _build/html
