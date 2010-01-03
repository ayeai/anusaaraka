 (deffunction string_to_integer (?link_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))

 (deffacts dunmmy_facts 
 (root-verbchunk-tam-link_chunkids)
 (linkid-word)
 (modified_root-verbchunk-chunkids)
 (link_name-link_expansion)
 (link_name-link_lnode-link_rnode)
 (No complete linkages found)
 )

 (defrule lwg_not_rule_N_link
 (declare (salience 350))
 ?f0<-(root-verbchunk-tam-parser_chunkids root_to_be_decided  ?vbchunk tam_to_be_decided ?sr_node)
; (or (link_name-link_expansion  ?sub  S $?)(link_name-link_expansion  ?sub   W i))
 (or (link_name-link_expansion  ?not N $?)(link_name-link_expansion  ?not N T $?))
; (link_name-link_lnode-link_rnode ?sub ?sl_node  ?sr_node)
 (link_name-link_lnode-link_rnode ?not ?sr_node ?nr_node)
 (linkid-word ?nr_node  not)
 =>
        (retract ?f0)
 	(printout lwg_info_fp "(root-verbchunk-tam-parser_chunkids  root_to_be_decided  "?vbchunk"_not  tam_to_be_decided "?sr_node " "?nr_node ")"crlf )
 )

 (defrule lwg_not_rule_N_link1
 (declare (salience 300))
 ?f0<-(root-verbchunk-tam-parser_chunkids ?root ?vbchunk ?tam  ?sr_node $?ids)
; (or (link_name-link_expansion  ?sub  S $?)(link_name-link_expansion  ?sub   W i))
 (or (link_name-link_expansion  ?not N $?)(link_name-link_expansion  ?not N T $?))
; (link_name-link_lnode-link_rnode ?sub ?sl_node  ?sr_node)
 (link_name-link_lnode-link_rnode ?not ?sr_node ?nr_node)
 (linkid-word ?nr_node  not)
 =>
	(retract ?f0)
	(bind ?id (implode$ $?ids))
	(bind ?index (str-index "_" ?tam))
	(bind ?index1 (str-index "_" ?vbchunk))
	(printout lwg_info_fp "(root-verbchunk-tam-parser_chunkids  " ?root " " (sym-cat (sub-string 1 ?index1 ?vbchunk)"not_" (sub-string (+ ?index1 1) 1000 ?vbchunk)) " " (sym-cat (sub-string 1 ?index ?tam) "not_" (sub-string (+ ?index 1) 1000 ?tam)) " " ?sr_node " "?nr_node " " ?id")" crlf )
 ) 

 (defrule tam
 (declare (salience -100))
 (root-verbchunk-tam-parser_chunkids ?root ?vbchunk ?tam  $?ids)
 =>
; 	(bind ?id (implode$ $?ids))
	(printout lwg_info_fp "(root-verbchunk-tam-parser_chunkids  " ?root " " ?vbchunk " " ?tam " "(implode$ $?ids) ")"crlf)
 )

 (defrule tam1 
 (declare (salience 100))
 ?f<-(modified_root-verbchunk-chunkids ?m_root ?vbchunk1 ?root_id ?c_id)
 ?f0<-(root-verbchunk-tam-parser_chunkids ?root ?vbchunk ?tam  $?ids ?root_id)
 =>
	(retract ?f0 ?f )
;	(bind ?id (implode$ $?ids))
	(printout lwg_info_fp "(verb_type-verb-causative_verb-tam causative " ?root_id " " ?c_id " " ?tam ")" crlf)
	(printout lwg_info_fp "(root-verbchunk-tam-parser_chunkids  " ?m_root " " ?vbchunk"_" ?vbchunk1 " " ?tam " " (implode$ $?ids) " "?root_id " " ?c_id")"crlf)
 )


 (defrule tam2
 (declare (salience 100))
?f<-(modified_root-verbchunk-chunkids ?m_root ?vbchunk1 ?root_id ?c_id)
 =>
         (retract ?f )
        (printout lwg_info_fp "(verb_type-verb-causative_verb-tam causative " ?root_id " " ?c_id " " - ")" crlf)
 )

