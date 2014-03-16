DOCS_ROOT=`dirname $0`

cd $DOCS_ROOT

sphinx-autobuild . _build/html

#kill child processes on exit
trap "kill 0" SIGINT SIGTERM EXIT
