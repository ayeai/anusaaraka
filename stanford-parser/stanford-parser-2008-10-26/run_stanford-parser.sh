
 ./run_stanford.sh $2/tmp/$1_tmp/one_sentence_per_line.txt 1>$2/tmp/$1_tmp/sd-relations_tmp.txt 2>$2/tmp/$1_tmp/sd-sent.txt
 ./stnford_relations.out $2/tmp/$1_tmp/sd-relation.txt < $2/tmp/$1_tmp/sd-relations_tmp.txt 
  rm $2/tmp/$1_tmp/sd-relations_tmp.txt
  ./stnford_word.out $2/tmp/$1_tmp/sd_word.txt $2/tmp/$1_tmp/sd_numeric_word.txt < $2/tmp/$1_tmp/sd-sent.txt 
  rm $2/tmp/$1_tmp/sd-sent.txt
  sh run_category.sh $2/tmp/$1_tmp/one_sentence_per_line.txt 1> $2/tmp/$1_tmp/sd_category_tmp.txt 2>$2/tmp/$1_tmp/sd-cat_error_jnk.txt
  python sd_category.py $2/tmp/$1_tmp/sd_category_tmp.txt $2/tmp/$1_tmp/sd_category.txt

  rm $2/tmp/$1_tmp/sd-cat_error_jnk.txt
