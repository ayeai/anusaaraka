
(defrule suit0
(declare (salience 5000))
(id-root ?id suit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suit.clp 	suit0   "  ?id "  sUta )" crlf))
)

;"suit","N","1.sUta"
;This suit is not suited for me.
;--"2.raga"
;The suits are spades, hearts, diamonds && clubs.           
;
(defrule suit1
(declare (salience 4900))
(id-root ?id suit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suviXAjanaka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suit.clp 	suit1   "  ?id "  suviXAjanaka_ho )" crlf))
)

;"suit","V","1.suviXAjanaka_honA"
;Bombay's climate doesn't suit me well.
;--"2.anukUla_honA"
;That colour doesn't suit your complexion.
;
;LEVEL 
;Headword : suit
;
;Examples --
;
;"suit","N","jodZA"
;She bought a expensive suit for her child. 
;usane apane bacce ke liye eka mahazgA sUta KarIxA <--sUta
;
;"2.mukaxamA/xAvA"
;He brought a suit against us in the court.
;usane nyAyAlaya meM hamAre viruXxa mukaxamA calA xiyA <--xAvA loga isa Barose para karawe hEM ki kAnUna unakA sAWa xegA
;
;"3.wASa ke kisI raMga ke pawwoM kA samUha"
;In a pack of cards there are four suits. 
;wASa kI eka gaddI meM cAra raMga howe hEM<--eka raMga ke pawwe eka sAWa calawe hEM 
;
;"suit","V","1.anukUla/upayukwa honA"
;The ten o'clock train will suit us very well.
;xasa baje kI trena hamAre liye balakula anukUla rahegI <--isa vakwa kI trena use sUta karegI
;
;"2.PabanA/sajanA"
;This shirt suits him very much.
;yaha Sarta usa para bahuwa PabawI hE. <--yaha Sarta usake raMga ke sAWa bahuwa acCI jA rahI hE
;
;
;nota:--uparyukwa 'suit'Sabxa bola-cAla kI BARA meM awyaXika pracaliwa hone ke kAraNa  
;     borrow kiyA jA sakawA hE.Ora jahAz para isa Sabxa kA prayoga howA hE usa vAkya     
;     meM arWa ke anusAra 'sUta'kA arWa AsAnI se nikAlA jA sakawA hE
;     awaH sUta ke viBinna arWa sAriNI se nimna prakAra xarSA sakawe hEM
;
;                        pICe jAnA<--sAWa jAnA 
;                                     /\
;                                   /    \ 
;                                 /        \       
;                     eka samUha banAne      kisI vaswu ke pICe
;                     vAlA sAmAna              jAnA 
;                        /\                     /\
;                      /    \                 /    \
;            kapadZoM kA sUta    rahane kA sUta   xAvA    vivAha kA praswAva
;                                         karanA       svIkAra karanA
;    saMkRepa meM"suit"Sabxa kA mUla arWa nimna prakAra xe sakawe hEM  
;
;              
;  sUwra : sUta[<sAWa_yA_pICe_jAnA]  
;
