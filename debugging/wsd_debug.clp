 
 (load* "global_path.clp") 
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "word.dat")
 (load-facts "original_word.dat")
 (load-facts "root.dat")
 (load-facts "relations.dat")
 (load-facts "lwg_info.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "meaning_has_been_decided.dat")
 (load-facts "preferred_morph.dat")
 (load-facts "link_relation_info.dat")
 (load-facts "link_name_expand.dat")
 (load-facts "debug_file.dat")
 (load-facts "hindi_meanings.dat")

 (defglobal ?*prov_dir* = ?*provisional_wsd_path*)
 (defglobal ?*debug_flag* = TRUE)
 (defglobal ?*Ex_mng*     = ex_mng)
 (defglobal ?*count* = 1)
 (defglobal ?*wsd_dir* = (create$ (str-cat ?*path* "/WSD/wsd_rules/")))
 
 (dribble-on debug_info)
 (unwatch all)
 (facts)
 (dribble-off)
 (system "clear")
 (system "zenity  --text-info  --filename=debug_info  --width=560  --height=300  &")
 (assert (question "Enter the word id ::  "))
 (assert (next_id 1))


 (defrule question
 (declare (salience 98))
 ?f<-(question ?text)
 =>
 (retract ?f)
 (format t "%s " ?text)
 (bind ?reply (read))
 (assert (get-word_id ?reply))
 )

 (defrule sentence_display
 (declare (salience 100))
 ?f<-(next_id ?id)
 (id-word ?id ?word)
 =>
 (retract ?f)
 (if (eq ?id 1) then (printout t crlf crlf))
 (if (> ?*count* 6) then
     (bind ?*count* 0)
     (printout t crlf))

 ;(format t " %s - %d |" ?word ?id)
 (printout t " "?word " - "?id" |")
 (bind ?*count* (+ ?*count* 1))
 (bind ?id (+ ?id 1))
 (assert (next_id ?id))
 )

 (defrule sentence_display1
 (declare (salience 99))
 ?f<-(next_id ?id)
  =>
 (retract ?f)
 (printout t crlf crlf))


 (defrule word_exists
 (declare (salience 90))
 ?f<-(get-word_id ?id)
 (id-word ?id ?word)
 (id-root ?id ?root)
 =>
 (retract ?f)
 (assert(get_rule_fired ?id ?word ?root)))
 
 (defrule word_exists1
 (declare (salience 80))
 ?f<-(get-word_id ?id)
 =>
 (retract ?f)
 (printout t "Given word id is not present in the sentence" crlf)
 (assert (question "Enter the correct word id::  "))
 )

 (defrule hindi_mng_src0
 (declare (salience 76))
 ?f<-(hmng_frm_wsd ?id ?word ?root)
 (dir_name-file_name-rule_name-affecting_id-affected_id-mng_to_be_overwrite ?d_n ?f_n ?r_n ?id1 ?id ?)
 (id-word ?id1 ?word1)
 (id-word ?id ?word)
 =>
 (retract ?f)
 (printout t crlf "Word  \""?word"\" is part of MWE(multi-word-expression) and the meaning is assigned to the last word of the MWE "crlf"Here it is  \""?word1"("?id1")\" " crlf crlf)
 (assert (debug_overwrite_word ?id1 ?word1))
 )

 (defrule debug_overwriter_word
 ?f<-(debug_overwrite_word ?id1 ?word1)
 =>
 (retract ?f)
 (printout t "Do you want to debug \""?word1"\" word.(y/n) " crlf)
 (bind ?reply (read))
 (if (eq ?reply y) then
     (assert (get-word_id ?id1))
 else (if (eq ?reply n) then
      (exit)
 else (printout t "Legal answers are \"(y/n)\" " crlf)
      (assert (debug_overwrite_word ?id1 ?word1)))
 )
 )

 (defrule hindi_mng_src_wsd_word
 (declare (salience 75))
 ?f<- (hmng_frm_wsd ?id ?word ?root)
 (dir_name-file_name-rule_name-id-wsd_word_mng ?d_n ?f_n ?rule_name   ?id  ?)
 (id-HM-source ?id ?h_mng ?src)
 =>
 (retract ?f)
 (printout t crlf "Meaning has been generated from "?src "(" ?d_n ") (define as word meaning)" crlf crlf)
 (printout t "File_name :: "?f_n "      Rule_name :: " ?rule_name "        Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert(get_expected_mng ?id ?word ?root))
 )


 (defrule hindi_mng_src_wsd_root
 (declare (salience 75))
 ?f<-(hmng_frm_wsd ?id ?word ?root)
 (dir_name-file_name-rule_name-id-wsd_root_mng ?d_n ?f_n ?rule_name   ?id  ?)
 (id-HM-source ?id ?h_mng ?src)
 =>
 (retract ?f)
 (printout t crlf "Meaning has been generated from "?src "(" ?d_n ") (defined as root meaning)"crlf crlf)
 (printout t "File_name :: "?f_n "      Rule_name :: " ?rule_name "        Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert(get_expected_mng ?id ?word ?root))
 )


 (defrule hindi_mng_src1
 (declare (salience 79))
 ?f<-(get_rule_fired ?id ?word ?root)
 (id-HM-source ?id ?h_mng ?src)
 =>
 (retract ?f)
 (if (eq ?src WSD) then
 (assert (hmng_frm_wsd ?id ?word ?root ))
 else (if (eq ?src Default) then
 (printout t crlf "Meaning has been generated from default database" crlf)
 (printout t "Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert(get_expected_mng ?id ?word ?root))
 else (if (eq ?src LWG) then
 (printout t crlf "This word is part of LWG (Local word grouper)" crlf)
 (exit)
 else (if (eq ?src Compound_Phrase_gdbm) then
 (printout t crlf "This word is part of \"Compound_Phrase\")" crlf)
 (printout t "Meaning :: \"" ?h_mng "\"" crlf crlf)
 else 
 (printout t crlf "Meaning has been generated from " ?src crlf))
 (printout t "Meaning :: \"" ?h_mng "\"" crlf crlf)
 (assert(get_expected_mng ?id ?word ?root)))) 
 ))


 (defrule expected_mng
 (declare (salience 70)) 
 ?f<-(get_expected_mng ?id ?word ?root)
 =>
 (retract ?f)
 (printout  t crlf "What is your expected meaning" crlf)
 (bind ?reply (read))
 (assert (expected_mng ?id ?word ?root ?reply))
 )

 (defrule expected_mng1
 (declare (salience 70))
 ?f<-(expected_mng ?id ?word ?root ?exp_mng)
 =>
 (retract ?f)
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?word".clp 1>jnk2 2>error")
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?root".clp 1>>jnk2 2>error"))
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?word".clp 1>>jnk2 2>error")
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?root".clp 1>>jnk2 2>error"))
 (open "jnk2" fp2 "r")
  (if (eq (read fp2) EOF) then
     (printout t crlf "There is no clp file defined for the word" crlf)
     (close fp2)(remove jnk1)
     (exit)
  )
 (close fp2)(remove jnk1) (remove jnk2)
 (printout  t crlf "Do you want all possible meanings of the word(y/n)" crlf)
 (bind ?reply (read))
 (if (eq ?reply y) then
      (assert (print_all_possible_meanings ?id ?word ?root ?exp_mng))
 else (if (eq ?reply n) then
      (assert (print_only_expected_meaning ?id ?word ?root ?exp_mng))
 else
      (printout t "Legal answers are (y/n)" crlf)
      (assert (expected_mng ?id ?word ?root ?exp_mng))
     )
 )
 )

 (defrule print_all_possible_meanings
 ?f<-(print_all_possible_meanings ?id ?word ?root ?exp_mng)
 =>
 (retract ?f)
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?word".clp 1>jnk 2>error")
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/"?root".clp 1>>jnk 2>error"))
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?word".clp 1>>jnk 2>error")
 (if (neq ?word ?root) then
 (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?root".clp 1>>jnk 2>error"))
 (system "grep -B2 \" " ?exp_mng"))\" jnk >jnk1")
 (open "jnk1" fp1 "r")
  (if (eq (read fp1) EOF) then
     (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
     (printout t crlf "There is no rule defined with the expected meaning" crlf crlf)
     (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
     (assert (get-path ?id ?word ?root))
  )
 (close fp1)(remove jnk1)
 (open "jnk" fp "r")
 (printout t "Rules matching the word are ::" crlf)
 (printout t "<=====================================>" crlf)
 (system "cat jnk")
 (close fp)
 (remove jnk)
 (assert (get-path ?id ?word ?root))
 ) 

 (defrule print_only_expected_meaning
 ?f<-(print_only_expected_meaning ?id ?word ?root ?exp_mng)
 =>
 (retract ?f)
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_provisional_wsd_rules/"?word".clp | grep -B2  \" " ?exp_mng"))\" >jnk 2>error" )
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_provisional_wsd_rules/"?root".clp | grep -B2 \" " ?exp_mng"))\" >>jnk 2>error")
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_test/WSD/wsd_rules/"?word".clp | grep -B2 \" " ?exp_mng"))\" >>jnk 2>error")
 (system "grep -E \"(defrule|salience|assert|;)\"  $HOME_anu_test/WSD/wsd_rules/"?root".clp | grep -B2 \" " ?exp_mng"))\" >>jnk 2>error")
   (open "jnk" fp "r")
   
    (if (eq (read fp) EOF) then
       (close fp) (remove jnk)
       (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
       (printout t crlf "There is no rule defined with the expected meaning" crlf crlf)
       (printout t "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf)
       (assert (search_for_other_meaning ?id ?word ?root ?exp_mng)) 
    else
     (close fp)
     (printout t "Rules matching Expected meaning are ::" crlf)
     (printout t "<=====================================>" crlf)
     (system "cat jnk")
     (close fp)
     (remove jnk)
     (assert (get-path ?id ?word ?root)))
)

 (defrule search_for_other_meaning
 ?f<-(search_for_other_meaning ?id ?word ?root ?exp_mng)
 =>
 (retract ?f)
   (printout t "Do you want to search for other meaning(y/n)" crlf)
   (bind ?reply (read))
        (if (eq ?reply y) then
         (assert(get_expected_mng ?id ?word ?root))
        else (if (eq ?reply n) then
          (exit)
       else
          (assert(search_for_other_meaning ?id ?word ?root ?exp_mng))
          (printout t "Legal answers are \"(y/n)\" " crlf))
       )
 )

 
 (defrule display_rule
 ?f<-(get-path ?id ?word ?root) 
 =>

 (printout t crlf crlf "The following command is used to see the matches of a rule" crlf)
 (printout t "==========================================================" crlf)
 (printout t "(matches <rule_name>) "crlf crlf)
 
 (printout t "The following command is used to Display the text of a given rule" crlf)
 (printout t "=================================================================" crlf)
 (printout t "(ppdefrule <rule_name>) "crlf crlf)

 (printout t  "The following command is used to open a particular clip file" crlf)
 (printout t "==========================================================" crlf)
 (printout t "(system \"gvim -o path_to_clp_file\") "crlf)
 (printout t "For e.g; CLIPS> (system \"gvim -o $HOME_anu_test/WSD/wsd_rules/eat.clp\")" crlf crlf)
 
 (printout t "The following command is used to exit" crlf)
 (printout t "=====================================" crlf)
 (printout t "(exit) "crlf crlf)
 
 (bind ?word_file (str-cat ?*path* "/WSD/wsd_rules/" ?word .clp))
 (bind ?word_file1 (str-cat ?*provisional_wsd_path* "/" ?word .clp))
 (bind ?root_file (str-cat ?*path* "/WSD/wsd_rules/" ?root .clp))
 (bind ?root_file1 (str-cat ?*provisional_wsd_path* "/" ?root .clp))
 (if (and (neq (load* ?word_file1) FALSE)(halt)) then
     else (if (and(neq (load* ?root_file1) FALSE)(halt)) then
          else (if (and(neq (load* ?word_file) FALSE)(halt))  then
                else (if (and(neq (load* ?root_file) FALSE)(halt)) then
                     else
                         (printout t "There is no rule file with that word." crlf)
                     ))))
 )

 
 (run)
