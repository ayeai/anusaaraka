## First join the words that are split with '-' followed by a new line.
## Split words that have 'spoken' spelling rather than 'written'.
PATH1=$HOME_anu_test/Anu/stdenglish
PATH2=$2/tmp/

if [ -f "$PATH2/tmp_stdenglish"  ] ; then
  echo "File tmp_stdenglish exists. Remove or rename it, and give the command again ."
else
  if [ -e "$PATH2/tmp_stdenglish" ] ; then
    cd $PATH2/tmp_stdenglish
  else
    mkdir $PATH2/tmp_stdenglish
    cd $PATH2/tmp_stdenglish
  fi

# join_hard_hyphen.lex joins the two words that are split with hard hyphen.
# It checks for the pattern '{WRD}\-[ ]*$', removes the white spaces following the hyphen.
# It also removes '' from the dos format files.
#$PATH1/join_hard_hyphen.out < $PATH2/$1 |\
$PATH1/join_hard_hyphen.out < $2/$1 |\


# rm_joined_hard_hyphens.lex looks at all the occurances of w1-w2, and removes the hyphen if a a character sequence w1w2 exists in English morph database.

# rm_joined_hard_hyphens.lex looks at all the occurances of w1-w2, and removes the hyphen if a a character sequence w1w2 exists in English morph database.
$PATH1/rm_joined_hard_hyphens.out $HOME_anu_test/Anu_databases/morph.dbm > $1.tmp

# abbr.lex expands the standard abbreviations with single apostophe such as I'm
$PATH1/abbr.out < $1.tmp > $1.tmp1

# abbr1.lex handles standard abbreviations such as 'i.e.', 'e.g.', etc.
# Better solution for this is necessary
$PATH1/abbr1.out < $1.tmp1 > $1.tmp2

# This program checks the input format for unprintable characters, and
# special characters such as '[^#&~`*]' which have special meanings either 
# in bash or in regular expressions.
# It removes these special characters.

$PATH1/chk_input_format.pl < $1.tmp2 > $1.tmp3
#$PATH1/chk_input_format.pl < $1.tmp2 > $1.std

#The program sentence_boundary.pl takes as an input a text file, and generates as
#output another text file in which each line contains only one sentence. Blank
#lines in the input file are considered to make the end of paragraphs, and are
#still present in the output file. It requires a honorifics file as an argument.#A sample honorifics file is provided. This file MUST contain honorifics, not
#abbreviations. The program detects abbreviations using regular expressions.

$PATH1/sentence-boundary.pl -d $PATH1/HONORIFICS -i $1.tmp3 -o ../$1.std

cd ../
fi
