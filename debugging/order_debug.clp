
 (defglobal ?*l_list* = (create$ ))
 (defglobal ?*r_list* = (create$ ))
 (defglobal ?*k_list* = (create$ ))
 (defglobal ?*k_list1* = (create$ ))
 (defglobal ?*final_list* = (create$ ))
 (defglobal ?*count* = 1)
 (defglobal ?*count1* = 1)
 (defglobal ?*debug* = ON )

 (dribble-on debug_info)
 (facts)
 (dribble-off)
 (system "clear")
 (system "zenity  --text-info  --filename=debug_info  --width=560  --height=300  &")


 (deffunction reverse ($?a)
 (if (eq (length ?a) 0) then ?a
 else
 (create$ (reverse (rest$ ?a)) (first$ ?a))))

 (defrule sent_display0
 (declare (salience 2007))
 ?f<-(Eng_sen ?sen)
  =>
 (retract ?f)
 (if (eq ?*debug* ON) then
 (system "cat " ?*home_anu_tmp*)
 )
 )
 

 (defrule assert_dummy_facts
 (declare (salience 2000))
 (expr $?)
  =>
 (assert(lwg_list))
 (assert(hindi_id_order ))
 (assert(ordered_group_ids))
 (assert (index 1))
 (assert (English-list ))
 )
 ;-----------------------------------------------------------------------------------------------------
 (defrule get_eng_word_list
 (declare (salience 1950))
 (id-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?word (str-cat ?word "," ?id ))
 (assert (English-list $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )
 ;----------------------------------------------------------------------------------------------------- 
 ; get head ids from local word grouping into lwg_list
 (defrule  lwg_list
 (declare (salience 1040))
 (root-verbchunk-tam-chunkids ? ? ? $? ?id)
 ?f<-(lwg_list $?ids)
 (not (lwg_id ?id))
  =>
	(retract ?f )
	(assert (lwg_id ?id))
    	(bind $?ids (insert$ $?ids 1 ?id))
    	(bind $?ids (sort > $?ids))
    	(assert (lwg_list $?ids))
 )

 (defrule print_lwg_list
 (declare (salience 1039))
 (lwg_list $?ids)
 (English-list $?Eng_list)
 (not (lwg_list_printed))
  =>
 (assert(lwg_list_printed))
 (if (eq ?*debug* ON) then
 (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
 (printout t crlf " Finite verbs in the sentences are : ")
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
 (printout t " (Assuming lwg verbs as finite verbs)" crlf))
 )

 ;----------------------------------------------------------------------------------------------------- 
 ;Adding left-id  to ?*l_list* list and
 ;Adding right-id to ?*r_list* list

 (defrule rule1
 (declare (salience 1000))
 (using-parser-ids ?rel ?l_id ?r_id)
 (test (and (neq ?rel viSeRya-det_viSeRaNa) (neq ?rel viSeRya-viSeRaNa)(neq ?rel kriyA-nA)(neq ?rel kriyA-ke_liye) (neq ?rel nAma-saMkRipwa_nAma)(neq ?rel proper_noun-det_viSeRaNa)(neq ?rel subject-opener)(neq ?rel kriyA-ne_ke_liye)(neq ?rel viSeRya-wulanAwmaka_viSeRaNa)(neq ?rel kriyA-viXi_vAkyakarma)(neq ?rel kriyA-samAnakAlika_kriyA)(neq ?rel pUrvakAlika_kriyA-ananwarakAlika_kriyA)(neq ?rel kriyA-praSnavAcI)(neq ?rel muKya_vAkya-sApekRa_upavAkya)(neq ?rel subject-vAkyasamAnAXikarNa)))
 =>
 (bind ?*l_list* (create$ ?*l_list* ?l_id))
 (bind ?*r_list* (create$ ?*r_list* ?r_id))
 )

 (defrule rule1_tmp
 (declare (salience 1000))
 (No complete linkages found)
 (or(using-chunk-ids ?rel ?l_id ?r_id)(using-stanford-ids ?rel ?l_id ?r_id))
 (test (and (neq ?rel viSeRya-det_viSeRaNa) (neq ?rel viSeRya-viSeRaNa)(neq ?rel kriyA-nA)(neq ?rel kriyA-ke_liye) (neq ?rel nAma-saMkRipwa_nAma)(neq ?rel proper_noun-det_viSeRaNa)(neq ?rel subject-opener)(neq ?rel kriyA-ne_ke_liye)(neq ?rel viSeRya-wulanAwmaka_viSeRaNa)(neq ?rel kriyA-viXi_vAkyakarma)(neq ?rel kriyA-samAnakAlika_kriyA)(neq ?rel pUrvakAlika_kriyA-ananwarakAlika_kriyA)(neq ?rel kriyA-praSnavAcI)(neq ?rel muKya_vAkya-sApekRa_upavAkya)(neq ?rel subject-vAkyasamAnAXikarNa)))
 =>
 (bind ?*l_list* (create$ ?*l_list* ?l_id))
 (bind ?*r_list* (create$ ?*r_list* ?r_id))
 )


 ;----------------------------------------------------------------------------------------------------- 
 ;Getting related ids of a particular finite verb
 (defrule rule3
 (declare (salience 900))
 (lwg_list ?k_id1 $?ids)
 (English-list $?Eng_list)
 => 
  (bind ?len (length$ ?*l_list*))
  (bind ?*k_list1* (create$ ?*k_list1*  ?k_id1))
   (while (neq (length$ ?*k_list1*) 0) do
    (bind ?k_id (nth$ 1 ?*k_list1*))
     (loop-for-count (?j 0 ?len) 
        (bind ?id1 (nth$ ?j ?*l_list*))
           (if (eq ?id1 ?k_id) then
             (bind ?n_id1 (nth$ ?j ?*r_list*)) 
             (assert (list_control_fact ?n_id1))
             (if (eq (member$ ?n_id1 ?*k_list*) FALSE) then ;If the id already present in the list it should'nt be taken again
             (bind ?*k_list1* (create$ ?*k_list1* ?n_id1))
             (bind ?*k_list* (create$ ?*k_list* ?n_id1))
             )
           )
     )
     (bind ?*k_list1* (delete-member$ ?*k_list1* (first$ ?*k_list1*)))
   )
 (bind ?*k_list1* (create$ ))
 (assert (list_control_fact ?k_id1))
 (if (eq ?*debug* ON) then
 (printout t crlf "'padas' in the clause with the finite verb  \""(nth$ ?k_id1 $?Eng_list) "\" are ::  ")
                   (loop-for-count (?i  1 (length$ ?*k_list*))
                   (bind ?wrdid (nth$ ?i ?*k_list*))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
 (printout t crlf)
 )
 (bind ?*k_list* (create$ ?k_id1 ?*k_list*))
 (bind ?*k_list* (sort > ?*k_list*))
 (bind ?*k_list* (reverse  ?*k_list* ))
 (assert (list ?*k_list*))
 (if (eq ?*debug* ON) then
 (printout t " List after sorting in increasing order ::  ")
 (loop-for-count (?i  1 (length$ ?*k_list*))
                   (bind ?wrdid (nth$ ?i ?*k_list*))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
 (printout t  " (Assuming hindi words come in reverse order of English.)"crlf))
 )

 ;----------------------------------------------------------------------------------------------------- 

 ;Moving the subject to first position in the sentence.
 (defrule subject_rule
 (declare (salience 955))
 (kriyA-subject ?kriyA_id ?subj_id)
 ?f<-(list $?list)
 ?f1<-(list_control_fact ?subj_id)
 (test (and (member$ ?subj_id $?list)(member$ ?kriyA_id $?list)))
 (English-list $?Eng_list)
  =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED subject_rule    :: Moved subject("(nth$ ?subj_id $?Eng_list)") to first position in the sentence." crlf )
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t   crlf ))
        (bind $?list (delete-member$ $?list ?subj_id))
        (bind $?list (create$ ?subj_id $?list))
        (assert(list $?list))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: ")
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t   crlf crlf))
        (bind ?*k_list* (create$))
 )

 ;-----------------------------------------------------------------------------------------------------
 ;Moving the verb to last position in the sentence.
 (defrule verb_rule
 (declare (salience 954))
 (root-verbchunk-tam-chunkids $? ?h_id) ; To stop firing this rule in non-finite verb cases  Ex : Venus was a major Roman goddess , associated with love and beauty .
 (pada_info (group_head_id ?h_id)(group_cat VP)(Hin_position 0) )
 ?f<-(list $?list)
 ?f1<-(list_control_fact ?h_id)
 (test(and (member$ ?h_id $?list)(member$ ?h_id $?list)))
 (English-list $?Eng_list)
  =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
      (printout t " FIRED verb_rule       :: Moved verb("(nth$ ?h_id  $?Eng_list)") to last position in the sentence." crlf )
      (printout t " Before movement       :: " )
                      (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t   crlf ))
        (bind $?list (delete-member$ $?list ?h_id))
        (bind $?list (create$ $?list ?h_id))
        (assert(list $?list))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
                     (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
                   (printout t   crlf crlf)) 
 )

  ;----------------------------------------------------------------------------------------------------- 

  ;Moving subject_samAnAXikaraNa to before kriyA position in the sentence.
  ;The hat is too small for me . 
  (defrule subject_samAnAXikaraNa_rule
  (declare (salience 953))
  (subject-subject_samAnAXikaraNa ?sub_id ?subject_samAnAXikaraNa)
  ?f<-(list $?list ?kriyA)
  ?f1<-(list_control_fact ?subject_samAnAXikaraNa)
  (test (member$ ?sub_id $?list))
  (English-list $?Eng_list)
   =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED subject_samAnAXikaraNa_rule :: Moved subject_samAnAXikaraNa("(nth$ ?subject_samAnAXikaraNa $?Eng_list)") to before kriyA("(nth$ ?kriyA $?Eng_list)") in the sentence." crlf)
        (printout t " Before movement        :: ")
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?kriyA $?Eng_list) crlf))
        (bind $?list (delete-member$ $?list ?subject_samAnAXikaraNa))
        (assert(list $?list ?subject_samAnAXikaraNa ?kriyA))
        (if (eq ?*debug* ON) then
        (printout t " After movement         :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?kriyA $?Eng_list) crlf crlf))
   )

 ;----------------------------------------------------------------------------------------------------- 
  ;Move the object to the before kriyA position in the sentence.
  (defrule object_rule
  (declare (salience 953))
  (or(kriyA-object ?kriyA ?obj_id)(kriyA-object_2 ?kriyA ?obj_id))
  ?f<-(list $?list ?kriyA)
  ?f1<-(list_control_fact ?obj_id)
  (test (member$ ?obj_id $?list))
  (English-list $?Eng_list)
   =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED object_rule     :: Moved the object("(nth$ ?obj_id $?Eng_list)") to before kriyA position in the sentence." crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?kriyA $?Eng_list) crlf))
        (bind ?pos (member$ ?kriyA $?list))
        (bind $?list (delete-member$ $?list ?obj_id))
        (assert(list $?list ?obj_id ?kriyA ))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?obj_id $?Eng_list) " " (nth$ ?kriyA $?Eng_list) crlf))
   )

  ;Move the object to the before kriyA position in the sentence.(non-finite-verb)
  ;Taking that course improved the student's skills .
  (defrule object_rule1
  (declare (salience 351))
  ?f1<-(kriyA-object  ?kriyA ?obj_id)
  ?f2<-(list $?list ?h_kriyA)
  (test (and (member$ ?obj_id $?list) (member$ ?kriyA $?list)))
  (English-list $?Eng_list)
  =>
        (retract ?f1 ?f2)
        (if (eq ?*debug* ON) then
        (printout t " FIRED object_rule1     :: Moved the object("(nth$ ?obj_id $?Eng_list)") to before kriyA("(nth$ ?kriyA $?Eng_list)") position in the sentence.(non-finite-verb)" crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " ) 
                   )
        (printout t  " " (nth$ ?h_kriyA $?Eng_list) crlf))

        (bind $?list (delete-member$ $?list ?obj_id))
        (bind ?pos (member$ ?kriyA $?list))
        (bind $?list (insert$ $?list ?pos ?obj_id))
        (assert(list $?list ?h_kriyA)) 
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  " " (nth$ ?h_kriyA $?Eng_list) crlf)) 
 )


 ;It is not a good idea to drive for hours without a rest .   
(defrule kriyA_niReXaka_rule
  (declare (salience 952))
  (kriyA-kriyA_niReXaka  ?kriyA ?kriyA_niReXaka)
  ?f<-(list $?list ?kriyA)
  ?f1<-(list_control_fact ?kriyA_niReXaka)
  (test (member$ ?kriyA_niReXaka $?list))
  (English-list $?Eng_list)
   =>
        (retract ?f ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED kriyA_niReXaka_rule     :: Moved the kriyA_niReXaka("(nth$ ?kriyA_niReXaka $?Eng_list)") to before kriyA("(nth$ ?kriyA $?Eng_list)") position in the sentence." crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  " " (nth$ ?kriyA $?Eng_list) crlf))

        (bind $?list (delete-member$ $?list ?kriyA_niReXaka))
        (assert(list $?list ?kriyA_niReXaka ?kriyA ))
     (if (eq ?*debug* ON) then
        (printout t " After movement        :: " )
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  " " (nth$ ?kriyA_niReXaka $?Eng_list) " "(nth$ ?kriyA $?Eng_list) crlf)) 

 )

  ;-----------------------------------------------------------------------------------------------------
  ;Eg :They were discussing their hopes and dreams . 
  (defrule RaRTI_viSeRaNa_rule_for_conj
  (declare (salience 350))
  (pada_info (group_head_id ?RaRTI_id) (group_cat PP) (group_ids $?grp_ids))
  ?f1<-(viSeRya-RaRTI_viSeRaNa ?RaRTI_id ?RaRTI_id1)
  (not (viSeRya-RaRTI_viSeRaNa  ?RaRTI_id2&:(> ?RaRTI_id2 ?RaRTI_id) ?))
  ?f0<-(list $?list)
  (id-word ?id and)
  (test (member$ ?id $?grp_ids))
  (test (member$ ?RaRTI_id $?list))
  (test (member$ ?RaRTI_id1 $?list))
  (English-list $?Eng_list)
  =>
  (retract ?f0 ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED RaRTI_viSeRaNa_rule_for_conj        " crlf)
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
        (bind $?list (delete-member$ $?list ?RaRTI_id1))
        (bind ?pos (member$ ?RaRTI_id $?list))
        (bind $?list (insert$ $?list ?pos ?RaRTI_id1))
        (assert (list $?list))
       (if (eq ?*debug* ON) then
        (printout t " After movement        :: ")
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
   (bind ?len (length$ $?grp_ids))
          (loop-for-count (?i 1 ?len)
                   (bind ?j (nth$ ?i $?grp_ids))
                    (assert (movement_done ?j))
           )
   )

  

  ;Moving  RaRTI_viSeRaNa before RaRTI_viSeRya 
  ;Passion is a must to excel and to reach your potential .
  (defrule RaRTI_viSeRaNa_rule
  (declare (salience 350))
  ?f1<-(viSeRya-RaRTI_viSeRaNa ?RaRTI_id ?RaRTI_id1)
  (not (viSeRya-RaRTI_viSeRaNa  ?RaRTI_id2&:(> ?RaRTI_id2 ?RaRTI_id) ?))
  ?f0<-(list $?list)
  (test (member$ ?RaRTI_id $?list))
  (test (member$ ?RaRTI_id1 $?list))
  (not (movement_done ?RaRTI_id))
  (not (movement_done ?RaRTI_id1))
  (English-list $?Eng_list)
  =>
        (retract ?f0 ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED RaRTI_viSeRaNa_rule        :: Moved RaRTI_viSeRaNa("(nth$ ?RaRTI_id1 $?Eng_list)") before RaRTI_viSeRya("(nth$ ?RaRTI_id $?Eng_list)") position in the sentence." crlf) 
        (printout t " Before movement       :: " )
                   (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
        (bind $?list (delete-member$ $?list ?RaRTI_id1))
        (bind ?pos (member$ ?RaRTI_id $?list))
        (bind $?list (insert$ $?list ?pos ?RaRTI_id1))
        (assert (list $?list))
        (if (eq ?*debug* ON) then
        (printout t " After movement        :: ")
        (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
   )
  
  ;-----------------------------------------------------------------------------------------------------
 
  ;Moving viSeRaNa before viSeRya 
  ;The blacksmith made an assay of iron ore . 
  ;;Moving (of/for/.....)_saMbanXI before its viSeRya
  (defrule viSeRya_viSeRaNa_rule
  (declare (salience 350))
  ?f1<-(using-parser-ids ?rel ?v_id ?v_id1)
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
  (test (neq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
  (English-list $?Eng_list)
   =>
       (retract ?f0 ?f1)
       (if (eq ?*debug* ON) then
       (bind ?str (sub-string (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel) 1) ?rel))
       (printout t " FIRED viSeRya_viSeRaNa_rule        :: Moved " ?str"_saMbanXI("(nth$ ?v_id1 $?Eng_list)") before viSeRya("(nth$ ?v_id $?Eng_list)") position in the sentence." crlf)
       (printout t " Before movement       :: ")
                   (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
       (bind $?id1 (delete-member$ $?id1 ?v_id1))
       (bind ?pos (member$ ?v_id $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
       (assert (list $?id1))
       (if (eq ?*debug* ON) then
       (printout t " After movement        :: " )
                   (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
  )


  ;The present version of Anusaaraka provides for translation from English to Hindi .(3rd parse)
  ;Suggested by Sukadha (23-09-09)
  ;Moving to_saMbanXI after its viSeRya
  (defrule viSeRya_viSeRaNa_to_rule
  (declare (salience 350))
  ?f1<-(using-parser-ids ?rel ?v_id ?v_id1)
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
  (test (eq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
  (English-list $?Eng_list)
   =>
       (retract ?f0 ?f1)
       (if (eq ?*debug* ON) then
       (printout t " FIRED viSeRya_viSeRaNa_to_rule        :: Moved to_saMbanXI("(nth$ ?v_id1 $?Eng_list)") before viSeRya("(nth$ ?v_id $?Eng_list)") position in the sentence." crlf)
       (printout t " Before movement        :: " )
                     (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))

       (bind $?id1 (delete-member$ $?id1 ?v_id))
       (bind ?pos (member$ ?v_id1 $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id))
       (assert (list $?id1))
        (if (eq ?*debug* ON) then
       (printout t " After movement        :: " )
                   (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
  )


   ;-----------------------------------------------------------------------------------------------------
  ;Moving kriyA_viSeRaNa_viSeRaka befor kriyA_viSeRaNa
  ;She works very carefully
  (defrule viSeRaNa_viSeRaka_rule
  (declare (salience 350))
  ?f1<-(kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka ?v_id ?v_id1)
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
  (English-list $?Eng_list)
   =>
       (retract ?f0 ?f1)
       (if (eq ?*debug* ON) then
       (printout t " FIRED viSeRaNa_viSeRaka_rule        :: Moved kriyA_viSeRaNa_viSeRaka("(nth$ ?v_id1 $?Eng_list)") before kriyA_viSeRaNa("(nth$ ?v_id $?Eng_list)") position in the sentence." crlf)
       (printout t " Before movement        :: " )
                     (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
       (bind $?id1 (delete-member$ $?id1 ?v_id1))
       (bind ?pos (member$ ?v_id $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
       (assert (list $?id1))
       (if (eq ?*debug* ON) then
       (printout t " After movement        :: " )
                   (loop-for-count (?i  1 (length$ $?id1))
                   (bind ?wrdid (nth$ ?i $?id1))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
         (printout t  crlf))
  )
 
  ;-----------------------------------------------------------------------------------------------------
  ; Be careful , she said .
  ; Move kriyA_mUla id before kriyA id
  (defrule kriyA_mUla_rule
  (declare (salience 350))
  ?f1<-(kriyA-kriyA_mUla  ?kriyA  ?kriyA_mUla)
  ?f0<-(list $?ids)
  (test (member$ ?kriyA $?ids))
  (test (member$  ?kriyA_mUla $?ids))
  (English-list $?Eng_list)
   =>
       (retract ?f0 ?f1)
       (if (eq ?*debug* ON) then
        (printout t " FIRED viSeRaNa_viSeRaka_rule        :: Moved kriyA_mUla("(nth$ ?kriyA_mUla $?Eng_list)") before kriyA("(nth$ ?kriyA $?Eng_list)") position in the sentence." crlf)
        (printout t " Before movement        :: " )
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  crlf))
        (bind $?ids (delete-member$ $?ids ?kriyA_mUla))
        (bind ?pos (member$ ?kriyA $?ids))
        (bind $?ids (insert$ $?ids ?pos ?kriyA_mUla))
        (assert (list $?ids))
        (if (eq ?*debug* ON) then
        (printout t " After movement        ::" )
        (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  crlf))
  )
 
  ;-----------------------------------------------------------------------------------------------------
  ;Move saMjFA_samAnAikaraNa before saMjFA
  ;Rama gave a book to Dasharat , the king of Ayodhya . 
  (defrule saMjFA-saMjFA_samAnAikaraNa_rule
  (declare (salience 380))
  ?f1<-(saMjFA-saMjFA_samAnAXikaraNa ?saMjFA_id ?saMjFA_samAnAikaraNa_id)
  ?f0<-(list $?ids)
  (test (member$ ?saMjFA_id $?ids))
  (test (member$ ?saMjFA_samAnAikaraNa_id $?ids))
  (English-list $?Eng_list)
  =>
        (retract ?f0 ?f1)
        (if (eq ?*debug* ON) then
        (printout t " FIRED saMjFA-saMjFA_samAnAikaraNa_rule        :: Moved saMjFA_samAnAikaraNa("(nth$ ?saMjFA_samAnAikaraNa_id $?Eng_list)") before saMjFA("(nth$ ?saMjFA_id $?Eng_list)") position in the sentence." crlf)
        (printout t " Before movement        ::" )
                      (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  crlf))
        (bind $?ids (delete-member$ $?ids ?saMjFA_samAnAikaraNa_id))
        (bind ?pos (member$ ?saMjFA_id $?ids))
        (bind $?ids (insert$ $?ids ?pos ?saMjFA_samAnAikaraNa_id))
        (assert (list $?ids))
        (if (eq ?*debug* ON) then
        (printout t " After movement        ::")
                  (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t  crlf))
  )

  ;----------------------------------------------------------------------------------------------------- 
  ;Concatenating ordered sentences
  (defrule final_order
  (declare (salience -100))
  ?f1<-(lwg_list ?id $?ids)
  ?f<-(list $?list)
  ?f0<-(ordered_group_ids $?ids1)
  =>
  (retract ?f ?f1 ?f0)
  (bind ?sen (explode$ (str-cat ?*count* S)))
  (assert (Sent ?sen $?list))
  (assert (Sentence ?sen))
  (bind ?*final_list* (create$ ?*final_list* $?list))
  (bind ?*count* (+ ?*count* 1))
  (assert (lwg_list $?ids))
  (bind ?*k_list* (create$ ))
  (assert (ordered_group_ids ?*final_list*)) 
  )
  ;----------------------------------------------------------------------------------------------------- 

   (defrule substitute_ids
   (declare (salience -99))
   ?f<-(Sent ?sen ?h_id $?ids)
   (not (pada_info (group_head_id ?h_id)))
   ?f0<-(Sentence ?sen $?ids1)  
  =>
        (retract ?f ?f0)
        (assert (Sent ?sen $?ids))
        (assert (Sentence ?sen $?ids1))
  )

   (defrule substitute_ids1
   (declare (salience -99))
   ?f<-(Sent ?sen ?h_id $?ids)
   (pada_info (group_head_id ?h_id)(group_cat ?gtype)(group_ids $?grp_ids)(Hin_position ?pos))
   (test (neq ?gtype English_PP))
   ?f0<-(Sentence ?sen $?ids1)
    =>
        (retract ?f ?f0)
        (assert (Sent ?sen $?ids))
        (assert (Sentence ?sen $?ids1 $?grp_ids))

   )
 ;----------------------------------------------------------------------------------------------------- 

  (defrule sen_substitution
  (declare (salience -101))
  (Sentence ?sen $?ids)
  (English-list $?Eng_list)
   =>
   (if (eq ?*debug* ON) then
   (printout t " FIRED sen_substitution     :: Sentence after substituting head ids with pada ids "crlf                                     "                            :: ")
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf )
   )
  )
 ;----------------------------------------------------------------------------------------------------- 
  
  (defrule final_order1
  (declare (salience -98))
  ?f<-(Sent ?sen)
  ?f0<-(Sentence ?sen $?ids1)
  ?f1<-(hindi_id_order $?ids)
  =>
  (retract ?f ?f1)
  (assert (hindi_id_order $?ids $?ids1))
  )
 
 ;----------------------------------------------------------------------------------------------------

(defrule display_final_order
  (declare (salience -110))
  ?f1<-(hindi_id_order $?ids)
  (not (display_final_order))
  (English-list $?Eng_list)
   =>
  (assert (display_final_order))
  (if (eq ?*debug* ON) then
  (printout t " FIRED display_final_order  :: Sentence Before movement/substitution of conjunctions across/with-in sentences"crlf
              "                            :: ")
               (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ) )
  ) 

 ;----------------------------------------------------------------------------------------------------
 ; Removed jo_samAnAXikaraNa from muKya_vAkya and Added jo_samAnAXikaraNa to the begining of the sApekRa_upavAkya.
  ;The girl who you called yesterday has arrived.
  (defrule viSeRya-jo_samAnAXikaraNa_rule
  (declare (salience -200))
  ?f0<-(viSeRya-jo_samAnAXikaraNa  ?sub ?jo_samAnAXikaraNa)
  (muKya_vAkya-sApekRa_upavAkya  ?muKya_vAkya ?sApekRa_upavAkya)
  ?f1<-(Sentence ?Sen1 $?sen1 ?muKya_vAkya)
  ?f2<-(Sentence ?Sen2 $?sen2 ?sApekRa_upavAkya)
  ?f3<-(hindi_id_order $?pre $?hin_order $?pos)
  (test (and (member$ ?muKya_vAkya $?hin_order) (member$ ?sApekRa_upavAkya $?hin_order) ))
  (test (member$ ?jo_samAnAXikaraNa $?sen2))
  (test (member$ ?jo_samAnAXikaraNa $?sen1))
  (English-list $?Eng_list)
   =>
  (retract ?f0 ?f3)
  (if (eq ?*debug* ON) then
  (printout t " FIRED subject-jo_samAnAXikaraNa_rule  :: Removed jo_samAnAXikaraNa("(nth$ ?jo_samAnAXikaraNa $?Eng_list)") from muKya_vAkya and Moved jo_samAnAXikaraNa("(nth$ ?jo_samAnAXikaraNa $?Eng_list)") in sApekRa_upavAkya to the begining of the sApekRa_upavAkya "crlf)
  (bind $?b_list (create$ $?pre $?hin_order  $?pos))
  (printout t " Before Movement       :: ")
  (loop-for-count (?i  1 (length$ $?b_list))
                   (bind ?wrdid (nth$ ?i $?b_list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))
  (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order) )
  (bind $?hin_order (delete-member$ $?hin_order ?jo_samAnAXikaraNa))
  (bind $?sen2 (delete-member$ $?sen2 ?jo_samAnAXikaraNa))

  (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order))
  (if (neq ?position FALSE) then
  (printout t ?position crlf)
  (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa )))
  (assert (hindi_id_order $?pre $?hin_order $?pos))
  (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
  (bind ?a_list (create$  $?pre $?hin_order $?pos))
  (loop-for-count (?i  1 (length$ $?a_list))
                   (bind ?wrdid (nth$ ?i $?a_list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
        (printout t crlf ))  
 )
  

 ;---------------------------------------------------------

  ;He ate fruits, drank milk and slept.
  (defrule conjuction_for_common_subs_diff_kriyAs
  (declare (salience -200))
  ?f<-(id-word ?id and|or)
  (kriyA-subject ?id1 ?sub_id)
  (kriyA-subject ?id2 ?sub_id)
  (Sentence ?sen1 $?list)
  (Sentence ?sen2 $?list1)
  ?f1<-(hindi_id_order $?pre $?list $?list1 $?pos)
  (test (and (> ?id ?id1) (< ?id ?id2)))
  (expr $? ?id3 ?id ?id4 $?)
  (test (and(member$ ?id3 $?list)(member$ ?id4 $?list1)))
  (test (not (member$ ?id $?list)))
  (English-list $?Eng_list)
  =>
  (retract ?f ?f1)
  (if (eq ?*debug* ON) then
  (printout t " FIRED conjuction_for_common_subs_diff_kriyAs  :: Inserting conjunction("(nth$ ?id $?Eng_list)") for common subject("(nth$ ?sub_id $?Eng_list)") for different kriyA's("(nth$ ?id1 $?Eng_list)" "(nth$ ?id2 $?Eng_list)")" crlf)
  (bind $?b_list (create$ $?pre $?list $?list1 $?pos))
  (printout t " Before Movement       :: ")
                (loop-for-count (?i  1 (length$ $?b_list))
                   (bind ?wrdid (nth$ ?i $?b_list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
  (assert (hindi_id_order $?pre $?list ?id $?list1 $?pos))
  (if (eq ?*debug* ON) then
  (bind $?a_list (create$ $?pre $?list $?list1 $?pos))
  (printout t " After Movement        :: ")
  (loop-for-count (?i  1 (length$ $?a_list))
                   (bind ?wrdid (nth$ ?i $?a_list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf )) 
 )

 ;Rama ate an apple, bananas and papaya.
 (defrule conjuction_and_for_common_kriyA_diff_objs
 (declare (salience -200))
 ?f<-(id-word ?id and|or)
(or (and (kriyA-object  ?kriyA ?obj1) (kriyA-object  ?kriyA ?obj2))(and (kriyA-object_2  ?kriyA ?obj1) (kriyA-object_2  ?kriyA ?obj2)))
 ?f1<-(hindi_id_order $?list)
 (expr $? ?obj1 ?id $?)
 (test (< ?obj1 ?obj2))
 (test (not (member$ ?id $?list)))
 (test (and(member$ ?obj1 $?list)(member$ ?obj2 $?list)))
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?pos (member$ ?obj1 $?list))
 (bind ?pos1 (member$ ?obj2 $?list))
 (if (eq ?*debug* ON) then
 (printout t " FIRED conjuction_and_for_common_kriyA_diff_objs  :: Inserting conjunction("(nth$ ?id $?Eng_list)") for common kriyA("(nth$ ?kriyA $?Eng_list)")  having different objects("(nth$ ?obj1 $?Eng_list)" "(nth$ ?obj2 $?Eng_list)")"crlf)
 (printout t " Before Movement       :: ")
           (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))

 (if (< ?pos ?pos1) then
 (bind $?list (insert$ $?list (+ ?pos 1) ?id))
 else
 (bind $?list (insert$ $?list (+ ?pos1 1) ?id)))
 (assert (hindi_id_order $?list))
 (if (eq ?*debug* ON) then
 (printout t " After Movement        :: ")
           (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))

 )

 ;Rama and Mohan went to the school.
 ;There are three boys and four girls in the park.
 (defrule conjuction_and_for_common_kriyA_diff_subjs
 (declare (salience -200))
 ?f<-(id-word ?id and|or)
(or (and (kriyA-GNP_agr_subject ?kriyA ?sub1)(kriyA-GNP_agr_subject ?kriyA ?sub2))(and (kriyA-subject  ?kriyA ?sub1) (kriyA-subject  ?kriyA ?sub2)))
 ?f1<-(hindi_id_order $?list)
 (expr $? ?sub1 ?id $?)
 (test (< ?sub1 ?sub2))
 (test (and (member$ ?kriyA $?list) (member$ ?sub1 $?list)(member$ ?sub2 $?list)))
 (test (not (member$ ?id $?list)))
 (test (and(member$ ?sub1 $?list)(member$ ?sub2 $?list)))
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?pos (member$ ?sub1 $?list))
 (bind ?pos1 (member$ ?sub2 $?list))
 (if (eq ?*debug* ON) then
 (printout t " FIRED conjuction_and_for_common_kriyA_diff_subjs :: Inserting conjunction("(nth$ ?id $?Eng_list)") for common kriyA("(nth$ ?kriyA $?Eng_list)") having different subjects("(nth$ ?sub1 $?Eng_list) " "(nth$ ?sub2 $?Eng_list)")" crlf)
 (printout t " Before Movement       :: ")
               (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 (if (< ?pos ?pos1) then
 (bind $?list (insert$ $?list (+ ?pos 1) ?id))
 else
 (bind $?list (insert$ $?list (+ ?pos1 1) ?id)))
 (assert (hindi_id_order $?list))
 (if (eq ?*debug* ON) then
 (printout t " After Movement        :: ")
           (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 )


 ;We have tickets for the symphony and the opera.
 (defrule conjuction_for_common_kriyA_diff_prepositions
 (declare (salience -200))
 ?f<-(id-word ?id and|or)
 (using-parser-ids ?rel ?kriyA ?pre_saMbanXI1)
 (using-parser-ids ?rel ?kriyA ?pre_saMbanXI2)
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kriyA"))
 (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
 (id-word ?id_prep ?str&:(sub-string (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel) 1) ?rel))
 (test (or (eq ?str for)(eq ?str from)))
 ?f1<-(hindi_id_order $?list)
 (expr $? ?pre_saMbanXI1 ?id $?)
 ?f2<-(pada_info (group_head_id ?pre_saMbanXI1)(group_cat ?gtype)(group_ids $?grp_ids1))
 ?f3<-(pada_info (group_head_id ?pre_saMbanXI2)(group_cat ?gtype)(group_ids $?grp_ids2))
 (test (not (member$ ?id_prep $?list)))
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (if (eq ?*debug* ON) then
 (printout t " FIRED conjuction_for_common_kriyA_diff_prepositions :: Inserting conjunction("(nth$ ?id $?Eng_list)") for common kriyA("(nth$ ?kriyA $?Eng_list)") and prepositions("?str")  having different prepositional objects("(nth$ ?pre_saMbanXI1 $?Eng_list)" "(nth$ ?pre_saMbanXI1 $?Eng_list)")" crlf)
 (printout t " Before Movement       :: ")
           (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 (bind ?first1 (nth$ (length$ $?grp_ids1) $?grp_ids1))
 (bind ?first2 (nth$ (length$ $?grp_ids2) $?grp_ids2))
 (bind ?pos (member$  ?first1 $?list))
 (bind ?pos1 (member$ ?first2 $?list))
 (if (< ?pos ?pos1) then
 (bind $?list (insert$ $?list (+ ?pos 1) ?id))
 else
 (bind $?list (insert$ $?list (+ ?pos1 1) ?id)))
 (assert (hindi_id_order $?list))
 (if (eq ?*debug* ON) then
 (printout t " After Movement        :: ")
           (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 )
 ;But my efforts to win his heart have failed
 (defrule wall_conjuction
 (declare (salience -200))
 ?f<-(wall_conjunction  1)
 (expr 1 $?)
 ?f1<-(hindi_id_order $?list)
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (if (eq ?*debug* ON) then
 (printout t " FIRED wall_conjuction :: Inserting wall conjunction at the start of the sentence." crlf)
 (printout t " Before Movement       :: ")
               (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 (assert (hindi_id_order 1 $?list))
 (if (eq ?*debug* ON) then
 (printout t " After Movement        :: ")
           (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 )

  ;If you use that strategy , he will wipe you out .o/p:Apa #yaxi usa raNanIwi #kA upayoga karawe hEM vaha Apako mitA xegA
  ;Can you tell us where those strange ideas came from .o/p:kyA Apa hameM/hamako bawA sakawe hEM #vaha viciwra suJAva #kahAz se Aye/Ae
 (defrule subject-conjunction_rule
 (declare (salience -210))
 ?f<-(subject-conjunction  ?sub ?sub_conj)
 ?f1<-(hindi_id_order $?list)
 ?f2<-(pada_info (group_head_id ?sub)(group_cat ?gtype)(group_ids $?grp_ids))
 (test (and (member$ ?sub_conj $?list)(member$ ?sub $?grp_ids)(member$ ?sub $?list)))
 (test (neq ?gtype English_PP))
 (not (wall_conjunction  ?sub_conj))
 (English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (if (eq ?*debug* ON) then
 (printout t " FIRED subject-conjunction_rule :: Moving subject-conjuction("?sub_conj") after the subject " crlf)
 (printout t " Before Movement       :: ")
               (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
  (bind $?list (delete-member$ $?list ?sub_conj))
 ;(bind ?pos (member$ (nth$ (length$ $?grp_ids) $?grp_ids) $?list))
 (bind ?pos (member$ ?sub $?list))
 (bind $?list (insert$ $?list ?pos ?sub_conj))
 (assert (hindi_id_order $?list))
 (if (eq ?*debug* ON) then
 (printout t " After Movement        :: ")
             (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
 )

  ;The orchestra rehearses on Tuesday, but the chorus rehearses on Wednesday.
  (defrule but-conjunction_rule
  (declare (salience -200))
  ?f<-(id-word ?id but|because|and|or|so|that)
  (Sentence ?sen1 $?list)
  (Sentence ?sen2 $?list1)
  ?f1<-(hindi_id_order $?pre $?list $?list1 $?pos)
  (expr $? ?id3 ?id ?id4 $?)
  (test (and(member$ ?id3 $?list)(member$ ?id4 $?list1)))
  (test (not (member$ ?id $?list)))
  (English-list $?Eng_list)
  =>
  (retract ?f ?f1)
  (if (eq ?*debug* ON) then
  (printout t " FIRED but-conjunction_rule :: " crlf)
  (printout t " Before Movement       :: ")
            (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
  (bind $?list (create$ $?pre $?list ?id  $?list1 $?pos))
  (assert (hindi_id_order $?list))
  (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
               (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
  )

  ;default conjunction rule
  (defrule default_conjunction_rule
  (declare (salience -400))
  ?f<-(id-word ?id and|or|but|because)
  (id-cat_coarse ?id conjunction)
  ?f1<-(hindi_id_order  $?list)
  (expr $?pre $?grp_ids1 ?id $? $?grp_ids2 $?pos)
  (pada_info (group_head_id ?h_id1)(group_cat ?gtype)(group_ids $?grp_ids1))
  (pada_info (group_head_id ?h_id2)(group_cat ?gtype)(group_ids $?grp_ids2))
  (test (not (member$ ?id $?list)))
  (test (and (member$ ?h_id1 $?list)(member$ ?h_id2 $?list)))
  (test (neq ?gtype English_PP))
  (English-list $?Eng_list)
  =>
  (retract ?f ?f1)
;  (bind ?pos (member$ ?id1 $?list))
  (if (eq ?*debug* ON) then
  (printout t " FIRED Default_conjunction_rule :: Inserted conjunction("(nth$ ?id $?Eng_list)") if any of the conjunction is left out between two pada  " crlf)
  (printout t " Before Movement       :: ")
              (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
  (bind ?pos (member$ (nth$ (length$ $?grp_ids1) $?grp_ids1) $?list))
  (bind ?pos1 (member$ (nth$ (length$ $?grp_ids2) $?grp_ids2) $?list))
  (if (and (neq ?pos FALSE)(neq ?pos1 FALSE))  then
  (if (< ?pos ?pos1) then
  (bind $?list (insert$ $?list (+ ?pos 1) ?id))
  else
  (bind $?list (insert$ $?list (+ ?pos1 1) ?id))))
  (assert (hindi_id_order $?list))
  (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
                (loop-for-count (?i  1 (length$ $?list))
                   (bind ?wrdid (nth$ ?i $?list))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
  )

  ;----------------------------------------------------------------------------------------------------------------------- 
  ;substituting position for each pada.

  (defrule substitute_positions
  (declare (salience -250))
  ?f<-(ordered_group_ids $?ids)
  ?f1<-(pada_info (group_head_id ?h_id)(group_cat ?gtype)(group_ids $?grp_ids)(Hin_position 0))
  (test (neq ?gtype English_PP))
   =>
   (bind ?pos (member$ ?h_id $?ids))
   (modify ?f1 (Hin_position ?pos))
   )
  ;-----------------------------------------------------------------------------------------------------------------------
  
  ;Removing common subject in all verbs expect the first.
  ;I ate an apple and slept in my room

  (defrule remove_repeated_sub_ids
  (declare (salience -350))
  ?f0<-(hindi_id_order $?ids)
  ?f1<-(using-parser-ids kriyA-subject ?kriya ?sub_id)
  ?f2<-(using-parser-ids kriyA-subject ?kriya1 ?sub_id)
  (test (neq ?kriya ?kriya1))
  (test (member$ ?sub_id $?ids))
  (English-list $?Eng_list)
  =>
        (retract ?f0 ?f1 ?f2)
        (if (eq ?*debug* ON) then
        (printout t " FIRED remove_repeated_sub_ids :: Removes the suject("(nth$ ?sub_id $?Eng_list)") If a subject is common for different kriyA's expect the first ocurrence " crlf)
        (printout t " Before Movement       :: ")
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
        (bind ?pos (member$ ?sub_id $?ids))
        (bind $?ids (delete-member$ $?ids ?sub_id))
        (bind $?ids (insert$ $?ids ?pos ?sub_id))
        (assert (hindi_id_order $?ids))
        (if (eq ?*debug* ON) then
        (printout t " After Movement        :: ")
         (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
          (printout t crlf ))
 )
  ;-----------------------------------------------------------------------------------------------------------------------
  ; if no complete linkage is found then take english order itself as hindi order

  (defrule id_order_for_NCL_with_no_relations
  (declare (salience -500))
  (No complete linkages found)
  (expr $?ids)
  ?f<-(hindi_id_order)
   =>
       (retract ?f)
       (assert (hindi_id_order  $?ids ))
  )

 ;--------------------------------------------------------------------------------------------------------------------------

  (defrule default_rule
  (declare (salience -600))
  ?f4<-(id-word ?id ~to)
  ?f3<-(pada_info (group_head_id ?id)(group_cat ?gtype)(group_ids $?grp_ids))
  ?f0<-(pada_info (group_head_id ?h_id1)(group_cat ?gtype1)(group_ids $?grp_ids1)(preposition ?prep_id1)(Hin_position ?h_pos1))
  ?f1<-(pada_info (group_head_id ?h_id2)(group_cat ?gtype2)(group_ids $?grp_ids2)(preposition ?prep_id2)(Hin_position ?h_pos2))
  ?f2<-(hindi_id_order $?ids)
  (test (not (member$ ?id $?ids)))
  (test (neq ?id ?prep_id1))
  (test (neq ?id ?prep_id2))
  (test (and (member$ ?h_id1 $?ids)(member$ ?h_id2 $?ids)))
  (test (and (neq ?gtype English_PP)(neq ?gtype1 English_PP)(neq ?gtype2 English_PP)))
  (English-list $?Eng_list)
   =>
  (retract ?f2 ?f4)
  (if (eq ?*debug* ON) then
        (printout t " FIRED default_rule :: " crlf)
        (printout t " Before Movement       :: ")
                   (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf )) 
  (if (eq ?id 1) then
  (bind $?ids (create$ ?id  $?ids))
  else
  (bind ?pos (member$ (nth$ 1 $?grp_ids1) $?ids))
  (bind $?ids (insert$ $?ids ?pos $?grp_ids)))
  (assert (hindi_id_order $?ids))
  (if (eq ?*debug* ON) then
  (printout t " After Movement        :: ")
            (loop-for-count (?i  1 (length$ $?ids))
             (bind ?wrdid (nth$ ?i $?ids))
             (bind ?word (nth$ ?wrdid $?Eng_list))
             (printout t ?word " " )
            )
  (printout t crlf )) 
 )


  (defrule Final_Order
  (declare (salience -650))
  (hindi_id_order $?ids)
  (English-list $?Eng_list)
   =>
  (if (eq ?*debug* ON) then
  (printout t " FINAL ORDER IS        :: ")
            (loop-for-count (?i  1 (length$ $?ids))
                   (bind ?wrdid (nth$ ?i $?ids))
                   (bind ?word (nth$ ?wrdid $?Eng_list))
                   (printout t ?word " " )
                   )
  (printout t crlf ))
  )

