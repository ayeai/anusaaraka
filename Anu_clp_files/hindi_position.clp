
 (defglobal ?*l_list* = (create$ ))
 (defglobal ?*r_list* = (create$ ))
 (defglobal ?*k_list* = (create$ ))
 (defglobal ?*k_list1* = (create$ ))
 (defglobal ?*final_list* = (create$ ))
 (defglobal ?*count* = 1)
 (defglobal ?*finite_verb_count* = 0) 
 (defglobal ?*k_list_debug* = (create$ ))

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (deffunction reverse ($?a)
 (if (eq (length ?a) 0) then ?a
 else
 (create$ (reverse (rest$ ?a)) (first$ ?a))))

 (deffacts dummy_facts 
 (id-HM-source)
 (kriyA-samakAlika_kriyA) 
 (niReXawmaka_vAkya) 
 (id-left_punctuation)
 (id-right_punctuation)
 (id-wsd_number) 
 (viSeRya-in_front_of_saMbanXI) 
 (viSeRya-in_front_saMbanXI) 
 (viSeRya-all_over_saMbanXI) 
 (kriyA-amidst_saMbanXI) 
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (id-last_word) 
 (saMjFA-saMjFA_samAnAXikaraNa) 
 (kqxanwa-of_saMbanXI) 
 (kriyA-because_saMbanXI) 
 (kriyA-due_saMbanXI) 
 (subject-object_samAnAXikaraNa)
 (saMKyA-saMKyA) 
 (viSeRaNa-viSeRaka) 
 (viSeRya-but_saMbanXI) 
 (viSeRya-to_saMbanXI)
 (object-kqxanwa_kriyA) 
 (viSeRya-jo_samAnAXikaraNa)
 (kqxanwa-kqxanwa) 
 (kriyA-ago_saMbanXI) 
 (verb_type-verb-causative_verb-tam)
 (viSeRya-viSeRaka) 
 (kriyA-where_saMbanXI) 
 (kriyA-kqxanwa_vAkyakarma) 
 (kriyA-jo_type_object) 
 (nirXArya-nirXAraNa) 
 (nirXArya-nirXAraNa) 
 (muKya_vAkya-sApekRa_upavAkya) 
 (kriyA-sentence_opener) 
 (to-infinitive) 
 (kriyA_viSeRaNa-ke_liye) 
 (kriyA-across_saMbanXI) 
 (kriyA-whatever_saMbanXI)
 (kriyA_viSeRaNa-viSeRaka) 
 (pUrvakAlika_kriyA-ananwarakAlika_kriyA) 
 (saMjFA-about_saMbanXI) 
 (saMjFA-to_saMbanXI) 
 (saMKyA_idiom) 
 (viSeRya-kiwanA_viSeRaNa) 
 (hara-samayvAcaka_Sabxa) 
 (wulya_upameya-upamAna) 
 (kriyA-across_saMbanXI) 
 (less_upameya-than_upamAna) 
 (saMjFA-upon_saMbanXI) 
 (kriyA-but_saMbanXI) 
 (kriyA-throughout_saMbanXI) 
 (kqxanwa_kriyA-to_saMbanXI) 
 (passive_kriyA-object)
 (kriyA-since_saMbanXI) 
 (samayvAcaka_Sabxa-ke_bAxa) 
 (dummy_viSeRya-jo_samAnAXikaraNa)
 (dummy_subject-subject_samAnAXikaraNa)
 (pUrvakAlika_kriyA-ananwarakAlika_kriyA) 
 (kriyA-kAlavAcI) 
 (kqxanwa_kriyA-of_saMbanXI)
 (kqxanwa_kriyA-against_saMbanXI)
 (kqxanwa_kriyA-on_saMbanXI)
 (kqxanwa_kriyA-for_saMbanXI)
 (kqxanwa_kriyA-from_saMbanXI)
 (kqxanwa_kriyA-by_saMbanXI)
 (kqxanwa_kriyA-as_saMbanXI)
 (kqxanwa_kriyA-about_saMbanXI)
 (kqxanwa_kriyA-aboard_saMbanXI)
 (kqxanwa_kriyA-above_saMbanXI)
 (kqxanwa_kriyA-after_saMbanXI)
 (kqxanwa_kriyA-along_saMbanXI)
 (kqxanwa_kriyA-amid_saMbanXI)
 (kqxanwa_kriyA-among_saMbanXI)
 (kqxanwa_kriyA-anti_saMbanXI)
 (kqxanwa_kriyA-around_saMbanXI)
 (kqxanwa_kriyA-at_saMbanXI)
 (kqxanwa_kriyA-before_saMbanXI)
 (kqxanwa_kriyA-behind_saMbanXI)
 (kqxanwa_kriyA-below_saMbanXI)
 (kqxanwa_kriyA-beneath_saMbanXI)
 (kqxanwa_kriyA-beside_saMbanXI)
 (kqxanwa_kriyA-besides_saMbanXI)
 (kqxanwa_kriyA-between_saMbanXI)
 (kqxanwa_kriyA-beyond_saMbanXI)
 (kqxanwa_kriyA-despite_saMbanXI)
 (kqxanwa_kriyA-down_saMbanXI)
 (kqxanwa_kriyA-during_saMbanXI)
 (kqxanwa_kriyA-inside_saMbanXI)
 (kqxanwa_kriyA-into_saMbanXI)
 (kqxanwa_kriyA-in_saMbanXI)
 (kqxanwa_kriyA-like_saMbanXI)
 (kqxanwa_kriyA-off_saMbanXI)
 (kqxanwa_kriyA-off_saMbanXI)
 (kqxanwa_kriyA-onto_saMbanXI)
 (kqxanwa_kriyA-opposite_saMbanXI)
 (kqxanwa_kriyA-outside_saMbanXI)
 (kqxanwa_kriyA-over_saMbanXI)
 (kqxanwa_kriyA-toward_saMbanXI)
 (kqxanwa_kriyA-towards_saMbanXI)
 (kqxanwa_kriyA-under_saMbanXI)
 (kqxanwa_kriyA-underneath_saMbanXI)
 (kqxanwa_kriyA-unlike_saMbanXI)
 (kqxanwa_kriyA-under_saMbanXI)
 (kqxanwa_kriyA-up_saMbanXI)
 (kqxanwa_kriyA-upon_saMbanXI)
 (kqxanwa_kriyA-versus_saMbanXI)
 (kqxanwa_kriyA-via_saMbanXI)
 (kqxanwa_kriyA-with_saMbanXI)
 (kqxanwa_kriyA-within_saMbanXI)
 (kqxanwa_kriyA-without_saMbanXI)
 (kiwanA)
 (viSeRaNa-hogA)
 (uwanA)
 (kriyA-ne_ke_liye)
 (nAma-saMkRipwa_nAma)
 (id-word-node_cat)
 (chunk_ids)
 (using-chunk-ids)
 (Sentence)
 (list)
 (using-parser-ids )
 (root-verbchunk-tam-chunkids)
 (lwg_list)
 (hindi_id_order )
 (ordered_group_ids)
 (kriyA-past_saMbanXI) 
 (kriyA-kI_waraha) 
 (kriyA-kqxanwa_viSeRaNa) 
 (viSeRANa-jyAxA) 
 (kriyA_viSeRaNa-ki)
 (yahAz_waka_ki-karwA)
 (id-tam_type)
 (id-H_vib_mng)
 (make_verbal_noun)
 (root_id-TAM-vachan)
 (id-E_tam-H_tam_mng)
 (linkid-word)
 (meaning_has_been_decided)
 (id-wsd_root_mng)
 (id-wsd_word_mng)
 (samayvAcaka_Sabxa-pahale) 
 (kriyA-before_saMbanXI) 
 (kriyA-viSeRaNa) 
 (kriyA-kriyA_niReXaka) 
 (viSeRya-on_viSeRaNa) 
 (viSeRya-saMKyA_viSeRaNa) 
 (saMjFA-from_viBakwi) 
 (saMjFA-preposition) 
 (kriyA-until_saMbanXI) 
 (kriyA-within_saMbanXI) 
 (kriyA-from_viBakwi) 
 (kriyA-after_saMbanXI) 
 (kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka) 
 (kriyA-around_saMbanXI) 
 (kriyA-karwA) 
 (proper_noun-preposition) 
 (viSeRya-from_viSeRaNa) 
 (kriyA-near_saMbanXI) 
 (honA_kriyA-kI_apekRA) 
 (kriyA-aBiprewa_kriyA) 
 (kriyA-without_saMbanXI) 
 (proper_noun-det_viSeRaNa) 
 (wall_conjunction) 
 (honA_kriyA-passive_kriyA) 
 (kriyA-before_sambanXa) 
 (id-preceeding_part_of_verb) 
 (kriyA-in_sambanXa) 
 (kriyA-of_saMbanXI) 
 (kriyA-about_saMbanXI) 
 (viXi_vAkya) 
 (kriyA-viXi_vAkyakarma) 
 (more_upameya-than_upamAna)
 (kriyA-through_saMbanXI) 
 (id-wsd_root) 
 (kriyA-into_saMbanXI) 
 (AjFArWaka_kriyA)
 (No complete linkages found)
 (id-cat)
 (id-cat_coarse)
 (link_name-link_expansion)
 (link_name-lnode-rnode)
 (H_Mother-id_Daughters)
 (to_be_included_in_paxa)
 (id-word)
 (root-verbchunk-tam-chunkids)
 (Node-Category)
 (proper_noun-waxviSiRta_proper_noun)
 (viSeRya-to_viSeRaNa)
 (kiwane)
 (samAsa)
 (subject_question_wh_type)
 (kriyA-to_saMbanXI)
 (kriyA-against_saMbanXI)
 (kriyA-on_saMbanXI)
 (kriyA-for_saMbanXI)
 (kriyA-from_saMbanXI)
 (kriyA-of_saMbanXI)
 (kriyA-by_saMbanXI)
 (kriyA-as_saMbanXI) ;This list  of prepositions is added from http://www.englishclub.com/vocabulary/prepositions.htm
 (kriyA-about_saMbanXI)
 (kriyA-aboard_saMbanXI)
 (kriyA-above_saMbanXI)
 (kriyA-after_saMbanXI)
 (kriyA-along_saMbanXI)
 (kriyA-amid_saMbanXI)
 (kriyA-among_saMbanXI)
 (kriyA-anti_saMbanXI)
 (kriyA-around_saMbanXI)
 (kriyA-at_saMbanXI)
 (kriyA-before_saMbanXI)
 (kriyA-behind_saMbanXI)
 (kriyA-below_saMbanXI)
 (kriyA-beneath_saMbanXI)
 (kriyA-beside_saMbanXI)
 (kriyA-besides_saMbanXI)
 (kriyA-between_saMbanXI)
 (kriyA-beyond_saMbanXI)
 (kriyA-despite_saMbanXI)
 (kriyA-down_saMbanXI)
 (kriyA-during_saMbanXI)
 (kriyA-inside_saMbanXI)
 (kriyA-into_saMbanXI)
 (kriyA-in_saMbanXI)
 (kriyA-like_saMbanXI)
 (kriyA-off_saMbanXI)
 (kriyA-onto_saMbanXI)
 (kriyA-opposite_saMbanXI)
 (kriyA-outside_saMbanXI)
 (kriyA-over_saMbanXI)
 (kriyA-toward_saMbanXI)
 (kriyA-towards_saMbanXI)
 (kriyA-under_saMbanXI)
 (kriyA-underneath_saMbanXI)
 (kriyA-unlike_saMbanXI)
 (kriyA-under_saMbanXI)
 (kriyA-up_saMbanXI)
 (kriyA-upon_saMbanXI)
 (kriyA-versus_saMbanXI)
 (kriyA-via_saMbanXI)
 (kriyA-with_saMbanXI)
 (kriyA-within_saMbanXI)
 (kriyA-without_saMbanXI)
 (viSeRya-RaRTI_viSeRaNa)
 (kriyA-ke_liye)
 (kriyA-subject)
 (kriyA-aXikaraNa)
 (kriyA-kriyA_viSeRaNa)
 (kriyA-object)
 (kriyA-object_1)
 (kriyA-object_2)
 (kriyA-dummy_subject)
 (kriyA-raised_subject)
 (kriyA-jo_subject)
 (kriyA-kriyArWa_kriyA)
 (kriyA-jEsA)
 (kriyA-upasarga)
 (kriyA-object_samAnAXikaraNa)
 (kriyA-kqxanwa)
 (kriyA-vAkyakarma)
 (subject-vAkya_samAnAXikarNa)
 (kriyA-jEsA_ki)
 (kriyA-wh_object)
 (kriyA-preraka_kriyA)
 (kriyA-measurement)
 (kriyA-praSnavAcI)
 (kriyA-subject_samAnAXikaraNa)
 (viSeRya-viSeRaNa)
 (subject-subject_samAnAXikaraNa)
 (saMjFA-se)
 (object-sarvanAma)
 (subject-sarvanAma)
 (iwanA-viSeRaNa)
 (viSeRya-det_viSeRaNa)
 (sarvanAma-Ora)
 (kiwanA-Ora)
 (kevala-subject)
 (jinameM-se)
 (Ora-object)
 (saMjFA-eka)
 (uwanA-wulnAwmaka_viSeRaNa)
 (to-wh_pronoun)
 (sarvanAma-preposition)
 (jyAxA-xera_waka)
 (saMjFA-RaRTI_saMbanXI)
 (object-object_samAnAXikaraNa)
 (kiwanA-viSeRaNa)
 (hara-saMjFA)
 (jyAxA-kriyA_viSeRaNa)
 (EsA-lagawA_hE)
 (saMjFA/sarvanAma-para)
 (viSeRaNa-kama)
 (jiwanA-wulnAwmaka_viSeRaNa)
 (lagaBaga-parimANavAcI)
 (viSeRANa-ke_rUpa meM)
 (jyAxA-wulanAwmaka_viSeRaNa)
 (viSeRaNa-viSeRaNa_viSeRaka)
 (Ora-jyAxA)
 (jyAxA-preposition)
 (subject-opener)
 (subject-conjunction)
 (proper_noun-det viSeRaNa)
 (parimANavAcI-viSeRaNa)
 (samayavAcI-jaba)
 (kriyA-ki)
 (saMKyA-se-saMKyA-waka)
 (kriyA-jo_type_subject)
 (kriyA-dummy_object)
 (object-viSeRaNa)
 (kriyA-samayavAcI_object)
 (sAmAnya_vAkya)
 (AjFArWaka_vAkya)
 (indirect_praSnAwmaka vAkya)
 (niReXAwmaka_vAkya)
 (wulnAwmaka_viSeRaNa-hogA)
 (kriyA-by_subject)
 (viSeRya-wulanAwmaka_viSeRaNa)
 (kriyA-away_viBakwi)
 (viSeRya-of_saMbanXI)
 (viSeRya-against_saMbanXI)
 (viSeRya-on_saMbanXI)
 (viSeRya-for_saMbanXI)
 (viSeRya-from_saMbanXI)
 (viSeRya-by_saMbanXI)
 (viSeRya-as_saMbanXI)
 (viSeRya-about_saMbanXI)
 (viSeRya-aboard_saMbanXI)
 (viSeRya-above_saMbanXI)
 (viSeRya-after_saMbanXI)
 (viSeRya-along_saMbanXI)
 (viSeRya-amid_saMbanXI)
 (viSeRya-among_saMbanXI)
 (viSeRya-anti_saMbanXI)
 (viSeRya-around_saMbanXI)
 (viSeRya-at_saMbanXI)
 (viSeRya-before_saMbanXI)
 (viSeRya-behind_saMbanXI)
 (viSeRya-below_saMbanXI)
 (viSeRya-beneath_saMbanXI)
 (viSeRya-beside_saMbanXI)
 (viSeRya-besides_saMbanXI)
 (viSeRya-between_saMbanXI)
 (viSeRya-beyond_saMbanXI)
 (viSeRya-despite_saMbanXI)
 (viSeRya-down_saMbanXI)
 (viSeRya-during_saMbanXI)
 (viSeRya-inside_saMbanXI)
 (viSeRya-into_saMbanXI)
 (viSeRya-in_saMbanXI)
 (viSeRya-like_saMbanXI)
 (viSeRya-off_saMbanXI)
 (viSeRya-onto_saMbanXI)
 (viSeRya-opposite_saMbanXI)
 (viSeRya-outside_saMbanXI)
 (viSeRya-over_saMbanXI)
 (viSeRya-toward_saMbanXI)
 (viSeRya-towards_saMbanXI)
 (viSeRya-under_saMbanXI)
 (viSeRya-underneath_saMbanXI)
 (viSeRya-unlike_saMbanXI)
 (viSeRya-under_saMbanXI)
 (viSeRya-up_saMbanXI)
 (viSeRya-upon_saMbanXI)
 (viSeRya-versus_saMbanXI)
 (viSeRya-via_saMbanXI)
 (viSeRya-with_saMbanXI)
 (viSeRya-within_saMbanXI)
 (viSeRya-without_saMbanXI)
 (kriyA-lupwa_prep saMbanXa)
 (yes_no_question)
 (wh_question)
 (subject_question wh_type)
 (kriyA-prayojya_karwA)
 (kriyA-conjunction)
 (kriyA-samAnakAlika_kriyA)
 (idiom_type_1)
 (idiom_type_2)
 (kriyA-GNP_agr_subject)
 (kriyA-lupwa_prep_saMbanXI)
 (pUrvakAlika_kriyA-ananwarakAlika kriyA)
 (viSeRya-kqxanwa_viSeRaNa)   
 (kriyA-kqxanwa_object)
 (kriyA-nA)
 (kriyA-in_saMbanXI)
 (kriyA-as_saMbanXI)
 (kriyA-with_saMbanXI)
 (kriyA-along_saMbanXI)
 (saMjFA-saMjFA_samAnAXikaraNa)
 (kriyA-kriyA_mUla)
 (saMjFA-kqxanwa)
 (subject-vAkyasamAnAXikarNa)
 )
 
 (defrule assert_dummy_facts
 (declare (salience 2000))
 (expr $?)
  =>
 (assert(lwg_list))
 (assert(hindi_id_order ))
 (assert(ordered_group_ids))
 (assert(finite_verb_count ))
 (assert (comma_list_for_sent_opener))
 )
 
 (defrule comma_list_for_sent_opener
 (declare (salience 1050))
 (id-right_punctuation ?id ",")
 ?f<-(comma_list_for_sent_opener $?ids)
 (test (eq (member$ ?id  $?ids) FALSE))
 =>
 (retract ?f)
 (bind $?ids (sort > (create$ $?ids ?id)))
 (printout t $?ids crlf)
 (assert (comma_list_for_sent_opener $?ids))
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
        (bind ?*finite_verb_count* (+ ?*finite_verb_count* 1))
	(assert (lwg_id ?id))
    	(bind $?ids (insert$ $?ids 1 ?id))
    	(bind $?ids (sort > $?ids))
    	(assert (lwg_list $?ids))
 )

 ;----------------------------------------------------------------------------------------------------- 
 ;Adding left-id  to ?*l_list* list and
 ;Adding right-id to ?*r_list* list

 (defrule rule1
 (declare (salience 1000))
 (using-parser-ids  ?rel ?l_id ?r_id)
 (test (and (neq ?rel viSeRya-det_viSeRaNa) (neq ?rel viSeRya-viSeRaNa)(neq ?rel kriyA-nA)(neq ?rel kriyA-ke_liye) (neq ?rel nAma-saMkRipwa_nAma)(neq ?rel proper_noun-det_viSeRaNa)(neq ?rel subject-opener)(neq ?rel kriyA-ne_ke_liye)(neq ?rel viSeRya-wulanAwmaka_viSeRaNa)(neq ?rel kriyA-viXi_vAkyakarma)(neq ?rel kriyA-samAnakAlika_kriyA)(neq ?rel pUrvakAlika_kriyA-ananwarakAlika_kriyA)(neq ?rel kriyA-praSnavAcI)(neq ?rel muKya_vAkya-sApekRa_upavAkya)(neq ?rel subject-vAkyasamAnAXikarNa)(neq ?rel kriyA-samakAlika_kriyA)))
 =>
 (bind ?*l_list* (create$ ?*l_list* ?l_id))
 (bind ?*r_list* (create$ ?*r_list* ?r_id))
 )

 (defrule rule1_tmp
 (declare (salience 1000))
 (No complete linkages found)
 (or(using-chunk-ids ?rel ?l_id ?r_id)(using-stanford-ids ?rel ?l_id ?r_id))
 (test (and (neq ?rel viSeRya-det_viSeRaNa) (neq ?rel viSeRya-viSeRaNa)(neq ?rel kriyA-nA)(neq ?rel kriyA-ke_liye) (neq ?rel nAma-saMkRipwa_nAma)(neq ?rel proper_noun-det_viSeRaNa)(neq ?rel subject-opener)(neq ?rel kriyA-ne_ke_liye)(neq ?rel viSeRya-wulanAwmaka_viSeRaNa)(neq ?rel kriyA-viXi_vAkyakarma)(neq ?rel kriyA-samAnakAlika_kriyA)(neq ?rel pUrvakAlika_kriyA-ananwarakAlika_kriyA)(neq ?rel kriyA-praSnavAcI)(neq ?rel muKya_vAkya-sApekRa_upavAkya)(neq ?rel subject-vAkyasamAnAXikarNa)(neq ?rel kriyA-samakAlika_kriyA)))
 =>
 (bind ?*l_list* (create$ ?*l_list* ?l_id))
 (bind ?*r_list* (create$ ?*r_list* ?r_id))
 )


 ;----------------------------------------------------------------------------------------------------- 
 ;Getting related ids of a particular finite verb
 (defrule rule3
 (declare (salience 900))
 (lwg_list ?k_id1 $?ids)
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
 (bind ?*k_list* (create$ ?k_id1 ?*k_list*))
 (bind ?*k_list* (sort > ?*k_list*))
 (bind ?*k_list* (reverse  ?*k_list* ))
 (assert (list ?*k_list*))
 )

 ;----------------------------------------------------------------------------------------------------- 
 

 ;Moving the subject to first position in the sentence.
 (defrule subject_rule
 (declare (salience 955))
 (kriyA-subject ?kriyA_id ?subj_id)
 ?f<-(list $?list)
 ?f1<-(list_control_fact ?subj_id)
 (test (and (member$ ?subj_id $?list)(member$ ?kriyA_id $?list)))
  =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list))
        (bind $?list (delete-member$ $?list ?subj_id))
        (bind $?list (create$ ?subj_id $?list))
        (assert(list $?list))
        (bind ?*k_list* (create$))
(printout t "(Rule_name-before_movement-after_movement  subject_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)
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
  =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list))
        (bind $?list (delete-member$ $?list ?h_id))
        (bind $?list (create$ $?list ?h_id))
        (assert(list $?list))
(printout t "(Rule_name-before_movement-after_movement  verb_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)
         
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
   =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list ?kriyA))
        (bind $?list (delete-member$ $?list ?subject_samAnAXikaraNa))
        (assert(list $?list ?subject_samAnAXikaraNa ?kriyA))
  (printout t "(Rule_name-before_movement-after_movement  subject_samAnAXikaraNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)" "?subject_samAnAXikaraNa" "?kriyA"))" crlf)
  )

 ;----------------------------------------------------------------------------------------------------- 
  ;Move the object to the before kriyA position in the sentence.
  (defrule object_rule
  (declare (salience 953))
  (or(kriyA-object ?kriyA ?obj_id)(kriyA-object_2 ?kriyA ?obj_id))
  ?f<-(list $?list ?kriyA)
  ?f1<-(list_control_fact ?obj_id)
  (test (member$ ?obj_id $?list))

   =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list ?kriyA))
        (bind $?list (delete-member$ $?list ?obj_id))
        (assert(list $?list ?obj_id ?kriyA ))
 (printout t "(Rule_name-before_movement-after_movement  object_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)" "?obj_id" "?kriyA"))" crlf)
  )

  ;Move the object to the before kriyA position in the sentence.(non-finite-verb)
  ;Taking that course improved the student's skills .
  (defrule object_rule1
  (declare (salience 351))
  ?f1<-(kriyA-object  ?kriyA ?obj_id)
  ?f2<-(list $?list ?h_kriyA)
  (test (and (member$ ?obj_id $?list) (member$ ?kriyA $?list)))
  =>
        (retract ?f1 ?f2)
        (bind ?*k_list_debug*  (create$ $?list ?h_kriyA))
        (bind $?list (delete-member$ $?list ?obj_id))
        (bind ?pos (member$ ?kriyA $?list))
        (bind $?list (insert$ $?list ?pos ?obj_id))
        (assert(list $?list ?h_kriyA)) 
  (printout t "(Rule_name-before_movement-after_movement  object_rule1  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)" "?h_kriyA"))" crlf)
  )


;-----------------------------------------------------------------------------------------------------------------------
 ;It is not a good idea to drive for hours without a rest .   
(defrule kriyA_niReXaka_rule
  (declare (salience 952))
  (kriyA-kriyA_niReXaka  ?kriyA ?kriyA_niReXaka)
  ?f<-(list $?list ?kriyA)
  ?f1<-(list_control_fact ?kriyA_niReXaka)
  (test (member$ ?kriyA_niReXaka $?list))
   =>
        (retract ?f ?f1)
        (bind ?*k_list_debug*  (create$ $?list ?kriyA))
        (bind $?list (delete-member$ $?list ?kriyA_niReXaka))
        (assert(list $?list ?kriyA_niReXaka ?kriyA ))
(printout t "(Rule_name-before_movement-after_movement  kriyA_niReXaka_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)" "?kriyA_niReXaka" "?kriyA"))" crlf)
  )

;---------------------------------------------------------------------------------------------------------------------
;Ex:-Still in development , Google Wave is a browser-based tool that mixes e-mail , with Instant Messaging and real-time online collaboration elements .  
;As a protein synthesis inhibitor , it stops the growth of bacteria by disrupting their production of proteins .
;If for a kriyA there sentence_opener's  order of the whole clause will be same as English ,and is moved to the start of the sentence
 (defrule sentence_opener_rule
 (declare (salience 951))
 ?f<-(kriyA-sentence_opener  ?kriyA ?sen_opener)
 (not (kriyA-subject ?kriyA ?sen_opener1&:(> ?sen_opener ?sen_opener1)))
 (comma_list_for_sent_opener $?ids)
 ?f2<-(list $?list)
 (test (!= (length $?ids) 0))
 (not (kriyA-sentence_opener_movement_done ?kriyA))
 =>
 (retract ?f2)
 (bind ?*k_list_debug*  (create$ $?list))
 (bind ?length (length $?ids))
 (bind $?val (create$))
 (bind $?val1 (create$))
 (loop-for-count (?i 1 ?length)
                 (bind ?j (nth$ ?i $?ids))
                 (if (> ?j ?sen_opener) then
                     (loop-for-count (?k ?sen_opener ?j)
                                     (bind $?val (create$ $?val ?k))
                      )
               (break)
                  )
  )
  (printout t $?val crlf)
  (bind ?len (length $?val))
  (loop-for-count (?l 1 ?len)
                  (bind ?j (nth$ ?l $?val))
                  (if (member$ ?j $?val) then
                  (bind $?list (delete-member$ $?list ?j))
                  (bind $?val1 (sort > (create$ $?val1 ?j)))
                  )
  )
 (bind $?list (create$ $?val1 $?list))
 (printout t $?val1 $?list crlf)
 (assert (list $?list))
 (printout t "(Rule_name-before_movement-after_movement sentence_opener_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)
 (assert (kriyA-sentence_opener_movement_done ?kriyA))
 )

  ;-----------------------------------------------------------------------------------------------------
  ;Eg :They were discussing their hopes and dreams . 
  (defrule RaRTI_viSeRaNa_rule_for_conj
  (declare (salience 340))
  (pada_info (group_head_id ?RaRTI_id) (group_cat PP) (group_ids $?grp_ids))
  ?f1<-(viSeRya-RaRTI_viSeRaNa ?RaRTI_id ?RaRTI_id1)
  (not (viSeRya-RaRTI_viSeRaNa  ?RaRTI_id2&:(> ?RaRTI_id2 ?RaRTI_id) ?))
  ?f0<-(list $?list)
  (id-word ?id and)
  (test (member$ ?id $?grp_ids))
  (test (member$ ?RaRTI_id $?list))
  (test (member$ ?RaRTI_id1 $?list))
  =>
  (retract ?f0 ?f1)
  (bind ?*k_list_debug*  (create$ $?list))
        (bind $?list (delete-member$ $?list ?RaRTI_id1))
        (bind ?pos (member$ ?RaRTI_id $?list))
        (bind $?list (insert$ $?list ?pos ?RaRTI_id1))
        (assert (list $?list))
(printout t "(Rule_name-before_movement-after_movement  and_RaRTI_viSeRaNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)
   (bind ?len (length$ $?grp_ids))
          (loop-for-count (?i 1 ?len)
                   (bind ?j (nth$ ?i $?grp_ids))
                    (assert (movement_done ?j))
           )
   )

  

  ;Moving  RaRTI_viSeRaNa before RaRTI_viSeRya 
  ;Passion is a must to excel and to reach your potential .
  (defrule RaRTI_viSeRaNa_rule
  (declare (salience 340))
  ?f1<-(viSeRya-RaRTI_viSeRaNa ?RaRTI_id ?RaRTI_id1)
  (not (viSeRya-RaRTI_viSeRaNa  ?RaRTI_id2&:(> ?RaRTI_id2 ?RaRTI_id) ?))
  ?f0<-(list $?list)
  (test (member$ ?RaRTI_id $?list))
  (test (member$ ?RaRTI_id1 $?list))
  (not (movement_done ?RaRTI_id))
  (not (movement_done ?RaRTI_id1))
  =>
        (retract ?f0 ?f1)
        (bind ?*k_list_debug*  (create$ $?list))
        (bind $?list (delete-member$ $?list ?RaRTI_id1))
        (bind ?pos (member$ ?RaRTI_id $?list))
        (bind $?list (insert$ $?list ?pos ?RaRTI_id1))
        (assert (list $?list))
(printout t "(Rule_name-before_movement-after_movement  RaRTI_viSeRaNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?list)"))" crlf)
  )
  
  ;-----------------------------------------------------------------------------------------------------
 
  ;Moving viSeRaNa before viSeRya 
  ;The blacksmith made an assay of iron ore . 
  ;;Moving (of/for/.....)_saMbanXI before its viSeRya
  (defrule viSeRya_viSeRaNa_rule
  (declare (salience 350))
  ?f1<-(using-parser-ids  ?rel ?v_id ?v_id1)
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
  (test (neq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
   =>
       (retract ?f0 ?f1)
       (bind ?*k_list_debug*  (create$  $?id1))
       (bind $?id1 (delete-member$ $?id1 ?v_id1))
       (bind ?pos (member$ ?v_id $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
       (assert (list $?id1))
(printout t "(Rule_name-before_movement-after_movement  viSeRya_viSeRaNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?id1)"))" crlf)
  )


  ;The present version of Anusaaraka provides for translation from English to Hindi .(3rd parse)
  ;Suggested by Sukadha (23-09-09)
  ;Moving to_saMbanXI after its viSeRya
  (defrule viSeRya_viSeRaNa_to_rule
  (declare (salience 350))
  ?f1<-(using-parser-ids  ?rel ?v_id ?v_id1)
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")))
  (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
  (test (eq (sub-string (+ (str-index "-" ?rel) 1)  (- (str-index "_" ?rel) 1) ?rel)  "to"))
  ?f0<-(list  $?id1)
  (test (member$ ?v_id $?id1))
  (test (member$  ?v_id1 $?id1))
   =>
       (retract ?f0 ?f1)
       (bind ?*k_list_debug*  (create$  $?id1))
       (bind $?id1 (delete-member$ $?id1 ?v_id))
       (bind ?pos (member$ ?v_id1 $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id))
       (assert (list $?id1))
(printout t "(Rule_name-before_movement-after_movement  viSeRya_viSeRaNa_to_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?id1)"))" crlf)
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
   =>
       (retract ?f0 ?f1)
       (bind ?*k_list_debug*  (create$  $?id1))
       (bind $?id1 (delete-member$ $?id1 ?v_id1))
       (bind ?pos (member$ ?v_id $?id1))
       (bind $?id1 (insert$ $?id1 ?pos ?v_id1))
       (assert (list $?id1))
 (printout t "(Rule_name-before_movement-after_movement  viSeRaNa_viSeRaka_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?id1)"))" crlf)
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
   =>
       (retract ?f0 ?f1)
       (bind ?*k_list_debug*  (create$  $?ids))
        (bind $?ids (delete-member$ $?ids ?kriyA_mUla))
        (bind ?pos (member$ ?kriyA $?ids))
        (bind $?ids (insert$ $?ids ?pos ?kriyA_mUla))
        (assert (list $?ids))
 (printout t "(Rule_name-before_movement-after_movement  kriyA_mUla_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?ids)"))" crlf)
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
  =>
        (retract ?f0 ?f1)
        (bind ?*k_list_debug*  (create$  $?ids))
        (bind $?ids (delete-member$ $?ids ?saMjFA_samAnAikaraNa_id))
        (bind ?pos (member$ ?saMjFA_id $?ids))
        (bind $?ids (insert$ $?ids ?pos ?saMjFA_samAnAikaraNa_id))
        (assert (list $?ids))
 (printout t "(Rule_name-before_movement-after_movement  saMjFA-saMjFA_samAnAikaraNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ $?ids)"))" crlf)
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
   =>
  (retract ?f0 ?f3)
  (bind ?*k_list_debug*  (create$ $?pre $?hin_order $?pos))
  (bind $?hin_order (delete-member$ $?hin_order ?jo_samAnAXikaraNa))
  (bind $?sen2 (delete-member$ $?sen2 ?jo_samAnAXikaraNa))
  (printout t $?hin_order $?sen2 crlf)
  (bind ?position (member$ (nth$ 1 $?sen2) $?hin_order))
  (if (neq ?position FALSE) then
  (printout t ?position crlf)
  (bind $?hin_order (insert$ $?hin_order ?position ?jo_samAnAXikaraNa )))
  (assert (hindi_id_order $?pre $?hin_order $?pos))
 (printout t "(Rule_name-before_movement-after_movement  viSeRya-jo_samAnAXikaraNa_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?pre $?hin_order $?pos))"))" crlf)
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
  =>
  (retract ?f ?f1)
  (bind ?*k_list_debug*  (create$ $?pre $?list $?list1 $?pos))
  (assert (hindi_id_order $?pre $?list ?id $?list1 $?pos))
 (printout t "(Rule_name-before_movement-after_movement  conjuction_for_common_subs_diff_kriyAs  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?pre $?list ?id $?list1 $?pos))"))" crlf)
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
 =>
 (retract ?f ?f1)
 (bind ?*k_list_debug*  (create$ $?list ))
 (bind ?pos (member$ ?obj1 $?list))
 (bind ?pos1 (member$ ?obj2 $?list))
 (if (< ?pos ?pos1) then
 (bind $?list (insert$ $?list (+ ?pos 1) ?id))
 else
 (bind $?list (insert$ $?list (+ ?pos1 1) ?id)))
 (assert (hindi_id_order $?list))
 (printout t "(Rule_name-before_movement-after_movement  conjuction_and_for_common_kriyA_diff_objs  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)
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
 =>
 (retract ?f ?f1)
 (bind ?*k_list_debug*  (create$ $?list ))
 (bind ?pos (member$ ?sub1 $?list))
 (bind ?pos1 (member$ ?sub2 $?list))
 (if (< ?pos ?pos1) then
 (bind $?list (insert$ $?list (+ ?pos 1) ?id))
 else
 (bind $?list (insert$ $?list (+ ?pos1 1) ?id)))
 (assert (hindi_id_order $?list))
 (printout t "(Rule_name-before_movement-after_movement  conjuction_and_for_common_kriyA_diff_subjs  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)
 )


 ;We have tickets for the symphony and the opera.
 (defrule conjuction_for_common_kriyA_diff_saMbanXI
 (declare (salience -200))
 ?f<-(id-word ?id and|or)
 (using-parser-ids  ?rel ?kriyA ?pre_saMbanXI1)
 (using-parser-ids  ?rel ?kriyA ?pre_saMbanXI2)
 (test (neq ?pre_saMbanXI1 ?pre_saMbanXI2))
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
  =>
 (retract ?f ?f1)
 (bind ?*k_list_debug*  (create$ $?list ))
 (bind ?first1 (nth$ (length$ $?grp_ids1) $?grp_ids1))
 (bind ?first2 (nth$ (length$ $?grp_ids2) $?grp_ids2))
 (bind ?pos (member$  ?first1 $?list))
 (bind ?pos1 (member$ ?first2 $?list))
 (if (and (neq ?pos FLASE)(neq ?pos1 FLASE)) then
 (if (< ?pos ?pos1) then
 (bind $?list (insert$ $?list (+ ?pos 1) ?id))
 else
 (bind $?list (insert$ $?list (+ ?pos1 1) ?id))))
 (assert (hindi_id_order $?list))
 (printout t "(Rule_name-before_movement-after_movement  conjuction_for_common_kriyA_diff_prepositions  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)

 )

 ;But my efforts to win his heart have failed
 (defrule wall_conjuction
 (declare (salience -200))
 ?f<-(wall_conjunction  1)
 (expr 1 $?)
 ?f1<-(hindi_id_order $?list)
 =>
 (retract ?f ?f1)
 (bind ?*k_list_debug*  (create$ $?list ))
 (assert (hindi_id_order 1 $?list))
 (printout t "(Rule_name-before_movement-after_movement  wall_conjuction  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ 1 $?list))"))" crlf)
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
 =>
 (retract ?f ?f1)
 (bind ?*k_list_debug*  (create$ $?list ))
 (bind $?list (delete-member$ $?list ?sub_conj))
 (bind ?pos (member$ ?sub $?list)) 
 (bind $?list (insert$ $?list  ?pos  ?sub_conj))
 (assert (hindi_id_order $?list))
 (printout t "(Rule_name-before_movement-after_movement subject-conjunction_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)
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
  =>
  (retract ?f ?f1)
  (bind ?*k_list_debug*  (create$ $?pre $?list $?list1 $?pos ))
  (bind $?list (create$ $?pre $?list ?id  $?list1 $?pos))
  (assert (hindi_id_order $?list))
  (printout t "(Rule_name-before_movement-after_movement but-conjunction_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)

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
  =>
  (retract ?f ?f1)
  (bind ?*k_list_debug*  (create$ $?list ))
  (bind ?pos (member$ (nth$ (length$ $?grp_ids1) $?grp_ids1) $?list))
  (bind ?pos1 (member$ (nth$ (length$ $?grp_ids2) $?grp_ids2) $?list))
  (if (and (neq ?pos FALSE)(neq ?pos1 FALSE))  then
  (if (< ?pos ?pos1) then
  (bind $?list (insert$ $?list (+ ?pos 1) ?id))
  else
  (bind $?list (insert$ $?list (+ ?pos1 1) ?id))))
  (assert (hindi_id_order $?list))
  (printout t "(Rule_name-before_movement-after_movement default_conjunction_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?list))"))" crlf)

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
  ?f1<-(using-parser-ids  kriyA-subject ?kriya ?sub_id)
  ?f2<-(using-parser-ids  kriyA-subject ?kriya1 ?sub_id)
  (test (neq ?kriya ?kriya1))
  (test (member$ ?sub_id $?ids))
  =>
        (retract ?f0 ?f1 ?f2)
        (bind ?*k_list_debug*  (create$ $?ids ))
        (bind ?pos (member$ ?sub_id $?ids))
        (bind $?ids (delete-member$ $?ids ?sub_id))
        (bind $?ids (insert$ $?ids ?pos ?sub_id))
        (assert (hindi_id_order $?ids))
 (printout t "(Rule_name-before_movement-after_movement remove_repeated_sub_ids  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?ids))"))" crlf)
 )
  ;-----------------------------------------------------------------------------------------------------------------------
  ; if no complete linkage is found then take english order itself as hindi order(i.e; if no relations are present)

  (defrule id_order_for_NCL_with_no_relations
  (declare (salience -500))
;  (No complete linkages found)
  (expr $?ids)
  ?f<-(hindi_id_order)
   =>
       (retract ?f)
       (bind ?*k_list_debug*  (create$ ))
       (assert (hindi_id_order  $?ids ))
 (printout t "(Rule_name-before_movement-after_movement id_order_for_NCL_with_no_relations  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?ids))"))" crlf)
  )

 ;--------------------------------------------------------------------------------------------------------------------------

  (defrule default_rule
  (declare (salience -600))
  (kriyA-subject ? ?subj_id)
  ?f4<-(id-word ?id ~to)
  ?f3<-(pada_info (group_head_id ?id)(group_cat ?gtype)(group_ids $?grp_ids))
  ?f0<-(pada_info (group_head_id ?h_id1)(group_cat ?gtype1)(group_ids $?grp_ids1)(preposition ?prep_id1)(Hin_position ?h_pos1))
  ?f1<-(pada_info (group_head_id ?h_id2)(group_cat ?gtype2)(group_ids $?grp_ids2)(preposition ?prep_id2)(Hin_position ?h_pos2))
  (test (and (neq ?h_id1 ?subj_id) (neq ?h_id2 ?subj_id)))
  ?f2<-(hindi_id_order $?ids)
  (test (not (member$ ?id $?ids)))
  (test (neq ?id ?prep_id1))
  (test (neq ?id ?prep_id2))
  (test (and (member$ ?h_id1 $?ids)(member$ ?h_id2 $?ids)))
  (test (and (neq ?gtype English_PP)(neq ?gtype1 English_PP)(neq ?gtype2 English_PP)))
   =>
  (retract ?f2 ?f4)
  (bind ?*k_list_debug*  (create$ $?ids))
  (bind ?pos (member$ (nth$ 1 $?grp_ids1) $?ids))
  (bind $?ids (insert$ $?ids ?pos $?grp_ids));)
  (assert (hindi_id_order $?ids))
  (printout t "(Rule_name-before_movement-after_movement  default_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?ids))"))" crlf)
  )

 ;--------------------------------------------------------------------------------------------------------------------------

 ;Ex:- She was related to me . 
 ;vaha muJase saMbanXiwa WI
 (defrule verbal_adjective_rule
 (declare (salience -600))
 (root-verbchunk-tam-chunkids ?rt ?vrb_chnk ?suf $?vc_ids ?id1 ?id)
 ?f0<-(hindi_id_order $?ids)
 ?f<-(id-HM-source ?id ?hnd_mng ?)
 (test (neq (gdbm_lookup "verbal_adj.gdbm" ?hnd_mng) "FALSE"))
 (test (neq (gdbm_lookup "verbal_adj_tams.gdbm" ?suf) "FALSE"))
 =>
   (retract ?f0 ?f)
   (bind ?*k_list_debug*  (create$ $?ids))
   (bind ?pos (member$ ?id $?ids))
   (bind $?ids (delete-member$ $?ids ?id1))
   (bind $?ids (insert$ $?ids (+ ?pos 1) ?id1))
   (assert (hindi_id_order $?ids))
   (printout t "(Rule_name-before_movement-after_movement  verbal_adjective_rule  ("(implode$ ?*k_list_debug*)")   ("(implode$ (create$ $?ids))"))" crlf)
 )
 

  

