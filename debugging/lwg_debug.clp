
 (defglobal ?*count* = 1)

 (dribble-on debug_info)
 (facts)
 (dribble-off)
 (system "clear")
 (system "zenity  --text-info  --filename=debug_info  --width=560  --height=300  &")
 (assert (next_id 1))
 (assert (display_lwg))
 (assert (display_linkage "Enter the Sentence ::  "))


 (defrule display_linkage
 (declare (salience 111))
 ?f<-(display_linkage ?text)
 =>
 (retract ?f)
 (system "clear")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (printout t "Sentence :: " (system "cat jnk") crlf)
 (system "anu_link-parser.sh <jnk >jnk1 2>err")
 (system "cat jnk1")
 )

 (defrule sentence_display
 (declare (salience 110))
 ?f<-(next_id ?id)
 (id-word ?id ?word)
 =>
 (retract ?f)
 (if (eq ?id 1) then (printout t crlf crlf))
 (if (> ?*count* 6) then
     (bind ?*count* 0)
     (printout t crlf))

 (format t " %s - %d |" ?word ?id)
 (bind ?*count* (+ ?*count* 1))
 (bind ?id (+ ?id 1))
 (assert (next_id ?id))
 )

 (defrule sentence_display1
 (declare (salience 100))
 ?f<-(next_id ?id)
 =>
	(retract ?f)
	(printout t crlf crlf)
 )

 (defrule display_tam
 (declare (salience 99))
 (display_lwg)
 ?f0<-(root-verbchunk-tam-chunkids ? ?verb_chunk ?tam $?ids ?kriyA)
 =>
	(retract ?f0)
 	(printout t " verb_chunk :: " ?verb_chunk  "  tam :: "?tam  "   head_id :: "?kriyA crlf )
        (assert (assert_question))
 )

 (defrule entering_question
 (assert_question) 
 =>
 	(assert (question "Enter Your Choice (1 or 2 or 3): "))
        (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"crlf)
 )
 
 (defrule question
 (declare (salience 98))
 ?f<-(question ?text)
 =>
  (retract ?f)
	(printout t crlf crlf " 1. Wrong grouping    2. word \"not\" is missing in the group   3. Grouping not done" crlf crlf)
 	(format t "%s " ?text)
 	(bind ?reply (read))
        (if (or (eq ?reply 1)(eq ?reply 2)(eq ?reply 3)) then
 	(assert (get_choice ?reply))
        else
        (printout t "Enter correctly " crlf)
        (assert (question ?text))
        )
 )

 (defrule get_word_id
 ?f<-(get_choice 1)
 =>
        (printout t "Enter the head_id that is unnecessarly grouped : " )
        (retract ?f)
        (bind ?reply (read))
        (assert (get_unnesasary_id ?reply))
 )

 

 (defrule get_unnesasary_grouping
 ?f<-(get_unnesasary_id ?id)
 (linkid-wordid ?lid ?id)
 (rule_name-grouped_ids  ?rule_name $?ids ?lid)
;(test (member$ ?lid $?ids))
 =>
   (retract ?f)
	(printout t  crlf "The grouping is done by the " ?rule_name crlf crlf)
	(ppdefrule ?rule_name)
	(printout  t crlf "Do you want to check another id (y/n)" crlf)
        (bind ?reply (read))
        (if (eq ?reply n) then  (exit)
	else	(if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
        )
 )


 (defrule get_unnesasary_grouping1
 ?f<-(get_unnesasary_id ?id)
 (linkid-wordid ?lid ?id)
 (not (rule_name-grouped_ids  ?rule_name $?ids ?lid))
; (test (not(member$ ?lid $?ids)))
 =>
   (retract ?f)
   (printout t "Enter the correct head id" crlf)
   (assert (get_choice 1))
 )

 (defrule get_unnesasary_grouping2
 ?f<-(get_unnesasary_id ?id)
 =>
   (retract ?f)
   (printout t "Enter the correct head id" crlf)
   (assert (get_choice 1))
 )


 (defrule not_rule
 ?f<-(get_choice 2)
 =>
        (printout t "Enter the not id to be grouped : " )
        (retract ?f)
        (bind ?reply (read))
        (assert (get_not_id ?reply))
 )

 (defrule check_not_id
 (declare (salience 10))
 ?f<-(get_not_id ?id)
 (linkid-wordid ?lid ?id)
 (link_name-link_lnode-link_rnode ?name ? ?lid)
 (linkid-word ?lid  not)
 =>
 (retract ?f)

 	(if (neq ?name N) then
        	(printout t " Your id has no N link connected with subject link , so it cannot be grouped. "crlf)
	else
	 	(if (eq ?name N) then 
			(printout t  crlf "It should be grouped. May be there is a bug in the rule. Please inform to programmers " crlf)
		)
	)  
	(printout  t crlf "Do you want to check another id (y/n)" crlf)
        (bind ?reply (read))
        (if (eq ?reply n) then  (exit)
        else    (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
        )
  )

 (defrule check_not_id1
 ?f<-(get_not_id ?id)
 (linkid-wordid ?lid ?id)
 ;(link_name-link_lnode-link_rnode ?name ? ?lid)
 (not (linkid-word ?lid  not))
  =>
  (retract ?f)
  (printout t "Enter correctly :: " crlf)
  (bind ?reply (read))
  (assert (get_not_id ?reply))
  )
 

 (defrule check_not_id2
 ?f<-(get_not_id ?id)
 (not(linkid-wordid ? ?id))
  =>
  (retract ?f)
  (printout t "Enter correctly :: " crlf)
  (bind ?reply (read))
  (assert (get_not_id ?reply))
  )
 
  
 (defrule get_word_id1
 ?f<-(get_choice 3)
 =>
	(printout t "Enter the id that is not grouped : " )
	(retract ?f)
	(bind ?reply (read))
        (assert (get_word_id ?reply))
 )

 (defrule get_word_id2
 ?f1<-(get_word_id ?id)
 (not (id-word  ?id ?))
 =>
        (printout t "Enter the correct id : " )
        (retract ?f1)
        (bind ?reply (read))
        (assert (get_word_id ?reply))
 )

 (defrule check_S_link
 ?f<-(get_word_id ?id)
 (id-word  ?id ?)
 =>
        (retract ?f)
	(printout t "The basic assumptions to group are : "crlf crlf)
	(printout t "S_PP_TO_I_Pv  |  S_I_PP_Pgstarb |  S_Pa_TO_I  |  S_PP_Pgstarb  |  RS_PP_Pv    | S_PP_Pv | SI_I_PP "crlf)
	(printout t "S_I_PP_Pv     |  S_TO_I_Pgstarb |  S_I_TO_I   |  S_Pgstarb_Pv  |  S_TO_I_Pv   | S_I_PP  | S_I_Pv "crlf)
 	(printout t "S_I_TO_I_Pv   |  SI_Pgstarb_Pv  |  SI_TO_I_PP |  S_I_Pgstarb   |  S_Pgstarb_I | S_TO_I  | RS_PP "crlf)
 	(printout t "SI_PP_TO_I_Pv |  SI_I_TO_I_Pv   |  SI_I_PP_Pv |  S_I_Pg        |  SI_PP_Pv    | SI_I_Pv | S_PP  "crlf)
        (printout t "SI_I_Pa_TO_I  |  SI_TO_I_Pv     |  I_star_J   |  RS_Pgstarb    |  S_I_Pgstarb | RS_I    | SI_Pv "crlf)
	(printout t "SI_I_TO_I_Pv  |  SI_I_Pgstarb   |  S_TO_I_PP  |  S_I_Pgstarb   |  SI_Pgstarb  | SI_PP   | S_ID  "crlf)
        (printout t "SI_PP_Pgstarb |  SI_I_TO_I      |  SI_I_PP_Pgstarb_Pv    |  TS_I_Pv_TO_I      | S_I     | TS_I  " crlf)
        (printout t "Wi_O_let_obj  |  SI_Pgstarb     |  S_I_PP_Pgstarb_Pv     |  SI_Pgstarb_TO_I   | Wi_I    | Wi " crlf)
        (printout t "Wi_O_let_us   |  PF_SI PP       |  SI_I_PP_Pgstarb SI_I  |  SI_without_that   | RS      | S  "crlf)
	(printout t "SI_PP_Pgstarb |  S_TO_I_Pg_or_pa " crlf crlf)
	(printout t "(Note : Above all are link names) " crlf)
        (printout t "Is there any combination which satisfies your id (y/n) : " )
	(bind ?ans (read))
        (if (eq ?ans n) then
		(printout t crlf "According to our assumptions the id cannot be grouped " crlf)
       		(printout t crlf  "Do you want to check another id (y/n)" crlf)
		(bind ?reply (read))
	        (if (eq ?reply n) then	(exit)
		else	 (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
		)

	else
		(if (eq ?ans y) then
			(printout t  "Enter the combination : ")
			(bind ?ans1 (read))		
			(bind ?ans1 (sym-cat  ?ans1 _ rule))
                        (printout t crlf)
			(ppdefrule ?ans1)
			(printout t crlf  "Do you want to check another id (y/n)" crlf)
	                (bind ?reply (read))
        	        (if (eq ?reply n) then  ;(exit)  
                	else     (if (eq ?reply y) then (assert (question "Enter Your Choice (1 or 2 or 3): ")))
			)
                )

	)
 )

 (system "clear")
