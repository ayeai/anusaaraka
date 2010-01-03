(defglobal ?*error_file* = err_fp)
(defglobal ?*gnp_debug* = gnp_fp)


(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (deffacts dummy_facts 
 (kriyA-samakAlika_kriyA) 
 (niReXawmaka_vAkya) 
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
 (saMKyA-saMKyA) 
 (viSeRaNa-viSeRaka) 
 (viSeRya-but_saMbanXI) 
 (kriyA-now_saMbanXI) 
 (subject-object_samAnAXikaraNa) 
 (kqxanwa-kqxanwa) 
 (viSeRya-to_saMbanXI) 
 (viSeRya-jo_samAnAXikaraNa) 
 (viSeRya-about_saMbanXI) 
 (kriyA-ago_saMbanXI) 
 (viSeRya-viSeRaka) 
 (kriyA-where_saMbanXI) 
 (kriyA-kqxanwa_vAkyakarma) 
 (kriyA-jo_type_object) 
 (nirXArya-nirXAraNa) 
 (muKya_vAkya-sApekRa_upavAkya) 
 (kriyA-sentence_opener) 
 (to-infinitive) 
 (kriyA_viSeRaNa-ke_liye) 
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
 (kiwanA) 
 (dummy_subject-subject_samAnAXikaraNa) 
 (kriyA-whatever_saMbanXI) 
 (object-kqxanwa_kriyA) 
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
 (viSeRaNa-hogA) 
 (uwanA) 
 (kriyA-ne_ke_liye) 
 (kriyA-ne_ke_liye) 
 (verb_agrmt-subject_id-head_id subject)
 (verb_agrmt-object_id-head_id) 
 (verb_agrmt-head_id)
 (id-number-src)
 (id-gender-src)
 (id-original_word)
 (id-HM-source)
 (nAma-saMkRipwa_nAma)
 (kriyA-past_saMbanXI)
 (kriyA-kI_waraha)
 (kriyA-kqxanwa_viSeRaNa)
 (viSeRANa-jyAxA)
 (kriyA_viSeRaNa-ki)
 (yahAz_waka_ki-karwA)
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
 (kriyA-into_saMbanXI) 
 (AjFArWaka_kriyA)
 (No complete linkages found)
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
 (viSeRya-jo_samAnAXikaraNa)
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
 (saMjFA-saMjFA_samAnAikaraNa)
 (kriyA-kriyA_mUla)
 (saMjFA-kqxanwa)
 (subject-vAkyasamAnAXikarNa)
 )

 ;------------------------------ PP pada for vibakthi=0 and vibhakti!=0--------------------------------------------

 ; If "I"  then  gender=m number=s and peson=u
 (defrule PP_pada_for_I
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id I|i)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1 (gender m)(number s)(person u)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_I  m Direct_assignment s Direct_assignment u Direct_assignment d vibakthi_absent )" crlf)
	else			
	        (modify ?f1 (gender m)(number s)(person u)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-GNP-case  " ?pada_id " PP_pada_for_I m Direct_assignment s Direct_assignment u Direct_assignment d vibakyhi_present )" crlf)
	)
 )

 ;----------------------------------------------------------------------------------------------------------------

 ; If "He"  then  gender = m,  number = s and peson = a
 (defrule PP_pada_for_He
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
  (id-original_word ?pada_id He|he)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1 (gender m)(number s)(person a)(case d))
       (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-GNP-case  " ?pada_id " PP_pada_for_He  m Direct_assignment s Direct_assignment a Direct_assignment d vibakthi_absent )" crlf)
	else
	        (modify ?f1 (gender m)(number s)(person a)(case o))
       (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-GNP-case  " ?pada_id " PP_pada_for_He  m Direct_assignment s Direct_assignment a Direct_assignment o vibakthi_present )" crlf)
	)
 )

;----------------------------------------------------------------------------------------------------------------

 ; If "She"  then  gender = f,  number = s  and peson = a
 (defrule PP_pada_for_She
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id She|she)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1 (gender f)(number s)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_She  f Direct_assignment s Direct_assignment a Direct_assignment d vibakthi_absent )" crlf)
	else
        (modify ?f1 (gender f)(number s)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-GNP-case  " ?pada_id " PP_pada_for_She f Direct_assignment s Direct_assignment a Direct_assignment o vibakthi_present )" crlf)
	)
 )

;----------------------------------------------------------------------------------------------------------------

 (defrule PP_pada_for_we
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  We|we)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1  (gender ?gen)(number p)(person u)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_we "?gen" "?gen_src " p Direct_assignment u Direct_assignment d vibakthi_absent )" crlf)
	else
		(modify ?f1 (gender ?gen)(number p)(person u)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_we  " ?gen " "?gen_src " p  Direct_assignment u Direct_assignment o vibakthi_present  )" crlf)
	)
 )

;----------------------------------------------------------------------------------------------------------------

 (defrule PP_pada_for_they
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  They|they)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (if (eq ?vib 0) then
                (modify ?f1  (gender ?gen)(number p)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_they  " ?gen " "?gen_src "  p Direct_assignment a Direct_assignment d vibakthi_absent)" crlf)
        else
                (modify ?f1 (gender ?gen)(number p)(person a)(case o))
       (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_they  "?gen" " ?gen_src "  p Direct_assignment u Direct_assignment o vibakthi_present)" crlf)
        )
 )

 ;----------------------------------------------------------------------------------------------------------------

 (defrule PP_pada_for_you
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  you|You)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 (id-HM-source ?pada_id ?hmng ?)
 =>
	(retract ?f0)
        (if (eq ?hmng Apa) then
 		(modify ?f1 (gender ?gen)(number p)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_you  " ?gen" "?gen_src " p Direct_assignment a Direct_assignment o vibakthi_present)" crlf)
	else
                (modify ?f1 (gender ?gen)(number p)(person m)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_you  "?gen" " ?gen_src "  p Direct_assignment m Direct_assignment o vibakthi_present )" crlf)
	)
  )

 ;----------------------------------------------------------------------------------------------------------------

 ; default peson = a
 (defrule PP_pada
 (declare (salience 900))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  ?pada_head)
 (id-gender-src ?pada_id ?gen ?gen_src)
 (id-number-src ?pada_id ?num ?num_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
        (if (eq ?vib 0) then
	        (modify ?f1 (gender ?gen)(number ?num)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada  "?gen" "?gen_src " "?num" "?num_src " a  Direct_assignment d vibakthi_absent )" crlf)
	else 
        	(modify ?f1 (gender ?gen)(number ?num)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada  " ?gen" "?gen_src " "?num" "?num_src" a Direct_assignment o vibakthi_present)" crlf)
	)
 )

 ;---------------------------------------------- Infinitive pada  ----------------------------------------------

 (defrule PP_pada_vib_inf
 (declare (salience 900))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat infinitive)(vibakthi ?vib))
 (id-original_word ?pada_id  ?pada_head)
 (id-gender-src ?pada_id ?gen ?gen_src)
 (id-number-src ?pada_id ?num ?num_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
	(if (eq ?vib 0 ) then
	        (modify ?f1 (gender ?gen)(number ?num)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada  " ?gen" "?gen_src " "?num" "?num_src" a Direct_assignment d vibakthi_absent)" crlf)
	else 
		(modify ?f1 (gender ?gen)(number ?num)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada  " ?gen" "?gen_src " "?num" "?num_src" a Direct_assignment o vibakthi_present)" crlf)
	)
 )

 ;------------------------------ subject-subject_samAnAXikaraNa -------------------------------------------------
 ;John is quite certainly a better choice . This is the way to go .
 (defrule samAnAXikaraNa_rule
 (declare (salience 800))
 (or (subject-subject_samAnAXikaraNa  ?sub_id ?samAnAXikaraNa_id)(saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id))
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP)(vibakthi ?vib)(gender ?gen1)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?case))
 (not(samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 =>

     (if (and (eq ?gen -)(neq ?gen1 -)) then
         (modify ?f1 (gender ?gen1)(number ?num)(person ?per))
         (modify ?f2 (gender ?gen1) ) 
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule "?gen1" PV "?num" number_from_subject "?per " person_from_subject )" crlf)
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified  " ?sub_id " samAnAXikaraNa_rule "?gen1" gender_from_samAnAXikaraNa  "?num" PV "?per " PV)" crlf)
        )
        (if (and (eq ?gen1 -)(neq ?gen -)) then
                (modify ?f1 (gender ?gen)(number ?num)(person ?per))
;                (modify ?f2 (gender ?gen) ) 
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule "?gen " gender_from_subject "?num"  number_from_subject "?per"  person_from_subject)" crlf)
        )

        (if (and (eq ?gen1 -)(eq ?gen -))  then
                (modify ?f1 (gender -)(number ?num)(person ?per))
        ;        (modify ?f2 (gender -) ) 
       (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule " ?gen1" PV "?num"  number_from_subject "?per" person_from_subject )" crlf)
        )
        (if (and (neq ?gen1 -)(neq ?gen -)) then
                (if (eq ?gen ?gen1) then
                        (modify ?f1 (gender ?gen)(number ?num)(person ?per))
        ;      (modify ?f2 (gender ?gen))
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule "?gen" PV "?num" number_from_subject "?per" person_from_subject )" crlf)
 
                else
                        (printout  ?*error_file* crlf "The ids " ?sub_id " and " ?samAnAXikaraNa_id" have saMjFA-saMjFA_samAnAikaraNa relation "crlf "And the gender information for the ids are different ---------   " ?sub_id"-"?gen "  "?samAnAXikaraNa_id "-" ?gen1 crlf "if saMjFA id ("?sub_id") word is \"She\" then consider gender as f "crlf "else By default considering the samAnAXikaraNa id gender i.e., "?samAnAXikaraNa_id " - " ?gen1 crlf crlf)
                        (close ?*error_file*)
                        (modify ?f1 (gender ?gen1)(number ?num)(person ?per))
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule "?gen1" PV "?num " number_from_subject "?per"  person_from_subject )" crlf)
                )
        )
 (assert (samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Venus was a major Roman goddess , associated with love and beauty .
 (defrule PP_pada_saMjFA_samAnAXikaraNa
 (declare (salience 750))
 (saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP|VP)(vibakthi 0)(gender ?gen1)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?case))
 (id-original_word ?sub_id  ?pada_head)
 (not (saMjFA-saMjFA_samAnAXikaraNa_checked ?samAnAXikaraNa_id))
 =>
        (if (and (eq ?gen -)(neq ?gen1 -)) then
                (modify ?f1 (gender ?gen1)(number ?num)(person ?per))
;                (modify ?f2 (gender ?gen1) ) 
       (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " PP_pada_saMjFA_samAnAXikaraNa "?gen1 " PV " ?num" number_from_saMjFA "?per " person_from_saMjFA )" crlf)
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified  " ?sub_id " PP_pada_saMjFA_samAnAXikaraNa gender_from_samAnAXikaraNa PV PV PV )" crlf)
        )
        (if (and (eq ?gen1 -)(neq ?gen -)) then
                (modify ?f1 (gender ?gen)(number ?num)(person ?per))
;                (modify ?f2 (gender ?gen) ) 
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " PP_pada_saMjFA_samAnAXikaraNa " ?gen" gender_from_saMjFA "?num " number_from_saMjFA "?per " person_from_saMjFA )" crlf)
        )
        (if (and (eq ?gen1 -)(eq ?gen -))  then
                (modify ?f1 (gender -)(number ?num)(person ?per))
;                (modify ?f2 (gender -) ) 
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " PP_pada_saMjFA_samAnAXikaraNa "?gen" PV " ?per" number_from_saMjFA "?per" person_from_saMjFA )" crlf)
       )
        (if (and (neq ?gen1 -)(neq ?gen -)) then
                (if (eq ?gen ?gen1) then
                        (modify ?f1 (gender ?gen)(number ?num)(person ?per))
;                        (modify ?f2 (gender ?gen))
(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " PP_pada_saMjFA_samAnAXikaraNa "?gen " PV "?num " number_from_saMjFA "?per " person_from_saMjFA)" crlf)
                else
                        (printout  ?*error_file* crlf "The ids " ?sub_id " and " ?samAnAXikaraNa_id" have saMjFA-saMjFA_samAnAikaraNa relation "crlf "And the gender information for the ids are different ---------   " ?sub_id"-"?gen "  "?samAnAXikaraNa_id "-" ?gen1 crlf "if saMjFA id ("?sub_id") word is \"She\" then consider gender as f "crlf "else By default considering the samAnAXikaraNa id gender i.e., "?samAnAXikaraNa_id " - " ?gen1 crlf crlf)
                        (close ?*error_file*)
                        (modify ?f1 (gender ?gen1)(number ?num1)(person ?per))
      (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " PP_pada_saMjFA_samAnAXikaraNa " ?gen1" PV " ?num1" number_from_saMjFA " ?per "person_from_saMjFA )" crlf)
                )
        )
  (assert (saMjFA-saMjFA_samAnAXikaraNa_checked ?samAnAXikaraNa_id))
  )
 ;------------------------------ Relative Clause Rule -------------------------------------------------------------------

 (defrule jo_samAnAXikaraNa_rule
 (declare (salience 850))
 (viSeRya-jo_samAnAXikaraNa  ?sub_id ?id)
 (muKya_vAkya-sApekRa_upavAkya  ?muKya_vAkya ?sApekRa_upavAkya)
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen) (number ?num)(person ?per)(case ?case))
 ?f1<-(pada_info (group_head_id ?id)(group_cat PP)(vibakthi ?vib))
 (not (jo_samAnAXikaraNa_checked ?id))
 =>
	(if (eq ?vib 0) then
		(modify ?f1 (gender ?gen) (number ?num) (case d) (person ?per))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?id " jo_samAnAXikaraNa_rule " ?gen" gender_from_viSeRya "?num" number_from_viSeRya "?per " person_from_viSeRya )" crlf)
	else
		(modify ?f1 (gender ?gen) (number ?num) (case o) (person ?per))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-case-GNP_modified " ?id " jo_samAnAXikaraNa_rule "?gen" gender_from_viSeRya "?num" number_from_viSeRya "?per" person_from_viSeRya )" crlf)
	)
  (assert (jo_samAnAXikaraNa_checked ?id))
 )
 
  ;------------------------------  verb with subject agreement ----------------------------------------------------
 
 (defrule verb_sub_agmt
 (declare (salience 700))
 (verb_agrmt-subject_id-head_id subject ?sub_id ?kriyA)
 ?f1<-(pada_info (group_head_id ?kriyA)(group_cat VP))
 (pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per))
 ?f0<-(pada_control_fact ?kriyA)
 =>
        (retract ?f0 )
        (modify ?f1 (gender ?gen)(number ?num)(person ?per))
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?kriyA " verb_sub_agmt "?gen" gender_from_subject "?num"  number_from_subject "?per" person_from_subject)" crlf)
 )

 ;------------------------------  verb with object agreement ----------------------------------------------------

 (defrule verb_obj_agmt
 (declare (salience 700))
 (verb_agrmt-object_id-head_id object ?obj_id ?kriyA)
 ?f1<-(pada_info (group_head_id ?kriyA)(group_cat VP))
 (pada_info (group_head_id ?obj_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per))
 ?f0<-(pada_control_fact ?kriyA)
 =>
        (retract ?f0)
        (modify ?f1 (gender ?gen)(number ?num)(person ?per))
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?kriyA " verb_obj_agmt "?gen" gender_from_object "?num" number_from_object "?per" person_from_object)" crlf)
 )

 ;------------------------------  verb with kriyA_mUla agreement ----------------------------------------------------

 (defrule verb_kriyA_mUla_agmt
 (declare (salience 700))
 (verb_agrmt-head_id  kriyA_mula ?pada_id ?gen)
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat VP))
 (id-number-src ?pada_id ?num ?num_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (modify ?f1 (gender ?gen)(number ?num)(person a))
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?pada_id " verb_kriyA_mUla_agmt  "?gen" gender_from_kriyA_mula "?num " "?num_src " a Direct_assignment)" crlf)
 )

 ;------------------------------  verb with default agreement ----------------------------------------------------
                       
 (defrule verb_default_agmt
 (declare (salience 600))
 (verb_agrmt-head_id default ?pada_id)
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat VP))
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(modify ?f1 (gender m)(number s)(person a))
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?pada_id " verb_default_agmt m Default_assignment s Default_assignment a Default_assignment)" crlf)
 )

 ;-------------------------------------------------------------------------------------------------------------------

 ;Her hard work and talent will take her to the top .
 ;if gender is - then check for the gen in group ids
 (defrule gender_for_hyphen
 (declare (salience 810))
 ?f1<-(pada_info (group_head_id ?pada_id)(gender -)(group_ids $?ids)(group_cat PP))
 (id-gender-src ?id ?gen ?gen_src)
 (test (member$ ?id $?ids))
 (not (subject-subject_samAnAXikaraNa ? ?pada_id))
 (not (saMjFA-saMjFA_samAnAikaraNa  ? ?pada_id))
 (not (viSeRya-jo_samAnAXikaraNa  ? ?pada_id))
 (test (neq ?gen -))
 =>
  (modify ?f1 (gender ?gen))
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " gender_for_hyphen  "?gen " "?gen_src ")" crlf)
 )

 ;-------------------------------------------------------------------------------------------------------------------
 
 ;John screamed from inside the house .
 (defrule default_gender_m_for_pada
 (declare (salience 10))
 ?f1<-(pada_info (group_head_id ?pada_id)(gender -))
 =>
	(modify ?f1 (gender m))
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " default_gender_m_for_pada  m Default_assignment)" crlf)
 )