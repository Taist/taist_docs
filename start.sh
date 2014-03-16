DOCS_ROOT=`dirname $0`

cd $DOCS_ROOT

make html

sphinx-autobuild -b html . _build/html

#kill child processes on exit
trap "kill 0" SIGINT SIGTERM EXIT
