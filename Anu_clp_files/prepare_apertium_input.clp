
(defglobal ?*A_fp5* = fp5)
(defglobal ?*aper_debug-file* = aper_debug)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (deffacts dummy_facts
 (id-TAM)
 (kriyA-samakAlika_kriyA)
 (niReXawmaka_vAkya)
 (id-wsd_number) 
 (verb_type-verb-causative_verb-tam)
 (remove_huA_tam_id) 
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
 (id-sen_mng)
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
 (id-idiom_root_mng)
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
 (kriyA_id-object2_viBakwi)
 (kriyA_id-object1_viBakwi)
 (kriyA_id-object_viBakwi)
 (kriyA_id-subject_viBakwi)
 (id-H_vib_mng)
 (make_verbal_noun)
 (root_id-TAM-vachan)
 (verb_agrmt-object_id-head_id)
 (verb_agrmt-subject_id-head_id)
 (verb_agrmt-head_id)
 (id-E_tam-H_tam_mng)
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
 (kriyA-through_saMbanXI) 
 (more_upameya-than_upamAna)
 (id-wsd_root) 
 (kriyA-into_saMbanXI) 
 (AjFArWaka_kriyA)
 (No complete linkages found)
 (id-cat)
 (id-cat_coarse)
 (link_name-link_expansion)
 (link_name-lnode-rnode)
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
 )


  ;;assert yA_tams_with_ne_list  and imper_request_list
 (defrule assert_yA_tams_with_ne_list
 (declare (salience 10000))
 (load_facts)
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
 (assert (yA-tam  yA_hI_WA))
 (assert (yA-tam  yA_cAhiye_WA))
 (assert (yA-tam  yA_huA_ho_sakawA_hE))
 (assert (yA-tam  yA_huA_nahIM_hogA))
 (assert (impr_request  imper m_h2))
 )

;Added by Mahalaxmi (23-09-09)
;He is not related to me.
 (defrule verbal_adjective_breaking_tam
 (declare (salience 1600))
 (id-word ?id ?word)
 (pada_info (group_head_id ?id)(group_cat VP)(preceeding_part_of_verb ?vib)(number ?num)(gender ?gen)(person ?per))
 (root-verbchunk-tam-chunkids ?rt ?vrb_chnk ?suf $?ids ?id)
 ?f0<-(id-HM-source ?id ?hnd_mng ?)
 (test (neq (gdbm_lookup "verbal_adj.gdbm" ?hnd_mng) "FALSE"))
 (test (neq (gdbm_lookup "verbal_adj_tams.gdbm" ?suf) "FALSE"))
 =>
   (retract ?f0)

     (bind ?str1 (gdbm_lookup "verbal_adj_tams.gdbm" ?suf))
     (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hnd_mng")" crlf)
     (printout ?*A_fp5* "(id-Apertium_input " (nth$ (length $?ids) $?ids) " ^"?str1"<cat:v><gen:"?gen"><num:"?num"><per:"?per"><tam:"?str1">$)" crlf)
     (printout ?*aper_debug-file* "(id-Rule_name  "?id "  verbal_adjective1 )" crlf)
     (printout ?*aper_debug-file* "(id-Rule_name  "(nth$ (length $?ids) $?ids) "  verbal_adjective1 )" crlf)
     (assert (mng_has_been_decided (nth$ (length $?ids) $?ids)))
     (loop-for-count (?i 1 (- (length $?ids) 1)) 
                     (bind ?j (nth$ ?i $?ids))
                     (assert (mng_has_been_decided ?j))
                     (printout ?*A_fp5* "(id-Apertium_input " ?j "  )" crlf)
       )
    )


;------------------------------------------- default format for hindi mng "-" -------------------------------------------

 (defrule default_id
 (declare (salience 1500))
 ?f0<-(id-HM-source ?id - ?)
 (not (mng_has_been_decided ?id))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input " ?id "  )" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  default_id )" crlf)
 )

 ;--------------------------------------- complete sent mng ----------------------------------------------------------
 
 (defrule complete_sen_mng_rule1
 (declare (salience 1010))
 ?f0<-(id-HM-source ?id ?hmng Complete_sen_gdbm)
 =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input " ?id "  " ?hmng")" crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  " ?id "  complete_sen_mng_rule1 )" crlf)
 )

 ;---------------------------------------------- Compound_Phrase mng with vib ------------------------------------------

 ;The blacksmith made an assay of iron ore .  
 (defrule Compound_mng_with_vib_kA
 (declare (salience 1005))
 ?f0<-(id-HM-source ?id ?hmng Compound_Phrase_gdbm)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids) (vibakthi kA)(number ?num)(case ?case)(gender ?gen))
 (test (member$ ?id $?ids))
 (hindi_id_order  $?start $?ids ?foll_pada_id $?)
 (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(person ?per1)(group_ids $?f_ids))
 (or (viSeRya-RaRTI_viSeRaNa ? ?)(viSeRya-of_saMbanXI ? ?id))
 (test (member$ ?foll_pada_id $?f_ids))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  " ?id " Compound_mng_with_vib_kA )" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------------
 ;Each one of them recorded the narratives from twenty participants .
 (defrule Compound_mng_with_vib
 (declare (salience 1004))
 ?f0<-(id-HM-source ?id ?hmng Compound_Phrase_gdbm)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids) (vibakthi ?vib)(number ?num)(case ?case)(gender ?gen))
 (test (member$ ?id $?ids))
 (test(neq ?vib 0))
 =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?id " ^"?hmng "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?vib "<cat:prsg>$)"  crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  " ?id " Compound_mng_with_vib )" crlf)
 )

;--------------------------------------- wsd word meanings -----------------------------------------------------------
;Added by Mahalaxmi (16-09-09)
;Does this shirt match these trousers ? (TROUSERS)
 (defrule wsd_word_mng_rule_with_vib
 (declare (salience 1001))
 (id-wsd_word_mng ?id  ?hmng)
 ?f0<-(id-HM-source ?id ? ?source)
 (pada_info (group_head_id ?id)(vibakthi ?vib))
 (test (neq ?source Compound_Phrase_gdbm))
 (test (and (neq ?vib 0) (neq ?vib -)))
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hmng"_"?vib ")" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  wsd_word_mng_rule_with_vib )" crlf)
 )

 ;There was a marked difference in the prices of dishes .
 (defrule wsd_word_mng_rule
 (declare (salience 1000))
 (id-wsd_word_mng ?id  ?hmng)
 ?f0<-(id-HM-source ?id ? ?source)
 (test (neq ?source Compound_Phrase_gdbm))
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hmng ")" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  wsd_word_mng_rule )" crlf)
 )

 ;-------------------------------------- idiom word meaning -----------------------------------------------------------
 
 ; Passion is a must to reach your potential. 
 (defrule idiom_word_mng_rule
 (declare (salience 1000))
 (id-idiom_word_mng ?id ?hmng)
 ?f0<-(id-HM-source ?id ? ?source)
 (test (neq ?source Compound_Phrase_gdbm))
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input " ?id " "?hmng ")" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  idiom_word_mng_rule )" crlf)
 )

;------------------------------------------ verbel-noun without vib ------------------------------------------------------

 ; Running is good for health.
 (defrule verbal_noun_pp_rule_without_vib
 (declare (salience 910))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi 0))
 (or (make_verbal_noun ?pada_id) (id_cat_coarse ?pada_id verbal_noun ?pada_id) (id_cat_coarse ?pada_id ))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:d>$)" crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id"  verbal_noun_pp_rule_without_vib )" crlf)
 )

 ;------------------------------------------ verbel-noun with vib ------------------------------------------------------

 ; He made a mistake in the inviting of John. 
 ;The game of life is played for winning .
 
 (defrule verbal_noun_pp_rule_with_vib
 (declare (salience 905))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi ?vib))
 (or (make_verbal_noun ?pada_id)(id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (test (neq ?vib 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$ ^" ?vib "<cat:prsg>$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  verbal_noun_pp_rule_with_vib  )"crlf)
 )


 ;Added by Shirisha Manju (10-11-09)   Ex: He was awakened at dawn by the sound of crying .
 ;                                         She awakened to the sound of birds' singing . 
 (defrule verbal_noun_pp_rule_with_vib_kA
 (declare (salience 906))
 (pada_info (group_head_id ?pada_id)(group_cat PP)(vibakthi kA)(group_ids $?ids))
 (or (make_verbal_noun ?pada_id)(id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (hindi_id_order  $?start $?ids ?foll_pada_id $?)
 (pada_info (group_head_id ?foll_id)(group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
 (test (member$ ?foll_pada_id $?f_ids))
 =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$ ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num1">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  verbal_noun_pp_rule_with_vib_kA  )"crlf)
 )

  
;------------------------------------------ verbel-noun with tam ------------------------------------------------------
 ;He wasted his golden opportunity to play in the national team
 
 (defrule verbal_noun_infinitive_rule_with_kA
 (declare (salience 900))
 (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam kA)(group_ids $?ids))
 (or (id-cat_coarse ?pada_id verbal_noun) (make_verbal_noun ?pada_id))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (hindi_id_order  $?start $?ids ?foll_pada_id $?)
 (pada_info (group_head_id ?foll_id)(group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
 (id-HM-source ?foll_id ?hmng1 ?)
 (test (member$ ?foll_pada_id $?f_ids)) 
  =>
        (retract ?f0)
 	(if (eq ?gtype VP) then
		(bind ?gen (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng1)) ;I expect to go to the party tomorrow .
	        (if (neq ?gen "FALSE") then		
			(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$  ^kA<cat:sh><case:d><gen:"?gen"><num:"?num1">$)"  crlf)
		)
	else 
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$  ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num1">$)"  crlf)
	)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  verbal_noun_infinitive_rule_with_kA )"  crlf)
  )

 ; A fat ugly boy had to eat too many fruits to lose his weight. 
 (defrule verbal_noun_infinitive_rule_with_tam
 (declare (salience 900))
 (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam ?vib))
 (or (make_verbal_noun ?pada_id) (id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (test (and (neq ?vib 0)(neq ?vib -)));added vib neq - case (15/09/09)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:o>$  ^" ?vib "<cat:prsg>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  verbal_noun_infinitive_rule_with_tam )"  crlf)
  )

 ;------------------------------------------ verbel-noun without tam ------------------------------------------------------

 ; The wheels of the car began to turn . I want to go there .
 (defrule verbal_noun_infinitive_rule_without_tam
 (declare (salience 910))
 (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam ?vib))
 (or (make_verbal_noun ?pada_id)(id-cat_coarse ?pada_id verbal_noun))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 (test (or (eq ?vib 0)(eq ?vib -)))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?hmng"<cat:vn><case:d>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  verbal_noun_infinitive_rule_without_tam )"  crlf)
  )
;----------------------------------NP rule for vibakthi not equal to nil (not head_id)------------------------------
  ; He saw the broken window 
  (defrule PP_rule_with_vib_for_vb
  (declare (salience 110))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi ?vib)(person ?person)(group_ids $?ids)(H_tam ?tam))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (and (neq ?tam 0)(neq ?vib 0)))
  =>
   	(bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
   	(if (eq ?a "T") then
     	 (retract ?f0)
	 (printout ?*A_fp5* "(id-Apertium_input "?id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
         (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_vib_for_vb )" crlf)
   	)
  )
;--------------------------------------------------------------------------------------------------------------------------
 ;He marked these bottles .
 (defrule PP_rule_with_vib_for_these
 (declare (salience 110))
 ?f0<-(id-original_word ?id  these|These|Those|those)
 ?f1<-(id-HM-source ?id ?h_word ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
 (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (neq ?vib 0))
 =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word"<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?per">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_vib_for_those )"  crlf)
 )
 ;---------------------------------------------------------------------------------------------------------------------------
 ; There was not enough food to eat anywhere in that country
 ;We wish to invite participants from all across the world to participate through this site
 (defrule PP_rule_with_vib_for_that
 (declare (salience 110))
 ?f0<-(id-original_word ?id  that|That|this|This)
 ?f1<-(id-HM-source ?id ?h_word ?)
 (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
 (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (neq ?vib 0))
 =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?id " ^"?h_word"<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?per">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_with_vib_for_that )"  crlf)
 )

 ;---------------------------------------------------------------------------------------------------------------------------
  ; He ladles it with a large wooden spoon . The army studied the stills from the security video .
  ; I bought a golden bangle for my mother . (08-12-09)
  ;(kA at the end of hindi meaning)
  (defrule PP_rule_with_kA_at_the_end_in_hmng
  (declare (salience 100))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(group_ids $?ids))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
    	(if (neq (str-index "_" ?h_word) FALSE) then
        	(bind ?len (length ?h_word))
        	(bind ?index (str-index "_" ?h_word))
        	(bind ?str (sub-string 1 (- ?index 1) ?h_word))
        	(bind ?str1 (sub-string (+ ?index 1) ?len ?h_word))
        	(if (eq ?str1 "kA") then 
            		(retract ?f0)
	            	(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?str "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
        	    	(printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_kA_at_the_end_in_hmng)" crlf)
        	else
			(retract ?f0) 
             		(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
		        (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_kA_at_the_end_in_hmng )" crlf)
        	)	
   	 )
 )
;---------------------------------------------------------------------------------------------------------------------------
  (defrule PP_rule_with_vib_default
  (declare (salience 90))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(group_ids $?ids))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (id-cat_coarse ?id ?cat)
  (test (neq ?vib 0))
  =>
 	(if (eq ?cat noun) then
	    (retract ?f0)
            (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)           	 (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_vib_default )" crlf)
	else
 	    (retract ?f0)
            (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)             (printout ?*aper_debug-file* "(id-Rule_name  " ?id "  PP_rule_with_vib_default )" crlf)
        )
  ) 
;----------------------------------NP rule for vibakthi not equal to nil (head id)------------------------------
  ; All his books are good. 
  ; He wasted his golden opportunity to play in the national team .
  (defrule PP_rule_with_vib_for_his
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  (id-original_word ?pada_id  His|his)
  ?f0<-(id-HM-source ?pada_id ?hmng ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(person ?per1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
   	(retract ?f0)
   	(printout ?*A_fp5*  "(id-Apertium_input "?pada_id" ^vaha<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per ">$)" crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  " ?pada_id "  PP_rule_with_vib_for_his )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;She called her . Her name is Sita.
  ;She is having her children cook dinner for her .
  (defrule PP_rule_with_vib_for_Hid_her
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f0<-(id-original_word ?pada_id  her|Her)
  ?f1<-(id-HM-source ?pada_id ?hmng ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(person ?per1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
   	(retract ?f1)
	(if (eq ?vib kA) then
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:"?per">$)"  crlf)
	else
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:"?num"><per:"?per">$)" crlf)
        )
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_her )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;  Mother likes her (her with no following id)
  (defrule PP_rule_with_vib_for_Hid_her1
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi ?vib)(person ?per)(case ?case))
  ?f0<-(id-original_word ?pada_id  her|Her)
  ?f1<-(id-HM-source ?pada_id ?hmng ?)
  (test (neq ?vib 0))
  =>
   	(retract ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:"?case"><parsarg:"?vib"><gen:"?gen"><num:"?num"><per:"?per">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_her1 )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;I have three dogs . I asked him a question .
  (defrule PP_rule_with_vib_for_I
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  I|i)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
   	(retract ?f0)
       	(if (eq ?vib kA) then 
       		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:s><per:"?per ">$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_I )" crlf)
       	else
        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:"?vib "><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
            	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_I )" crlf)
       	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; He bought the published books for his library . What did he eat ?He had social prestige .
  (defrule PP_rule_with_vib_for_He
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  He|he)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  =>
       	(retract ?f0)
       (if (eq ?vib kA) then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:s><per:"?per ">$)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_He )" crlf)
        else

        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:"?vib "><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_He )" crlf))
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Be careful , she said . She carefully prepared the dinner.She had social prestige .
  (defrule PP_rule_with_vib_for_She
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  She|she)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
        (retract ?f0)
         (if (eq ?vib kA) then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:s><per:"?per ">$)"  crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_She )" crlf)
        else
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:"?vib "><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_She )" crlf))
  )

;---------------------------------------------------------------------------------------------------------------------------
  ;They may have eaten fruits. They would have to eat.
  (defrule PP_rule_with_vib_and_for_Hid_They
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  (id-original_word ?pada_id  they|They|their|Their)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?H_vib 0)(neq ?gtype English_PP)))
  =>
    	(retract ?f0)
    	(if (eq ?H_vib kA) then 
        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><parsarg:"?H_vib "><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:p><per:"?per">$)"  crlf)
        	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_and_for_Hid_They )" crlf)
    	else
       		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:"?H_vib "><gen:"?gen"><num:p><per:"?per ">$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_and_for_Hid_They )" crlf)
    	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;He told them about the accident immediately 
  (defrule PP_rule_with_vib_for_Hid_them
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per))
  ?f1<-(id-original_word ?pada_id  Them|them)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?vib 0))
  =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^vaha<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:p><per:"?per">$)" crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_them )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; God helps those who help themselves .
  (defrule PP_rule_with_vib_for_Hid_those
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?pada_id  Those|those)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?vib 0)(neq ?gtype English_PP)))
  =>
        (retract ?f0 ?f1)
	(if (eq ?vib kA) then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><parsarg:"?vib "><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:p><per:"?per">$)"  crlf)
        else	(if (eq ?vib kI) then
		  (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:0><gen:"?gen"><num:p><per:"?per">$  ^" ?vib "<cat:prsg>$)"  crlf)
	else
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^vaha<cat:p><case:o><parsarg:"?vib "><gen:"?gen"><num:p><per:"?per ">$)"  crlf)
        )
	)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_those )" crlf)
  )

;---------------------------------------------------------------------------------------------------------------------------
  ;Do you think we should go to the party.  We had five field-workers
  (defrule PP_rule_with_vib_for_Hid_we
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?pada_id  We|we)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
   	(retract ?f0 ?f1)
        (if (eq ?vib kA) then
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:p><per:u>$)" crlf)
 	else
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^mEM<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:p><per:"?per">$)" crlf)
	)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_we )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;This has no meaning .
  (defrule PP_rule_with_vib_for_Hid_that
  (declare (salience 940))
  ?f1<-(id-HM-source ?pada_id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f0<-(id-original_word ?pada_id  that|That|this|This)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?vib 0)(neq ?gtype English_PP)))
 =>
   	(retract ?f0 ?f1)
   	(if (eq ?vib kA) then
       		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^yaha<cat:p><parsarg:kA><fnum:"?num1"><case:"?case1"><gen:"?gen"><num:"?num"><per:"?per">$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_that )"crlf)      
   	else
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word"<cat:p><case:"?case"><parsarg:"?vib "><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_that )"crlf)
   	)
 )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; We had wasted our journey.
  (defrule PP_rule_with_vib_for_Hid_our
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(group_ids $?ids))
  ?f0<-(id-original_word ?pada_id  our|Our)
  ?f1<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat ?gtype)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?vib 0)(neq ?gtype English_PP)))
  =>
   	(retract ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:p><per:u>$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_our )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  (defrule PP_rule_with_vib_and_for_us
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(case ?case)(gender ?gen)(vibakthi ?H_vib))
  (id-original_word ?pada_id  us|Us)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?H_vib 0))
  =>
    	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><case:o><parsarg:"?H_vib"><gen:"?gen"><num:p><per:u>$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_and_for_us )" crlf)   
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; Please do accept the same and bless it for its speedy progress
  ; Discuss it among yourselves first .
  (defrule PP_rule_with_vib_for_Hid_it
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  (id-original_word ?pada_id  Its|its|It|it)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $? $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_cat ?gtype)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
   (test (and (neq ?H_vib 0)(neq ?gtype English_PP)))
  =>
	(if (eq ?case1 0) then (bind ?case1 d))
    	(retract ?f0)
    	(if (eq ?H_vib kA) then
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:d><gen:"?gen1"><num:"?num"><per:"?per">$)" crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_it )" crlf)
    	else 
	        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:"?H_vib"><gen:"?gen"><num:"?num"><per:"?per ">$)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_it )" crlf)
    	)
 )
;---------------------------------------------------------------------------------------------------------------------------
  ; I went there with my mother .
  (defrule PP_rule_with_vib_and_for_my
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  (id-original_word ?pada_id  my|My)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $? $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_cat ?gtype)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
   (test (and (neq ?H_vib 0)(neq ?gtype English_PP)))
  =>
    	(retract ?f0)
  	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><parsarg:"?H_vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><num:"?num"><per:u>$)"  crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_and_for_my )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; She rose from the table to welcome me.
  (defrule PP_rule_with_vib_for_Hid_me
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  Me|me)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $? $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_cat ?gtype)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (and (neq ?vib 0)(neq ?gtype English_PP)))
  =>
   	(retract ?f0)
   	(if (eq ?vib kA) then
       		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><parsarg:"?vib"><fnum:"?num1"><case:d><gen:"?gen1"><num:"?num"><per:u>$)"  crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_me )" crlf)
	else 
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^mEM<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:"?num"><per:u>$)" crlf)
   		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_me )" crlf)
  	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Did you take your breakfast?  I will follow you no matter where you go .
  (defrule PP_rule_with_vib_for_Hid_you
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?vib)(group_ids $?ids))
  (id-original_word ?pada_id  you|You)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $? $?ids ?foll_pada_id $?)
  (pada_info(number ?num1)(case ?case1)(gender ?gen1)(group_cat ?gtype)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
    	(retract ?f0)
	(if (eq ?vib kA) then 
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^Apa<cat:p><parsarg:"?vib"><fnum:"?num1"><case:d><gen:"?gen1"><per:"?per"><num:"?num">$)"  crlf)
 	else
	    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id  " ^Apa<cat:p><case:o><parsarg:"?vib"><gen:"?gen"><num:"?num">$)" crlf)
	)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_you )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; Passion is a must to reach your potential. Your claims are indefensible .
  (defrule PP_rule_with_vib_for_your
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi ?vib)(person ?per)(group_ids $?ids))
  ?f0<-(id-original_word ?pada_id  Your|your)
  ?f1<-(id-HM-source ?pada_id ?h_word ?)
  (hindi_id_order  $?start $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(person ?per1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (neq ?vib 0))
  =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^Apa<cat:p><parsarg:"?vib"><fnum:"?num1"><case:"?case1"><gen:"?gen1"><per:"?per"><num:"?num">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_your )"  crlf)
 )
 ;---------------------------------------------------------------------------------------------------------------------------
  ;I asked him a question . I gave a book to him .
  (defrule PP_rule_with_vib_for_Hid_him_0_pp
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  (id-original_word ?pada_id  him|Him)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?H_vib 0))
  =>
    	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id  " ^vaha<cat:p><case:o><parsarg:"?H_vib"><gen:"?gen"><num:"?num"><per:"?per">$)" crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_him_0_pp )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  
  ;  The dogs who I chased were black
  (defrule PP_rule_with_vib_for_Hid_pronoun_kA
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi kA)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_word&wuma|kOna|jo|koI ?)
  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><parsarg:kA><fnum:"?num1"><case:d><gen:"?gen1"><num:"?num"><per:"?per ">$)"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_pronoun_kA )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; Who translated the sentence for the student ?
  (defrule PP_rule_with_vib_for_Hid_pronoun
  (declare (salience 935))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?per)(vibakthi ?H_vib)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_word&wuma|kOna|jo|koI ?)
  (test (neq ?H_vib 0))
  =>
    	(retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:"?H_vib "><gen:"?gen"><num:s><per:"?per ">$)"  crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_for_Hid_pronoun )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; We wish to invite participants from all across the world to participate in this Yagna through this site
  ; participants - BAga_lene_vAlA 
  (defrule PP_rule_with_vib_Hid_for_vAlA
  (declare (salience 11))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?H_vib)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_mng ?)
  (test (neq ?H_vib 0))
  =>
    	(if (neq (str-index "_" ?h_mng) FALSE) then
        	(bind ?len 0)
        	(bind ?str1 ?h_mng)
        	(bind ?str_len (length ?h_mng))
        	(while (neq (str-index "_" ?h_mng) FALSE)
               		(bind ?index (str-index "_" ?h_mng))
               		(bind ?h_mng (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
               		(bind ?len (+ ?index ?len))
        	)	
         	(if (eq ?h_mng "vAlA") then
             		(retract ?f0)
             		(bind ?str2 (sub-string 1 (- ?len 1) ?str1))
             		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?str2"<cat:prsg>$ ^" ?h_mng"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?H_vib "<cat:prsg>$)" crlf)
             		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_Hid_for_vAlA )" crlf)
        	)
   	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;We seek your blessings.   They were discussing their hopes and dreams .
  ;Do not neglect your duties .
  (defrule PP_rule_with_kA_vib_Hid_for_VP
  (declare (salience 930))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi kA)(group_ids $?ids))
  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
  (pada_info (group_head_id ?v_id)(group_cat VP)(group_ids $?f_ids))
  (id-number-src ?v_id ?num1 ?num_src)
  (test (member$ ?foll_pada_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  ?f2<-(id-HM-source ?v_id ?hmng ?)
  =>
    	(bind ?gen1 (gdbm_lookup "kriyA_mUla-gender.gdbm" ?hmng))
    	(if (neq ?gen1 "FALSE") then
    		(retract ?f0)
        	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:d><gen:"?gen1"><num:"?num1">$)" crlf)
       		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_kA_vib_Hid_for_VP )" crlf)
    	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;These are children 's books .
  (defrule pp_rule_with_vib_Hid_vib_kA_prp_0
  (declare (salience 20))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(preposition 0)(vibakthi kA)(group_ids $?ids))
  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$ ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  pp_rule_with_vib_Hid_for_kA_prp_0 )" crlf)
 )
;---------------------------------------------------------------------------------------------------------------------------
   ;Mohan fell from the top of the house.  What is the purpose of Dharma?
  (defrule PP_rule_with_vib_Hid_vib_kA_prp
  (declare (salience 10))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi kA)(group_ids $?ids))
  ?f1<-(hindi_id_order $? $?ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
   	(retract ?f0)
     	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
     	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_Hid_vib_kA_prp )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; I heard the sound of rain on the roof .
  (defrule PP_rule_with_vib_Hid_default
  (declare (salience 9))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi ?H_vib)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (test (neq ?H_vib 0))
  =>
       (retract ?f0)
       (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$  ^" ?H_vib "<cat:prsg>$)"  crlf)
       (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_with_vib_Hid_default ) " crlf)
  )

;----------------------------------NP rule for vibakthi equal to nil (not head_id)------------------------------

  ;  Broken windows need to be replaced. The painted doors look great .
  (defrule PP_rule_without_vib_for_vb
  (declare (salience 90))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(vibakthi 0)(person ?person)(group_ids $?ids)(H_tam ?tam))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  (test (neq ?tam 0))
  =>
   	(bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
   	(if (eq ?a "T") then
     		(retract ?f0)
     		(printout ?*A_fp5* "(id-Apertium_input "?id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
      		(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_vb )" crlf)
   	)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; He and I are friends
  (defrule PP_rule_without_vib_for_he
  (declare (salience 90))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(vibakthi 0)(group_ids $?ids))
  ?f1<-(id-original_word ?id He|he)
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?id" ^vaha<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:a>$)" crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_he )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Can you tell us where those strange ideas came from ?
  (defrule PP_rule_without_vib_for_those
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (case ?case)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?id Those|those)
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  ?f0<-(id-HM-source ?id ?h_word ?)
  =>
        (retract ?f0 ?f1)
        (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word"<cat:p><case:"?case"><gen:"?gen"><num:p><per:"?per"><tam:0>$)" crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_those )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;All these fruits are to be eaten .
  (defrule PP_rule_without_vib_for_these
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (case ?case)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?id These|these|Those|those)
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  ?f0<-(id-HM-source ?id ?h_word ?)
  =>
        (retract ?f0 ?f1)
        (printout ?*A_fp5* "(id-Apertium_input "?id" ^yaha<cat:p><case:"?case"><gen:"?gen"><num:p><per:"?per"><tam:0>$)"crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_these )" crlf)
  )

;---------------------------------------------------------------------------------------------------------------------------
  ;The legal authority will discuss this issue  
  (defrule PP_rule_without_vib_for_that
  (declare (salience 90))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?id That|that)
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
   	(retract ?f0)
   	(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word"<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?per">$)" crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_that )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ;The party that night was a big success
  (defrule PP_rule_without_vib_for_that_and_last
  (declare (salience 91))
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?id ?word&:That|that|last|Last)
  (kriyA-kAlavAcI  ?kriyA ?pada_id)
  (or (viSeRya-det_viSeRaNa  ?pada_id ?det)(viSeRya-viSeRaNa ?pada_id ?det))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
        (retract ?f0)
        (if (eq ?word that ) then
   	(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:p><case:o><parsarg:0><gen:"?gen"><num:"?num"><per:"?per">$)" crlf)
        else
         (printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:o><gen:"?gen"><num:"?num">$)" crlf)
        )
    	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib_for_that1 )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; Sita is a good girl.
  (defrule PP_rule_without_vib
  ?f0<-(id-HM-source ?id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi 0)(person ?person)(group_ids $?ids))
  (test (and (member$ ?id $?ids)(neq ?id ?pada_id)))
  =>
  	(retract ?f0)
   	(printout ?*A_fp5* "(id-Apertium_input "?id" ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?id "  PP_rule_without_vib )" crlf)
  )

;----------------------------------NP rule for vibakthi equal to nil (head_id)--------------------------------------------
  ;I saw him telling her about the party . 
  (defrule PP_rule_for_we_hue
  (declare (salience 960))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(gender ?gen)(person ?person)(H_tam we_hue))
  ?f0<-(id-HM-source ?pada_id ?hmng ?)
  (id-cat_coarse ?pada_id adverb)
  (kriyA-kqxanwa_viSeRaNa  ? ?pada_id)
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng ",tam:adv_we_hue,gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  we_hue_rule )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  (defrule PP_rule_without_vib_for_Hid_vb
  (declare (salience 90))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi 0)(person ?person)(H_tam ?tam))
  (test (neq ?tam 0))
  =>
        (bind ?a (gdbm_lookup "hindi_cat.gdbm" ?h_word))
        (if (eq ?a "T") then
                (retract ?f0)
                (printout ?*A_fp5* "(id-Apertium_input "?pada_id" root:"?h_word ",tam:"?tam",gen:"?gen",num:"?num ",per:"?person")" crlf)
                (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_vb )" crlf)
        )
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;You are going
  (defrule PP_rule_without_vib_for_Hid_you
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(gender ?gen)(vibakthi 0))
  (id-original_word ?pada_id  you|You)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
    	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id  " ^Apa<cat:p><case:o><parsarg:0><gen:"?gen"><num:"?num">$)" crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_you )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; These are children 's books .
  (defrule PP_rule_without_vib_for_Hid_these
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (case ?case)(gender ?gen)(vibakthi 0)(person ?per)(group_ids $?ids))
  ?f1<-(id-original_word ?pada_id  These|these)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
   	(retract ?f0 ?f1)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id" ^yaha<cat:p><case:"?case"><gen:"?gen"><num:p><per:"?per"><tam:0>$)" crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_these )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; I will give up smoking.
  (defrule PP_rule_without_vib_for_Hid_I
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0)(group_ids $?ids))
  (id-original_word ?pada_id  I|i)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
   	(retract ?f0)
      	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:o><parsarg:0><gen:"?gen"><num:s><per:"?person ">$)"  crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_I )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;;;Do they eat? They are good boys .
  (defrule PP_rule_without_vib_for_Hid_they
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  (id-original_word ?pada_id  They|they)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
    	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:d><gen:"?gen"><num:p><per:"?person"><tam:0>$)" crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_they )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;He has been frequently coming.
  (defrule PP_rule_without_vib_for_Hid_He
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  (id-original_word ?pada_id  He|he)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
   	(retract ?f0)
   	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?person ">$)"  crlf)
   	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_He )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;She is sleeping.
  (defrule PP_rule_without_vib_for_Hid_she
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(person ?per)(vibakthi 0))
  (id-original_word ?pada_id  She|she)
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  =>
    	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:f><num:"?num"><per:"?per ">$)"  crlf)
 	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_she )" crlf)
 )
;---------------------------------------------------------------------------------------------------------------------------
  ; I will not do it . 
  (defrule PP_rule_without_vib_for_Hid_it
  (declare (salience 100))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  (id-original_word ?pada_id  It|it)
  ?f0<-(id-HM-source ?pada_id ?h_word ?) 
  =>
	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?person ">$)"  crlf)
    	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_it )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; Who's afraid of the big bad wolf.
  (defrule PP_rule_without_vib_for_Hid_pronoun
  (declare (salience 80))
  (pada_info (group_head_id ?pada_id)(group_cat PP)(number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  ?f0<-(id-HM-source ?pada_id ?h_word&wuma|kOna|jo ?)
  =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:p><case:"?case"><parsarg:0><gen:"?gen"><num:"?num"><per:"?person ">$)"  crlf)
 	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid_pronoun )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ;The participants were also asked to write down the story at the end of the session
  (defrule PP_rule_without_vib_Hid_for_vAlA
  (declare (salience 50))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(vibakthi 0)(group_ids $?ids))
  ?f0<-(id-HM-source ?pada_id ?h_mng ?)
  =>
        (if (neq (str-index "_" ?h_mng) FALSE) then
                (bind ?len 0)
                (bind ?str1 ?h_mng)
                (bind ?str_len (length ?h_mng))
                (while (neq (str-index "_" ?h_mng) FALSE)
                        (bind ?index (str-index "_" ?h_mng))
                        (bind ?h_mng (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
                        (bind ?len (+ ?index ?len))
                )
                (if (eq ?h_mng "vAlA") then
                        (retract ?f0)
                        (bind ?str2 (sub-string 1 (- ?len 1) ?str1))
                        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?str2"<cat:prsg>$ ^" ?h_mng"<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
                        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_Hid_for_vAlA )" crlf)
                )
        )
  )
  ;--------------------------------------------------------------------------------------------------------------------------
  ;This is the way to go .
  (defrule PP_rule_without_vib_for_Hid
  (declare (salience 40))
  (pada_info (group_head_id ?pada_id)(group_cat PP) (number ?num)(case ?case)(gender ?gen)(person ?person)(vibakthi 0))
  ?f0<-(id-HM-source ?pada_id ?h_word ?)
  (id-cat_coarse ?pada_id ?cat)
  =>
	(retract ?f0)
   	(if (eq ?cat adjective) then
      		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:adj><case:"?case"><gen:"?gen"><num:"?num">$)" crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid )" crlf)
   	else
      		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " ^"?h_word "<cat:n><case:"?case"><gen:"?gen"><num:"?num">$)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  PP_rule_without_vib_for_Hid )" crlf)

   	)
 )
;-------------------------------------- VP rule for root and tam --------------------------------------------------------
  (defrule VP_rule_for_jA
  (declare (salience 950))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?per)(H_tam ?H_tam)(preceeding_part_of_verb ?vib))
  (yA-tam  ?H_tam)
  ?f0<-(id-HM-source ?pada_id jA ?)
  (test (neq ?vib 0))
  =>
	(retract ?f0)
	(bind ?index (str-index "_" ?H_tam))
	(bind ?str (sub-string (+ ?index 1) 1000 ?H_tam))
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?vib"_jA,tam:yA1_"?str",gen:"?gen",num:"?num ",per:"?per")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_jA )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;I went there with my mother . Having finished the book, she went to school.
  (defrule VP_rule_for_jA1
  (declare (salience 950))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?per)(H_tam ?H_tam))
  (yA-tam  ?H_tam)
  ?f0<-(id-HM-source ?pada_id jA ?)
  =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:jA,tam:yA1,gen:"?gen",num:"?num ",per:"?per")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_jA1 )" crlf)
  )
 ;---------------------------------------------------------------------------------------------------------------------------
  ; The answer is no because the direction could be changing
  ; He left in the morning . The boy saw an elephant in the forest .
  (defrule VP_rule_for_jA_and_yA-tam
  (declare (salience 940))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?per)(H_tam ?H_tam))
  (yA-tam  ?H_tam)
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  =>
        (if (neq (str-index "_" ?g_head) FALSE) then
                (bind ?index (str-index "_" ?g_head))
                (bind ?str (sub-string (+ ?index 1) 1000 ?g_head))
                (bind ?str1 (sub-string 1 ?index ?g_head))
                (if (eq ?str "jA") then
                	(retract ?f0)
                        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?str1"jA,tam:yA1,gen:"?gen",num:"?num ",per:"?per")"  crlf)
                        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_yA-tam )" crlf)
                )
	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Be careful, she said.
  (defrule VP_rule_for_imper
  (declare (salience 925))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(H_tam imper)(preceeding_part_of_verb 0))
  (impr_request imper ?req)
  ?f0<-(id-HM-source ?pada_id ?hmng ?)
  =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:imper,gen:"?gen",num:"?num ",per:"?req")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_imper )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;Do not try too hard too soon. Do not waste electricity.
  (defrule VP_rule_for_imper_not
  (declare (salience 920))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(H_tam imper)(preceeding_part_of_verb ?vib))
  (impr_request imper ?req)
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  (test (neq ?vib 0))
  =>
	(if (neq (str-index "_" ?g_head) FALSE) then
		(bind ?len 0)
		(bind ?str1 ?g_head)
		(bind ?str_len (length ?g_head))
		(while (neq (str-index "_" ?g_head) FALSE)
			(bind ?index (str-index "_" ?g_head))
			(bind ?g_head (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
		        (bind ?len (+ ?index ?len))
		)
		(bind ?str4(sub-string 1 ?len ?str1))
		(bind ?str5 (str-cat ?str4 ?vib (sub-string ?len ?str_len ?str1)))
		(printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?str5",tam:imper,gen:"?gen",num:"?num ",per:"?req")"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_imper_not )" crlf)
	else
		(printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?vib"_"?g_head",tam:imper,gen:"?gen",num:"?num ",per:"?req")"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_imper_not )" crlf))
		(retract ?f0)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;We will have the party in the garden if the weather is good . 
  (defrule VP_rule_hE_and_gA
  (declare (salience 911))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?person)(H_tam gA))
  ?f0<-(id-HM-source ?pada_id hE ?)
  =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:ho" ",tam:gA,gen:"?gen",num:"?num ",per:"?person")"  crlf)
 	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_hE_and_gA )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
 ;  I have three brothers .
  (defrule VP_rule_hE
  (declare (salience 910))
  ?f0<-(id-HM-source ?pada_id hE ?)
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(preceeding_part_of_verb 0))
  =>
	(retract ?f0)
	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:hE,tam:hE,gen:"?gen",num:"?num ",per:"?person")"  crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_hE )" crlf)
  )
;--------------------------------------------------------------------------------------------------------------------------
 ;Added by Mahalaxmi. suggested by sriram(27-10-09)
 ;She had social prestige .
  (defrule VP_rule_WA
  (declare (salience 910))
  ?f0<-(id-HM-source ?pada_id WA ?)
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(preceeding_part_of_verb 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:WA,tam:WA,gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_WA )" crlf)
  )

 ;---------------------------------------------------------------------------------------------------------------------------
  ;I do not have very much money .
  (defrule VP_rule_hE_and_pre_vb
  (declare (salience 910))
  ?f0<-(id-HM-source ?pada_id hE ?)
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(preceeding_part_of_verb ?vb))
  (test (neq ?vb 0))
  =>
        (retract ?f0)
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?vb"_hE,tam:hE,gen:"?gen",num:"?num ",per:"?person")"  crlf)
        (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_hE_and_pre_vb )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;This is the way to go .
  ;He was to become the president of India .
  (defrule VP_rule_ne_kA_or_ne_se
  (declare (salience 910))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(H_tam ?H_tam))
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  (hindi_id_order  $?start $?pada_ids ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  (test (or (eq ?H_tam ne_kA)(eq ?H_tam ne_se)(eq ?H_tam ne_vAlA_WA)))
  =>
	(retract ?f0)
	(bind ?len (length ?H_tam))
	(bind ?index (str-index "_" ?H_tam))
	(bind ?str (sub-string 1 (- ?index 1) ?H_tam))
	(bind ?str1 (sub-string (+ ?index 1) ?len ?H_tam))
        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?g_head",tam:"?str",gen:"?gen",num:"?num ",per:"?person"  ^"?str1"<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)" crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_ne_kA_or_ne_se )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ; This job will not take much effort . I do not go out as much now .
  (defrule VP_rule_for_before_verb
  (declare (salience 910))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(gender ?gen)(person ?person)(H_tam ?H_tam)(preceeding_part_of_verb ?vb))
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  (test (and (neq ?vb 0)(neq ?H_tam 0)))
  =>
	(if (neq (str-index "_" ?g_head) FALSE) then
		(bind ?len 0)
		(bind ?str1 ?g_head)
		(bind ?str_len (length ?g_head))
		(while (neq (str-index "_" ?g_head) FALSE)
			(bind ?index (str-index "_" ?g_head))
		        (bind ?g_head (sub-string (+ ?index (+ ?len 1)) ?str_len ?str1) )
		        (bind ?len (+ ?index ?len))
		)
		(bind ?str4 (sub-string 1 ?len ?str1))
		(bind ?str5 (str-cat ?str4 ?vb (sub-string ?len ?str_len ?str1)))
		(printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?str5",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?person")"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_before_verb )" crlf)
	else
		(printout  ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?vb"_"?g_head",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?person")"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_before_verb )" crlf))
		(retract ?f0)
   )
;---------------------------------------------------------------------------------------------------------------------------
  ;There was a marked difference in the prices of dishes .
  ;She was afraid for her children .
  (defrule VP_rule_for_WA_f
  (declare (salience 900))
  ?f0<-(id-HM-source ?pada_id  WA ?)
  (verb_agrmt-subject_id-head_id  subject ?sub_id ?pada_id)
  (pada_info (group_head_id ?sub_id) (group_cat PP)(gender f)(number ?num))
;  (id-gender ?sub_id f)
;  (id-number ?sub_id ?num)
  =>
        (retract ?f0)
	(if (eq ?num s) then
		(printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WI)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_f )" crlf)
	else 
		(printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WIM)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_f )" crlf)
  	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;She was afraid for her children .
;  (defrule VP_rule_for_WA_she
;  (declare (salience 900))
;  ?f0<-(id-HM-source ?pada_id  WA ?)
;  (verb_agrmt-subject_id-head_id  subject ?sub_id ?pada_id)
;  (pada_info (group_head_id ?sub_id) (group_cat PP)(gender m)(number ?num))
 ; (id-original_word ?sub_id She|she)
 ; (id-number ?sub_id ?num)
;  =>
;	(retract ?f0)
;	(if (eq ?num s) then
;	      (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WI)"  crlf)
;	      (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_she )" crlf)
;	else
;	      (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WIM)"  crlf)
;	      (printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_she )" crlf)
;	)
;  )
;---------------------------------------------------------------------------------------------------------------------------
  ;How many people were there . There was a red mark on the door .
  (defrule VP_rule_for_WA_m
  (declare (salience 900))
  ?f0<-(id-HM-source ?pada_id  WA ?) 
  (verb_agrmt-subject_id-head_id  subject ?sub_id ?pada_id)
  (pada_info (group_head_id ?sub_id) (group_cat PP)(gender m)(number ?num))
 ; (or (id-gender ?sub_id m)(id-gender ?sub_id -))
 ; (id-number ?sub_id ?num)
   =>
	(retract ?f0)
	(if (eq ?num s) then
		(printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WA)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_m )" crlf)
	else    (printout ?*A_fp5* "(id-Apertium_input " ?pada_id " We)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_WA_m )" crlf)
	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  (defrule VP_rule_for_we
  (declare (salience 900))
  ?f0<-(id-HM-source ?pada_id  We ?)
  (verb_agrmt-subject_id-head_id  subject ?sub_id ?pada_id)
  (pada_info (group_head_id ?sub_id) (group_cat PP)(gender ?gen)(number ?num))
 ; (id-gender ?sub_id ?gen)
;  (test (neq ?gen -))
  =>
	(retract ?f0)
	(if (eq ?gen f) then
		(printout ?*A_fp5* "(id-Apertium_input " ?pada_id " WIM)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_We )" crlf)
	else 	(printout ?*A_fp5* "(id-Apertium_input " ?pada_id " We)"  crlf)
		(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_rule_for_We )" crlf)
	)
  )
;---------------------------------------------------------------------------------------------------------------------------
  ;The students enjoyed taking that course .
  (defrule VP_vib_rule_for_kA
  (declare (salience 910))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?per)(H_tam ?H_tam))
  (id-vibakthi ?pada_id kA)
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  ?f1<-(hindi_id_order  $?start ?pada_id ?foll_pada_id $?)
  (pada_info (group_cat PP)(number ?num1)(case ?case1)(gender ?gen1)(group_ids $?f_ids))
  (test (member$ ?foll_pada_id $?f_ids))
  => 
         (retract ?f0)
         (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?g_head ",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?per " ^kA<cat:sh><case:"?case1"><gen:"?gen1"><num:"?num1">$)"  crlf)
	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_vib_rule_for_kA )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------------------
  (defrule VP_default_rule
  (declare (salience 900))
  (pada_info (group_head_id ?pada_id)(group_cat VP)(number ?num)(case ?case)(gender ?gen)(person ?per)(H_tam ?H_tam))
  ?f0<-(id-HM-source ?pada_id ?g_head ?)
  =>
	(retract ?f0)
    	(printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?g_head ",tam:"?H_tam",gen:"?gen",num:"?num ",per:"?per")" crlf)
  	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  VP_default_rule )" crlf)
  )
;---------------------------------------------------------------------------------------------------------------
 ; The public seem to love him, no matter what he does.
 (defrule infinitive_rule
 (declare (salience 900))
 (pada_info (group_head_id ?pada_id)(group_cat infinitive)(H_tam ?H_tam))
 ?f0<-(id-HM-source ?pada_id ?hmng ?)
 =>
	(retract ?f0)
	(if (eq ?H_tam -) then ; if tam is - then assign tam as 0   Ex: Does there seem to be a dog in the park ?
		(printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:0,gen:m,num:s,per:a)"  crlf)
	else
	        (printout ?*A_fp5* "(id-Apertium_input "?pada_id " root:"?hmng",tam:"?H_tam",gen:m,num:s,per:a)"  crlf)
	)
	(printout ?*aper_debug-file* "(id-Rule_name  "?pada_id "  infinitive_rule )" crlf)
  )
;--------------------------------------------------------------------------------------------------------------
 (defrule close_aper_debug
 (declare (salience -30))
 =>
	(close ?*aper_debug-file*)
 )
;--------------------------------------------------------------------------------------------------------------

