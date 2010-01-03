#!/bin/csh -f
##!/bin/sh -f
#
# usage ./lexparser-gui [parserDataFilename [textFileName]]
#
set scriptdir=`dirname $0`
java -mx800m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.ui.Parser $*
