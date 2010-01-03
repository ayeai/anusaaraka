 (defglobal ?*link_map* = link_word_fp)

 (deffacts dummy_linkid_id_mapping
 (parserid-wordid )
 (link_consid-wordid)
 (No complete linkages found)
 )

 (defrule end
 (declare (salience -100))
 =>
	(close  ?*link_map*)
 )

 ;Women 's rights have been put back on the agenda .
 (defrule id-link_id_map_for_first_word
 (declare (salience 1000))
 (id-original_word 1 ?wrd)
 (linkid-word-remark 1 ?wrd1 ?remark)
 =>
	(if (neq ?remark -) then
		(printout ?*link_map* "(parserid-wordid   L1"?remark"  1)" crlf)
	else
		(printout ?*link_map* "(parserid-wordid   L1   1)" crlf)
	)
 )


 (defrule id-link_id_map
 ; Because Link-parser generally changes the case of the first letter of the first word, and since id=1 always gets mapped to itself so it has been treated specially.
 
 (id-original_word ?id&:(> ?id 1) ?wrd)
 (linkid-word-remark ?l_id&:(>= ?l_id ?id) ?wrd ?remark)
 (not (linkid-word-remark ?l_id1&:(and (>= ?l_id1 ?id) (< ?l_id1 ?l_id)) ?wrd ?remark))
 =>
	(if (neq ?remark -) then
		(printout ?*link_map* "(parserid-wordid   L" ?l_id ?remark"  " ?id ")" crlf)
		(printout ?*link_map* "(parserid-wordid   L" (+ 1 ?l_id)"  " ?id ")" crlf)
	else
		(printout ?*link_map* "(parserid-wordid   L" ?l_id"  " ?id ")" crlf)
	)	
 )


  ;Women 's rights have been put back on the agenda .
 (defrule sid-wrdid_map_for_first_word
 (declare (salience 1000))
 (id-original_word 1 ?wrd)
 (s_numeric_id-word 1 ?wrd1)
 =>
        (printout ?*link_map* "(parserid-wordid  L1   1)" crlf)
 )


 (defrule sid-wrdid_map
 ; Because Link-parser generally changes the case of the first letter of the first word, and since id=1 always gets mapped to itself so it has been treated specially.

 (id-original_word ?id&:(> ?id 1) ?wrd)
 (s_numeric_id-word ?l_id&:(>= ?l_id ?id) ?wrd )
 (not (s_numeric_id-word ?l_id1&:(and (>= ?l_id1 ?id) (< ?l_id1 ?l_id)) ?wrd))
 =>
        (printout ?*link_map* "(parserid-wordid  L" ?l_id"  " ?id ")" crlf)
 )
                                                                                                                            
                                               
