////////////////
//            //
// Fatespirit //
//            //
////////////////


//EXTEND_TOP FATESP 6 #5
EXTEND_TOP FATESP %fatesp_state_imoen% #%fatesp_transition_imoen%
	IF ~!Dead("Hubelpot") !InMyArea("Hubelpot") Global("SC#HubSummoned","GLOBAL",0)~
	THEN
		REPLY @0
		DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
			Wait(2)
			CreateCreature("SC#Hub25",[1999.1218],0)
			SetGlobal("SC#HubSummoned","GLOBAL",1)~
		GOTO 8
	END
