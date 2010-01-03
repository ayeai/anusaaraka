export LC_ALL=C
sort samAsa-new.txt > tmp
perl MakeKey.pl < tmp >dict-final
perl create_dbm.pl compound.gdbm < dict-final
rm tmp dict-final

export LC_ALL=C
sort Complete_sentence.txt > tmp
perl MakeKey.pl < tmp > dict-final
perl create_dbm.pl   Complete_sentence.gdbm < dict-final
rm tmp dict-final
