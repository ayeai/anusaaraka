#!/bin/sh -f
#
# Runs the English PCFG parser on one or more files, printing trees only
# usage: ./lexparser.csh fileToparse+
#
#set scriptdir=`dirname $0`
export scriptdir=`dirname $0`
java -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat "typedDependencies" -outputFormatOptions "basicDependencies" $scriptdir/englishPCFG.ser.gz $*

