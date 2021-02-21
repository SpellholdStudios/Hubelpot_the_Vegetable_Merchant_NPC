///////////////
//	     //
// BSC#Hub25 //
//	     //
///////////////

BEGIN BSC#HU25

CHAIN IF~
CombatCounter(0)
!See([ENEMY])
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("Nalia",CD_STATE_NOTVALID)
InMyArea("Hubelpot")
InParty("Hubelpot")
Global("sc#Tnalhub2","GLOBAL",0)~ THEN BNALIA25 sc#Tnalhub2
@0
DO ~SetGlobal("sc#Tnalhub2","GLOBAL",1)~
== BSC#HU25 @1
== BNALIA25 @2
== BSC#HU25 @3
== BNALIA25 @4
== BSC#HU25 @5
== BNALIA25 @6
== BSC#HU25 @7
= @8
== BNALIA25 @9
== BSC#HU25 @10
EXIT

CHAIN IF
~CombatCounter(0)
!See([ENEMY])
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("Sarevok",CD_STATE_NOTVALID)
InMyArea("Sarevok")
InParty("Sarevok")
Global("sc#sarhub","GLOBAL",0)~ THEN BSC#HU25 sc#sarhub1
@11
DO ~SetGlobal("sc#sarhub","GLOBAL",1)~
== BSAREV25 @12
== BSC#HU25 @13
== BSAREV25 @14
== BSC#HU25 @15
== BSAREV25 @16
== BSC#HU25 @17
== BSAREV25 @18
EXIT