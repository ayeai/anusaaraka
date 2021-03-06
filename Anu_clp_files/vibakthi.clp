(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (deftemplate tam_tmp_info (slot head_id (default 0))(slot eng_tam (default 0))(slot hin_tam (default 0))(slot subject_vibhakti (default 0))(slot preceding_part_of_the_verb (default 0)))


 ;;;yA_tams_with_ne_list 
 (defrule assert_facts
 (declare (salience 10000))
 (load_yA_tams_with_ne)
 =>
 (assert (yA-tam  yA))
 (assert (yA-tam  yA_WA))
 (assert (yA-tam  yA_ho))
 (assert (yA-tam  yA_hE))
 (assert (yA-tam  yA_huA))
 (assert (yA-tam  yA_hogA))
 (assert (yA-tam  yA_howA))
 (assert (yA-tam  yA_binA))
 (assert (yA-tam  yA_huA_hogA))
 (assert (yA-tam  yA_huA_honA))
 (assert (yA-tam  yA_karawA_WA))
 (assert (yA-tam  yA_hI_WA))
 (assert (yA-tam  yA_hI_jAnA_hE))
 (assert (yA-tam  yA_hI_jAnA_hE))
 (assert (yA-tam  yA_cAhiye_WA))
 (assert (yA-tam  yA_huA_ho_sakawA_hE))
 (assert (yA-tam  yA_huA_nahIM_hogA))
 )

 ;---------------------------------- verb-to-sub-vibakthi --------------------------
 (defrule  kriya_sub_vibakthi_rule
 (declare (salience 1000))
 (kriyA_id-subject_viBakwi ?root_id ?vib)
 (kriyA-subject  ?root_id ?sub_id)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_head_id ?sub_id)(group_cat PP))
 =>
        (retract ?f0)
 	(modify ?f1 (vibakthi ?vib))
 )
 ;---------------------------------verb-to-obj vibakthi -----------------------------
 (defrule kriya_obj_vibakthi_rule
 (declare (salience 1000))
 (or (and (kriyA_id-object_viBakwi ?root_id ?vib)(kriyA-object  ?root_id ?obj_id))(and (kriyA_id-object2_viBakwi ?root_id ?vib)(kriyA-object_2  ?root_id ?obj_id)))
 (not (link_name-lnode-rnode Pg ? ?obj_id))
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi ?vib))
 )
 ;-----------------------------------------verb-to-obj1 vibakthi ------------------------------------------
 (defrule kriya_obj1_vibakthi_rule
 (declare (salience 1000))
 (kriyA_id-object1_viBakwi ?root_id ?vib)
 (kriyA-object_1  ?root_id ?obj_id)
 (not (link_name-lnode-rnode Pg ? ?obj_id))
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
        (retract ?f0)
	(modify ?f1 (vibakthi ?vib))
 )
 ;--------------------------------------- se vib for (kriyA-prayojya_karwA ) --------------------------------
 ; She is making the girl feed the child 
 (defrule kriya_prayojya_karwA_rule
 (declare (salience 980))
 (kriyA-prayojya_karwA  ?id ?id1)
 ?f0<-(pada_control_fact ?id1)
 ?f1<-(pada_info (group_head_id ?id1)(group_cat PP))
 =>
        (retract ?f0)
        (modify ?f1 (vibakthi se))
 )
 ;------------------------------------------- animate-obj-vib -------------------------------------------------
 ;I gave my brother an expensive present
 (defrule animate_vibakthi_rule
 (declare (salience 950))
 (or (kriyA-object  ?root_id ?obj_id)(kriyA-object_2  ?root_id ?obj_id)(kriyA-object_1  ?root_id ?obj_id))
 (not (subject-subject_samAnAXikaraNa  ?x ?obj_id))
 (id-HM-source ?obj_id ?obj_mng ?)
 (id-root ?root_id ~have)
 (id-original_word ?obj_id ?word)
 ?f0<-(pada_control_fact ?obj_id)
 ?f1<-(pada_info (group_head_id ?obj_id)(group_cat PP))
 =>
        (if (or (eq ?word you)(eq ?word You)) then
                (retract ?f0)
		(modify ?f1 (vibakthi ko))
        else
                (bind ?animate (gdbm_lookup "animate_list.gdbm" ?obj_mng))
                (if (eq ?animate "1") then
                        (retract ?f0)
			(modify ?f1 (vibakthi ko))
                )
        )
 )

 ;----------------------------------------------------------------------------------------------------------------
 (defrule vib_rule
 (declare (salience 850))
 (pada_info (group_head_id ?root_id)(group_cat VP)(vibakthi 0)(H_tam ?tam)(tam_source Default))
 (tam_tmp_info (head_id  ?root_id)(subject_vibhakti ?vib))
 (kriyA-subject  ?root_id ?sub_id)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_head_id ?sub_id))
 (test (neq ?vib 0))
 =>
	(retract ?f0)
	(modify ?f1 (vibakthi ?vib))
 )

 ;The object turned out to be a big meteorite .
 ;Here Compound-phrase is "turned out to be" (generally  for a compound phrase meaning is assigned to the last word and all other as "-"), and in this case "turned" is "kriyA" and hindi meaning is "-" so vibakthi information for this types of phrases will go wrong by using rule vib_rule1 .So, in order to solve this problem we have added the below rule in which if verb is part of any phrase , phrase meaning is taken as verb meaning.
 (defrule vib_rule2
 (declare (salience 850))
 (pada_info (group_head_id ?root_id)(group_cat VP)(vibakthi 0)(H_tam ?tam))
 (yA-tam  ?tam)
 (kriyA-subject  ?root_id ?sub_id)
 (not (kriyA-subject  ?root_id1&:(> ?root_id ?root_id1) ?sub_id))
 (id-HM-source ?root_id ? ?src)
 (ids-cmp_mng $?ids1 ?h_mng)
 (test (and (eq ?src Compound_Phrase_gdbm) (member$ ?root_id $?ids1)))
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_ids $?ids))
 (test (member$ ?sub_id $?ids))
 =>
        (retract ?f0)
        (if (neq (str-index "_" ?h_mng) FALSE) then
                (bind ?index (str-index "_" ?h_mng))
                (bind ?str (sub-string (+ ?index 1) 1000 ?h_mng))
                 (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?str))
                (if (eq ?a "0") then
                        (modify ?f1 (vibakthi 0))
                else
                        (modify ?f1 (vibakthi ne))
                )
        else
                (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
                (if (eq ?a "0") then
                        (modify ?f1 (vibakthi 0))
                else
                        (modify ?f1 (vibakthi ne))
                )
       )
 )

 ; I ate fruits , drank milk and slept . take the least verb id 
 ; They took them to policestation .
 (defrule vib_rule1
 (declare (salience 850))
 (pada_info (group_head_id ?root_id)(group_cat VP)(vibakthi 0)(H_tam ?tam))
 (yA-tam  ?tam)
 (kriyA-subject  ?root_id ?sub_id)
 (not (kriyA-subject  ?root_id1&:(> ?root_id ?root_id1) ?sub_id))
 (id-HM-source ?root_id ?h_mng ?)
 ?f0<-(pada_control_fact ?sub_id)
 ?f1<-(pada_info (group_ids $?ids))
 (test (member$ ?sub_id $?ids))
 =>
        (retract ?f0)
        (if (neq (str-index "_" ?h_mng) FALSE) then
                (bind ?index (str-index "_" ?h_mng))
                (bind ?str (sub-string (+ ?index 1) 1000 ?h_mng))
                 (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?str))
                (if (eq ?a "0") then
 			(modify ?f1 (vibakthi 0))
                else
			(modify ?f1 (vibakthi ne))
                )
        else
                (bind ?a (gdbm_lookup "not_ne_verb_list.gdbm" ?h_mng))
                (if (eq ?a "0") then
			(modify ?f1 (vibakthi 0))
                else
			(modify ?f1 (vibakthi ne))
                )
       )
 )

 ;-------------------------- prefix vibakthi rule ---------------------------------------------

; These are the boy 's books . These are children 's books .
 (defrule prefix_vib_rule
 (declare (salience 700))
 ?f0<-(id-original_word ?id ?word)
 (test (eq (sub-string (- (length ?word) 1) (length ?word) ?word) "'s"))
 ?f1<-(pada_info (group_head_id ?id)(group_cat ?cat))
 (test (neq ?cat English_PP))
 =>  
	(retract ?f0)
	(modify ?f1 (vibakthi kA))
 )

 ;------------------------------------------------------------------------------------------
 (defrule PP_vib
 (declare (salience 700))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(preposition ?pp_id))
 (id-HM-source ?pp_id ?h_mng ?)
 (test (neq ?pp_id 0))
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?h_mng -) then 
		(modify ?f1 (vibakthi 0))
	else 
		(modify ?f1 (vibakthi ?h_mng))
 	)
 )
 ;------------------------------------------------------------------------------------------
 ;She is my childhood friend .
; (defrule samAsa_vib
; (declare (salience 600))
; (samAsa  ? ?id)
; ?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0)(group_ids $?ids))
; (test (member$ ?id $?ids))
; =>
;	(retract ?f0)
;	(modify ?f0 (vibakthi kA))
; )
 ;------------------------------------------------------------------------------------------
 ; She asked me to guess her age.
 ; I showed them how they should do it .
 (defrule default_ko_vib
 (declare (salience 500))
 ?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (id-original_word ?pada_id  her|Her|him|Him|them|Them|me|Me)
 ?f1<-(pada_control_fact ?pada_id)
 =>
	(retract ?f1)
        (modify ?f0 (vibakthi ko))
 )
;------------------------------------------------------------------------------------------
 ; Is that the film in which he kills his mother.
 (defrule default_kA_vib
 (declare (salience 500))
 ?f0<-(pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (id-original_word ?pada_id  his|His|our|Our)
 ?f1<-(pada_control_fact ?pada_id)
 =>
        (retract ?f1)
        (modify ?f0 (vibakthi kA))
 )
;------------------------------------------------------------------------------------------
 (deffacts dummy_facts 
 (kriyA-kqxanwa_karma) 
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
 (nAma-saMkRipwa_nAma) 
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
 (saMjFA-saMjFA_samAnAikaraNa)
 (kriyA-kriyA_mUla)
 (saMjFA-kqxanwa)
 (subject-vAkyasamAnAXikarNa)
 (link_name-lnode-rnode)
  )

