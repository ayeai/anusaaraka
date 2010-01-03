
(defrule picture0
(declare (salience 5000))
(id-root ?id picture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  picture.clp 	picture0   "  ?id "  ciwra )" crlf))
)

;"picture","N","1.ciwra"
;He painted a beautiful picture.
;--"2.PZoto"
;Her birthday pictures were really nice.
;--"3.sinemA_yA_telivijZana_kA_parxA"
;Our TV has a 45 cm picture.
;--"4.PZilma"
;This is the debut picture of leonardo-di-vinci.
;--"5.varNana"
;Our teacher gave us a vivid picture of  World war-II.
;--"6.mAnasika_ciwra"
;My brother's description helped the police to build up an accurate picture of what had happened.
;--"7.manohara_vaswu"
;My dad was a picture on the day of his anniversary.
;
(defrule picture1
(declare (salience 4900))
(id-root ?id picture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  picture.clp 	picture1   "  ?id "  kalpanA_kara )" crlf))
)

;"picture","V","1.kalpanA_karanA"
;I tried to picture how our India will be in 21st century.
;--"2.ciwriwa_karanA/ciwra_xvArA_praxarSiwa_karanA"
;He was often pictured as an outsider.
;The fairy was pictured against a background of bright moon && twinkling stars.
;
