 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))
 (load-facts "root.dat")
 (load-facts "word.dat")
 (load-facts "cat_consistency_check.dat")
 (load-facts "relations.dat")
 (load-facts "meaning_to_be_decided.dat")
 (load-facts "tam_id.dat")
 (load-facts "revised_preferred_morph.dat")
 (load-facts "original_word.dat")
 (load-facts "hindi_tam_info.dat")
 (load-facts "debug_file.dat")
 (load* "global_path.clp")

 (defglobal ?*prov_dir* = ?*provisional_wsd_path*)
 (defglobal ?*wsd_dir* = (create$ (str-cat ?*path* "/WSD/wsd_rules/")))
 (defglobal ?*debug_flag* = TRUE)
 
 (dribble-on debug_info)
 (facts)
 (dribble-off)
 (system "zenity  --text-info  --filename=debug_info  --width=560  --height=300  &")
 (assert (question "Enter the tam id ::  "))
 (assert (next_id 1))

 (defrule display_sentence
 (declare (salience 100))
 ?f<-(next_id ?id)
 (id-word ?id ?word)
 =>
 (retract ?f)
 (if (eq ?id 1) then (printout t crlf))
 (format t " %s - %d |" ?word ?id)
 (bind ?id (+ ?id 1))
 (assert (next_id ?id))
 )

 (defrule display
 ?f0<-(next_id ?id)
  =>
 (retract ?f0)
 (printout t crlf crlf " The tams present in the sentence are : " crlf  crlf )
 )

 (defrule display_tams
 (declare (salience 90))
 ?f0<-(id-TAM ?id ?tam)
 =>
 (retract ?f0)
 (printout t crlf  ?tam " with id " ?id crlf)
 (assert (id-tam ?id ?tam))
 )

 (defrule get_tam_id
 (declare (salience 80))
 ?f<-(question ?text)
 =>
 (retract ?f)
 (format t " %s " ?text)
 (bind ?reply (read))
 (assert (get-tam_id ?reply))
 )
 
 (defrule tam_exists
 ?f<-(get-tam_id ?id)
 (id-tam ?id ?tam)
 =>
 (retract ?f)
 (assert(get_rule_fired ?id ?tam))
 )

 (defrule tam_exists1
 ?f<-(get-tam_id ?id)
 =>
 (retract ?f)
 (printout t "Given id is not a tam" crlf)
 (assert (question "Enter the correct id::  "))
 )

 (defrule wsd_tam_mng
 (declare (salience 80))
 ?f<-(get_rule_fired ?id ?tam)
 (dir_name-file_name-rule_name-id-H_tam_mng ?dir_name  ?file_name ?rule_name ?id ?tam_mng)
 =>
 (retract ?f)
 (printout t crlf "Tam  meaning has been generated from  WSD" crlf )
 (printout t crlf "Meaning has been generated from WSD (" ?dir_name ") " crlf crlf)
 (printout t crlf "File_name :: "?file_name"   Rule_name :: " ?rule_name "   Meaning :: \"" ?tam_mng "\"" crlf crlf)
 (assert(all_tam_mngs ?id ?tam))
 )

 (defrule default_tam_mng
 ?f<-(get_rule_fired ?id ?tam)
 (pada_info (group_head_id ?id)(group_cat VP)(H_tam ?tam_mng)(tam_source Default))
 =>
 (retract ?f)
 (printout t crlf "Tam ::  \"" ?tam  "\"      Meaning  :: \"" ?tam_mng "\"    Generated from  \"Default tam database\" " crlf crlf)
 (assert(all_tam_mngs ?id ?tam))
 )

 (defrule possible_mngs_for_tam
 (all_tam_mngs ?id ?tam)
 =>
   (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/" ?tam "_tam.clp >jnk")
   (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?tam "_tam.clp >>jnk")
   (open "jnk" fp "r")
   (if (neq (read fp) EOF) then 
   	(printout t crlf "All the possible meanings for the  "?tam " tam are ::" crlf crlf)
 	(system "cat jnk")
	(close fp)
	(remove jnk)
        (assert(get_expected_tam_mng ?id ?tam))
   )
   (bind ?tam_file (str-cat ?*path* "/WSD/wsd_rules/" ?tam "_tam.clp"))
   (bind ?tam_file1 (str-cat ?*provisional_wsd_path* "/" ?tam "_tam.clp"))
   (if (and (eq (load* ?tam_file) FALSE)(eq (load* ?tam_file1) FALSE) ) then
           (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf )
	   (printout t crlf "There is no rule file with tam \"" ?tam  "\"" )
           (printout t crlf "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" crlf )    
           (printout t " Do you want to search for another tam (y/n) " crlf)
           (bind ?reply (read))
           (if (eq ?reply n) then
             (exit)
           else 
              (assert (question "Enter the tam id ::  ")) 
           )
   )
 )

 (defrule expected_mng
 (get_expected_tam_mng ?id ?tam)
 =>
 (printout  t crlf "What is your expected tam meaning" crlf)
 (bind ?reply (read))
 (assert (expected_mng ?id ?tam ?reply))
 )

 (defrule expected_mng1
 ?f0<-(expected_mng ?id ?tam ?exp_mng)
 =>
         (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_provisional_wsd_rules/" ?tam "_tam.clp >jnk")
         (system "grep -E \"(defrule|salience|assert)\"  $HOME_anu_test/WSD/wsd_rules/"?tam "_tam.clp >>jnk")
         (system "grep -B2 \" " ?exp_mng"))\" jnk >jnk1")
         (open "jnk1" fp1 "r")
         (retract ?f0)
         (if (eq (read fp1) EOF) then
               (printout t crlf "There is no rule defined with the expected meaning" crlf)
               (printout t "Do you want to search for other meaning(y/n)" crlf)
               (bind ?reply (read))
               (if (eq ?reply y) then
                       (printout  t crlf "What is your expected tam meaning" crlf)
		       (bind ?reply1 (read))
       		       (assert (expected_mng ?id ?tam ?reply1))
		else  (if (eq ?reply n) then
		          (exit)
      		      else
           		(assert(expected_mng ?id ?tam ?reply1))
		        (printout t "Legal answers are \"(y/n)\" " crlf)))
              (close fp1)(remove jnk1)
         else
         (printout t crlf "Rule matching your meaning is :" crlf)
         (printout t "------------------------------" crlf)
         (system "cat jnk1")
	 (assert (get-path ?id ?tam))
         (close fp) (remove jnk)
         )
 )

  (defrule display_rule
  ?f<-(get-path ?id ?tam)
   =>
 	(printout t crlf crlf "The command to see the matches of a rule is " crlf)
        (printout t "(matches <rule_name>) "crlf)
        (printout t "----------------------------------------------------" crlf)
	(printout t "The command to Display the text of a given rule is " crlf)
 	(printout t "(ppdefrule <rule_name>) "crlf)
        (printout t "----------------------------------------------------" crlf)
        (printout t "The command to exit is" crlf)
 	(printout t "(exit) "crlf)

 	(bind ?tam_file (str-cat ?*path* "/WSD/wsd_rules/" ?tam "_tam.clp"))
 	(bind ?tam_file1 (str-cat ?*provisional_wsd_path* "/" ?tam "_tam.clp"))
 	(if (and (neq (load* ?tam_file) FALSE)(halt)) then
	else (if (and(neq (load* ?tam_file1) FALSE)(halt)) then
	     else
               (printout t "There is no rule file with that tam." crlf)
              )
        )
 )

 (system "clear")
 (run)
