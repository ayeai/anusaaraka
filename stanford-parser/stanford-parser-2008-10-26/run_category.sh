export scriptdir=`dirname $0`
java -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline"  -outputFormat "wordsAndTags" $scriptdir/englishPCFG.ser.gz $* 
