
 (defglobal ?*root_fp* = rt_fp)
 (defglobal ?*pre_morph_fp* = pre_fp)

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 (deffacts dummy_morph_info
 (id-cat)
 (parser_id-cat_coarse)
 (parserid-wordid )
 (id-original_word)
 (morph_analysis_to_be_choosen)
 )

  ; Anusaaraka shall allow users to access text in any Indian language after translation from the source language (i.e English or any other regional Indian language)
  (defrule that_is_rule
  (parser_id-cat_coarse ?lid ?cat)
  (parserid-wordid  ?lid ?wid)
  (id-original_word ?wid  ABBRThatis)
  (word-morph (original_word ABBRThatis)(root ?root)(category  ?cat)(suffix ?suf)(number ?num))
  ?f0<-(morph_analysis_to_be_choosen ?wid)
  =>
        (retract ?f0)
        (assert (parser_id-root ?lid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?lid"  "?root"  "?cat " "?suf" "?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?lid" "?root")"crlf)
 )

 (defrule gerund_rule
 (declare (salience 200))
 (parser_id-cat_coarse ?lid gerund)
 (parserid-wordid  ?lid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word  ?word)(root ?root)(category  gerund)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?lid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?lid"  "?root"  gerund  "?suf" " -" )" crlf)
        (printout ?*root_fp*  "(parser_id-root "?lid" "?root")"crlf)
 )

 (defrule same_cat
 (declare (salience 150))
 (parser_id-cat_coarse ?lid ?cat)
 (parserid-wordid  ?lid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?lid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?lid"  "?root" "?cat " "?suf" " ?num")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?lid" "?root")" crlf)
 )

 ;I biked Johnson Creek .
 ;Bushes are visiting us today   (number info yet to be taken)
 (defrule PropN_rule
 (declare (salience 120))
 (parser_id-cat_coarse ?lid PropN)
 (parserid-wordid  ?lid ?wid)
 (id-original_word ?wid ?word)
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?lid ?word))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?lid"  "?word" PropN   -     -)" crlf)
        (printout ?*root_fp*  "(parser_id-root "?lid" "?word")" crlf)
 )


 ; if link cat and morph cat differ and morph cat is adjective and suf is er
 ; He talked longer than usual .
 (defrule diff_cat_suf_er_est_adj
 (declare (salience 100))
 (parser_id-cat_coarse ?lid ?cat)
 (parserid-wordid  ?lid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word  ?word)(root ?root)(category  ?cat1)(suffix ?suf)(number ?num))
 (test (and (neq ?cat ?cat1)(eq ?cat1 adjective)))
 (test (or (eq ?suf er)(eq ?suf est)))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?lid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?lid"  "?root"  "?cat" "?suf" " ?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?lid" "?root")"crlf)
 )

 ; if suffixes are different and if link cat and morph cat is same and suf is ing
 (defrule diff_cat_suf_ing
 (declare (salience 90))
 (parser_id-cat_coarse ?lid ?cat)
 (parserid-wordid  ?lid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word  ?word)(root ?root)(category  ?cat1)(suffix ?suf)(number ?num))
 (test (and (neq ?cat ?cat1)(eq ?suf ing)))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0)
        (assert (parser_id-root ?lid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?lid"  "?root" verb "?suf " "?num ")" crlf)
        (printout ?*root_fp*  "(parser_id-root "?lid" "?root")"crlf)
 )
 
 ; if suffixes are different and if link cat and morph cat differ and morph cat is I
 (defrule diff_cat_and_I
 (declare (salience 90))
 (parser_id-cat_coarse ?lid ?cat)
 (parserid-wordid  ?lid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word  ?word)(root ?root)(category  ?cat1)(suffix ?suf)(number ?num))
 (test (and (neq ?cat ?cat1)(eq ?cat1 I)))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
	(retract ?f0)
	(assert (parser_id-root ?lid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?lid"  "?root"  "?cat" "?suf " "?num ")" crlf)
	(printout ?*root_fp*  "(parser_id-root "?lid" "?root")"crlf)
 )

 ;default link category
 (defrule default-linkid_root
 (declare (salience 60))
 ?f1<-(parser_id-cat_coarse ?lid ?cat1)
 (parserid-wordid  ?lid ?wid)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
        (retract ?f0 ?f1)
        (assert (parser_id-root ?lid ?root))
        (printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  "?lid"  "?root" "?cat1" "?suf " "?num")" crlf)
        (printout ?*root_fp* "(parser_id-root "?lid" "?root")"crlf)
 )

 ;Pos cat with word ids pos cat and morph cat are same
 (defrule POS_same_cat
 (declare (salience 50))
 ?f1<-(parser_id-cat_coarse ?wid ?cat)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
	(retract ?f0 ?f1)
	(assert (parser_id-root ?wid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  L"?wid"  "?root" "?cat" "?suf " "?num")" crlf)
	(printout ?*root_fp* "(parser_id-root  L"?wid" "?root")"crlf)
 )

 ;diff cat and suf_ing
 (defrule POS_diff_cat_suf_ing
 (declare (salience 40))
 ?f1<-(parser_id-cat_coarse ?wid ?cat1)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 (test (and (neq ?cat ?cat1)(eq ?suf ing)))
 =>
	(retract ?f0)
	(assert (parser_id-root ?wid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  L"?wid"  "?root" verb "?suf " -"")" crlf)
	(printout ?*root_fp*  "(parser_id-root  L"?wid" "?root")" crlf)
 )

 ;diff cat and suf I
 (defrule POS_diff_cat_suf_I
 (declare (salience 40))
 (parser_id-cat_coarse ?wid ?cat)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat1)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 (test (and (neq ?cat ?cat1)(eq ?cat1 I)))
 =>
	(retract ?f0)
	(assert (parser_id-root ?wid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  L"?wid"  "?root"  "?cat" "?suf " -"")" crlf)
	(printout ?*root_fp*  "(parser_id-root  L"?wid" "?root")" crlf)
 )

 ;default Pos root
 (defrule POS_default_root
 (declare (salience 30))
 (parser_id-cat_coarse ?wid ?cat)
 (id-original_word ?wid ?word)
 (word-morph (original_word ?word)(morph_word ?morph_wrd)(root ?root)(category ?cat1)(suffix ?suf)(number ?num))
 ?f0<-(morph_analysis_to_be_choosen ?wid)
 =>
	(retract ?f0)
	(assert (parser_id-root ?wid ?root))
	(printout ?*pre_morph_fp* "(parser_id-root-category-suffix-number  L"?wid"  "?root"  "?cat1" "?suf " -"")" crlf)
	(printout ?*root_fp*  "(parser_id-root  L"?wid" "?root")" crlf)
 )

 (defrule close_root_file
 (declare (salience -1000))
 =>
	(close ?*pre_morph_fp*)
	(close ?*root_fp*)
 )

