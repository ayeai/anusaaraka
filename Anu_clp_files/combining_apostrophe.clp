 (deffunction string_to_integer (?link_id) 
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))

 (deffacts combining_apostrophe_info
 (link_name-link_lnode-link_rnode)
 (linkid-word-node_cat)
 (linkid-word-remark)
 (link_numeric_id-word)
 (linkid-word)
 )
 
 (defglobal ?*nid_wrd_fp* =  l_n_w_fp)
 (defglobal ?*l_wrd_fp* =  l_fp )
 (defglobal ?*l_cat_fp* = l_c_fp )
 (defglobal ?*l_rel_fp* = l_r_fp )

 ;Please do accept the same; bless the Anusaaraka project to make speedy progress.
 (defrule handling_punctuations
 (declare (salience 1000))
 ?f0<-(linkid-word-node_cat  ?lid ?str ?cat)
 (test (or (eq ?str "\"")(eq ?str "?")(eq ?str "(")(eq ?str ")")(eq ?str ";")))
 =>
	(retract ?f0)
	(if  (eq ?str "\"") then
		(printout ?*l_cat_fp* "(linkid-word-node_cat  " ?lid  "\"\\"  ?str"\"   " ?cat ")"crlf)
	else
		(printout ?*l_cat_fp* "(linkid-word-node_cat  " ?lid " \"" ?str"\"  "?cat ")"crlf)
	)
 )

 ; Please do accept the same; bless the Anusaaraka project to make speedy progress.
 (defrule handling_punctuations1
 (declare (salience 1000))
 ?f0<-(link_numeric_id-word ?id ?word)
 ?f1<-(linkid-word  ?lid ?word)
 (test (or (eq ?word "\"")(eq ?word "?")(eq ?word "(")(eq ?word ")")(eq ?word ";")))
 =>
	(retract ?f0 ?f1)
	(if  (eq ?word "\"") then
		(printout ?*nid_wrd_fp* "(linkid-word-remark  " ?id "  \"\\"  ?word"\""  "-)" crlf)
		(printout ?*l_wrd_fp* "(linkid-word  "?lid " \"\\"  ?word"\"" ")" crlf)
	else	
		(printout ?*nid_wrd_fp* "(linkid-word-remark  " ?id "   \"" ?word"\"  -)" crlf)
		(printout ?*l_wrd_fp* "(linkid-word  "?lid "  \"" ?word"\" )" crlf))
 )

 ; Rama ate some sweets . 
 ; Removes square bracket after the word in link_cat file  [ sweets[!] as sweets ]
 (defrule rm_sqr_brkt_from_cat
 (declare (salience 500))
 ?f0<-(linkid-word-node_cat  ?lid ?word ?cat)
 (test (eq (numberp ?word) FALSE))
 =>
	(bind ?index (str-index "[" ?word))
	(if (numberp ?index) then
		(retract ?f0)
		(bind ?str (sub-string 1 (- ?index 1) ?word))
		(printout ?*l_cat_fp* "(linkid-word-node_cat  " ?lid "  "?str "  "?cat ")"crlf)
        )
 )

 ; Rama ate some sweets . 
 ; Removes square bracket after the word in link_word file  [ sweets[!] as sweets ]
 (defrule rm_sqr_brkt_from_word
 (declare (salience 500))
 ?f1<-(linkid-word  ?lid ?word)
 ?f0<-(link_numeric_id-word ?id ?word)
 (test (eq  (numberp ?word) FALSE))
 (test (= (string_to_integer ?lid) ?id))
 =>
	(bind ?index (str-index "[" ?word))
	(if (numberp ?index) then
		(retract ?f0 ?f1)
		(bind ?str (sub-string 1 (- ?index 1) ?word))
                (printout ?*nid_wrd_fp* "(linkid-word-remark  " ?id "  "?str  "  -)" crlf)
                (printout ?*l_wrd_fp* "(linkid-word  "?lid "  "?str ")"crlf)
	)
 )

 ; These are children's books.
 (defrule word_rule_ys_yp
 (declare (salience 100))
 (or (link_name-link_lnode-link_rnode YS ?lnode ?rnode) (link_name-link_lnode-link_rnode YP ?lnode ?rnode))
 ?f0<-(linkid-word ?lnode ?wrd)
 ?f1<-(link_numeric_id-word ?lid ?wrd)
 (test (= (string_to_integer ?lnode) ?lid))
 ?f2<-(linkid-word ?rnode ?wrd1)
 ?f3<-(link_numeric_id-word ?rid ?wrd1)
 (test (= (string_to_integer ?rnode) ?rid))
 =>
	(retract ?f0 ?f1 ?f2 ?f3)
        (printout ?*nid_wrd_fp*  "(linkid-word-remark  " ?lid "  "?wrd ?wrd1 "  " ?wrd1")" crlf)
        (printout ?*l_wrd_fp* "(linkid-word  "?lnode ?wrd1" "?wrd ?wrd1 ")" crlf)
	(bind ?wrd1 (str-cat ?lnode ?wrd1))
	(bind ?lnd (explode$ ?wrd1))
	(assert (id-Modified_id ?lnode ?lnd))
        (assert (id-Modified_id ?rnode ?lnd))
 
)

 (defrule word_rule
 (declare (salience 50))
 (linkid-word  ?lid ?word)
 ?f0<-(link_numeric_id-word ?id ?word)
 =>
        (printout ?*nid_wrd_fp* "(linkid-word-remark  " ?id "  "?word "  -)" crlf)
        (printout ?*l_wrd_fp* "(linkid-word  "?lid "  "?word ")" crlf)

 )

 (defrule word_rule1
 (declare (salience 30))
 (No complete linkages found)
 =>
	(printout ?*l_wrd_fp* "(No complete linkages found)" crlf)
        (printout ?*nid_wrd_fp* "(No complete linkages found)" crlf)
 )

 ; These are children's books
 (defrule cat_rule_ys_yp
 (declare (salience 100))
 (or (link_name-link_lnode-link_rnode  YS  ?lnode ?rnode) (link_name-link_lnode-link_rnode YP ?lnode ?rnode))
 ?f0<-(linkid-word-node_cat  ?lnode ?word ?cat)
 ?f1<-(linkid-word-node_cat  ?rnode ?word1 ?cat1)
 =>
	(retract ?f0 ?f1)
	(printout ?*l_cat_fp* "(linkid-word-node_cat  " ?lnode ?word1 "  "?word ?word1 "  " ?cat ")" crlf)
 )

 (defrule cat_rule
 (declare (salience 50))
 (linkid-word-node_cat  ?lid ?word ?cat)
 =>
	(printout ?*l_cat_fp* "(linkid-word-node_cat  " ?lid "  "?word "  " ?cat ")" crlf)
 )

 (defrule cat_rule1
 (declare (salience 30))
 (No complete linkages found)
 =>
	(printout ?*l_cat_fp* "(No complete linkages found)" crlf)
 )

(defrule link_rel_ys_yp0
 (declare (salience 91))
 ?f0<-(link_name-link_lnode-link_rnode ?lname ?lnode ?rnode)
 (id-Modified_id ?lnode ?lnd)
 (id-Modified_id ?rnode ?rnd)
 =>
        (retract ?f0)
        (assert (modified_link_name-link_lnode-link_rnode ?lname ?lnd ?rnd))
 )

 (defrule link_rel_ys_yp1
 (declare (salience 90))
 ?f0<-(link_name-link_lnode-link_rnode ?lname $?id1 ?lnode $?id2)
 (id-Modified_id ?lnode ?lnd)
 =>
        (retract ?f0)
        (assert (modified_link_name-link_lnode-link_rnode ?lname $?id1 ?lnd $?id2))
 )

 (defrule link_rel_ys_yp2
 (declare (salience 52))
 ?f0<-(modified_link_name-link_lnode-link_rnode ?lname ?lnode ?rnode)
 =>
	(retract ?f0)
	(printout ?*l_rel_fp* "(link_name-link_lnode-link_rnode  " ?lname "   "?lnode "  "?rnode")" crlf)
 )

 (defrule link_rel_ys_yp3
 (declare (salience 30))
 ?f0<-(link_name-link_lnode-link_rnode ?lname ?lnode ?rnode)
 =>
	(retract ?f0)
	(printout ?*l_rel_fp* "(link_name-link_lnode-link_rnode  "?lname "  "?lnode "  "?rnode")" crlf)
 )

 (defrule link_rel1
 (declare (salience 30))
 (No complete linkages found)
 =>
	(printout ?*l_rel_fp* "(No complete linkages found)" crlf)
 )

 (defrule end
 (declare (salience -50))
 =>
        (close ?*nid_wrd_fp*)
	(close ?*l_wrd_fp*)
	(close  ?*l_cat_fp*)
	(close  ?*l_rel_fp*)
 )

