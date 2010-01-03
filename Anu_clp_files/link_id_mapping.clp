 (deffacts dummy_facts
 (id-original_word)
 (id-last_word)
 (using-chunk-ids)
 (parserid-wordid )
 (id-cat)
 (parser_id-cat_coarse)
 (linkid-word-node_cat)
 (using-parser-ids)
 (link_name-link_lnode-link_rnode)
 (parser_id-root)
 (No complete linkages found)
 (parser_id-root-category-suffix-number)       
 (root-verbchunk-tam-parser_chunkids)
 (lwg_root-verbchunk-tam-chunkids)
 (verb_type-verb-causative_verb-tam)
 (link_id-idiom_word_mng)
 (link_id-idiom_root_mng)  
 (meaning_has_been_decided_for_linkid) 
 )
 (defglobal ?*cat_cons-file* = cat_cons_fp) 
 (defglobal ?*mng_dcd-file* = mng_dcd_fp)
 (defglobal ?*id_expr-file* = id_expr_fp)
 (defglobal ?*root-file* = root_fp)
 (defglobal ?*morph-file* = pre_morph_fp)
 (defglobal ?*lwg-file* = lwg_fp)
 (defglobal ?*rel-file* = file)
 (defglobal ?*rel-file1* = file1)
 (defglobal ?*link_rel-file* = link_fp)
 (defglobal ?*l_rel-file* = l_rel_fp)

 (deffunction string_to_integer (?link_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))

 (defrule map_cat_consis
 (declare (salience 900))
 (id-cat $?var)
 =>
	(printout ?*cat_cons-file* "(id-cat " (implode$ $?var) ")" crlf)
 )
 
 (defrule default_cat
 (declare (salience 100))
 (No complete linkages found)
 (parser_id-cat_coarse ?id ?var)
 =>
        (printout ?*cat_cons-file* "(id-cat_coarse "?id" "?var")" crlf)
 )


 (defrule map_cat_consis1
 (declare (salience 850))
 (parser_id-cat_coarse ?link_id ?var)
 (parserid-wordid  ?link_id ?wid)
 =>
	(printout ?*cat_cons-file* "(id-cat_coarse "?wid" "?var")" crlf)
 )

 (defrule map_chunk_rel
 (declare (salience 901))
 (using-chunk-ids ?rel $?ids)
 =>
        (printout ?*rel-file* "("?rel " " (implode$ $?ids)")"crlf)
 )

 (defrule map_stnford_rel
 (declare (salience 901))
 (No complete linkages found)
 (using-stanford-ids ?rel ?s_id1 ?s_id2)
 (sid-wordid ?s_id1 ?id1)
 (sid-wordid ?s_id2 ?id2)
 =>
; (bind ?s_id1 (sub-string 2 (length ?s_id1) ?s_id1))
; (bind ?s_id2 (sub-string 2 (length ?s_id2) ?s_id2))
        (printout ?*rel-file* "("?rel " " ?id1 "  "?id2")"crlf)
 )

 
 (defrule map-id
 (declare (salience 901))
 (using-parser-ids  ?rel)
 =>
	(printout ?*rel-file* "("?rel")"crlf)
        (printout ?*rel-file1* "(using-parser-ids   " ?rel")"crlf)
 )

 (defrule map-rel1
 (declare (salience 900))
 (using-parser-ids  ?rel ?l_id_1)
 (parserid-wordid  ?l_id_1 ?id1)
 (id-word ?id1 ?word)
 =>
        (printout ?*rel-file* "("?rel"  "?id1")"crlf)
        (printout ?*rel-file1* "(using-parser-ids   " ?rel"  "?id1")"crlf)
 )


 (defrule map-rel
 (declare (salience 900))
 (using-parser-ids  ?rel ?l_id_1 ?l_id_2)
 (parserid-wordid  ?l_id_1 ?id1)
 (parserid-wordid  ?l_id_2 ?id2)
 (id-word ?id1 ?word)
 (id-word ?id2 ?word1)
 =>
	(printout ?*rel-file* "("?rel"  "?id1" "?id2")"crlf)
        (printout ?*rel-file1* "(using-parser-ids   "?rel"  "?id1" "?id2")"crlf)
 )

 (defrule map-rel2
 (declare (salience 900))
 (using-parser-ids  ?rel ?l_id_1 ?id)
 (using-parser-ids  viSeRya-jo_samAnAXikaraNa ?l_id_2 ?id)
 (parserid-wordid  ?l_id_1 ?id1)
 (parserid-wordid  ?l_id_2 ?id2)
 (id-word ?id1 ?word)
 (id-word ?id2 ?word1)
 (id-HM-source ?id ?hmng Relative_clause)
 =>
       (printout ?*rel-file* "("?rel"  "?id1"  "?id")"crlf)
       (printout ?*rel-file* "(viSeRya-jo_samAnAXikaraNa  "?id2"  "?id")"crlf)
       (printout ?*rel-file1* "(using-parser-ids   "?rel"  "?id1"  "?id")"crlf)
       (printout ?*rel-file1* "(using-parser-ids   viSeRya-jo_samAnAXikaraNa  "?id2"  "?id")"crlf)
 )
 

;Ex. She was asked about the pay increase but made no comment.
 (defrule map-rel3
 (declare (salience 900))
 (using-parser-ids  kriyA-subject ?l_id 10001)
 (parserid-wordid  ?l_id ?id)
 (id-original_word 10001 ?word)
 =>
       (printout ?*rel-file* "(kriyA-subject  "?id"  10001)"crlf)
       (printout ?*rel-file1* "(using-parser-ids   kriyA-subject  "?id"  10001)"crlf)
 )


 (defrule map-catid
 (declare (salience 900))
 (linkid-word-node_cat   ?link_id ?lword  ?lcat)
 (parserid-wordid  ?link_id ?id)
 =>
	(printout ?*link_rel-file* "(id-word-node_cat " ?id " "?lword " "?lcat ")"crlf)
 )

 (defrule map-vb_chunk
 (declare (salience 900))
 (link_name-link_lnode-link_rnode  ?lname   ?lnode  ?rnode)
 (parserid-wordid  ?lnode ?l_id)
 (parserid-wordid  ?rnode ?r_id)
 =>
	(printout ?*l_rel-file* "(link_name-lnode-rnode " ?lname " " ?l_id " " ?r_id ")" crlf)
 )

 (defrule map-0_id
 (declare (salience 900))
 (link_name-link_lnode-link_rnode  ?lname   L0  ?rnode)
 (parserid-wordid  ?rnode ?r_id)
 =>
	(printout ?*l_rel-file* "(link_name-lnode-rnode " ?lname "  0  " ?r_id ")" crlf)
)

 (defrule map_no_comp_link_found
 (declare (salience 900))
 (No complete linkages found)
 =>
	(printout ?*link_rel-file* "(No complete linkages found)"crlf)
	(printout ?*l_rel-file* "(No complete linkages found)" crlf)
        (printout ?*rel-file1* "(No complete linkages found)"crlf)
 )

 (defrule map_root
 (declare (salience 900))
 (parserid-wordid  ?lid ?wid)
 (parser_id-root ?lid ?root)
 =>
	(printout  ?*root-file* "(id-root " ?wid " " ?root ")" crlf)
)

 (defrule map_root1
 (declare (salience 800))
 (No complete linkages found)
 (parser_id-root ?lid ?root)
 =>
	(bind ?lid (string_to_integer ?lid))
	(printout  ?*root-file* "(id-root " ?lid " " ?root ")" crlf)
 )

 (defrule map_morph
 (declare (salience 900))
 (parserid-wordid  ?lid ?wid)
 (parser_id-root-category-suffix-number  ?lid $?vars)
 =>
 	(printout ?*morph-file* "(id-root-category-suffix-number "  ?wid " " (implode$ $?vars) ")" crlf)
 )

 (defrule map_morph1
 (declare (salience 800))
 (No complete linkages found)
 (parser_id-root-category-suffix-number  ?lid $?vars)
 =>
	(bind ?lid (string_to_integer ?lid))
	(printout ?*morph-file* "(id-root-category-suffix-number "  ?lid " " (implode$ $?vars) ")" crlf)
 )

 (defrule map_lwg
 (declare (salience 900))
 ?f0<-(root-verbchunk-tam-parser_chunkids  ?rt ?vb_chnk ?tam $?start ?lid $?end)
 (parserid-wordid  ?lid ?wid)
 =>
	(assert (root-verbchunk-tam-parser_chunkids  ?rt ?vb_chnk ?tam $?start ?wid $?end ))
	(retract ?f0)
 )

 (defrule map_lwg1
 (declare (salience 100))
 ?f0<-(root-verbchunk-tam-parser_chunkids  $?vars)
 =>
 	(printout ?*lwg-file* "(root-verbchunk-tam-chunkids "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )

 (defrule map_lwg2
 (declare (salience 900))
 ?f0<-(verb_type-verb-causative_verb-tam  ?vrb_typ ?lid ?lid1 ?tam)
 (parserid-wordid  ?lid ?wid)
 (parserid-wordid  ?lid1 ?wid1)
 =>
	(assert (verb_type-verb-causative_verb-tam  ?vrb_typ ?wid ?wid1 ?tam))
	(retract ?f0)
 )

 (defrule map_lwg3
 (declare (salience 100))
 ?f0<-(verb_type-verb-causative_verb-tam  $?vars)
 =>
	(printout ?*lwg-file* "(verb_type-verb-causative_verb-tam "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )

 (defrule map_lwg4
 (declare (salience 100))
 ?f0<-(lwg_root-verbchunk-tam-chunkids  $?vars)
 =>
	(printout ?*lwg-file* "(root-verbchunk-tam-chunkids "  (implode$ $?vars) ")" crlf)
	(retract ?f0)
 )
 
 (defrule map_idiom_word
 (declare (salience 900))
 (link_id-idiom_word_mng    ?lid     ?mng)
 (parserid-wordid    ?lid  ?wid)
 => 
	(printout ?*id_expr-file* "(id-idiom_word_mng " ?wid "	"?mng ")" crlf)
 )

 (defrule map_idiom_root
 (declare (salience 900))
 (link_id-idiom_root_mng    ?lid     ?mng)
 (parserid-wordid    ?lid  ?wid)
 =>
	(printout ?*id_expr-file* "(id-idiom_root_mng " ?wid "  "?mng ")" crlf)
 )

 (defrule map_mng_decided
 (declare (salience 900))
 (meaning_has_been_decided_for_linkid ?lid)
 (parserid-wordid    ?lid  ?wid)
 =>
	(printout ?*mng_dcd-file* "(meaning_has_been_decided  " ?wid ")" crlf)
 )

 (defrule end
 (declare (salience -10))
 =>
	(close ?*cat_cons-file*)
	(close ?*root-file*)
	(close ?*morph-file*)
	(close ?*lwg-file*)
	(close ?*rel-file*)
	(close ?*rel-file1*)
        (close ?*link_rel-file*)
	(close ?*l_rel-file*) 
	(close ?*id_expr-file*)
	(close ?*mng_dcd-file*)
 )
