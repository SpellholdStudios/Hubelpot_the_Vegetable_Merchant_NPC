////////////////
//            //
// Fatespirit //
//            //
////////////////
//REPLACE_SAY FATESP 6 #5 ~Bring me Hubelpot, the Vegetable Farmer.~

/*EXTEND_TOP FATESP 6 #5
  IF ~!Dead("Hubelpot")
     !InMyArea("Hubelpot")
     Global("SC#HubSummoned","GLOBAL",0)~
  THEN
    REPLY ~Bring me Hubelpot, the Vegetable Farmer.~
      DO ~CreateVisualEffect("SPPORTAL",[1999.1218])
         Wait(2)
         CreateCreature("SC#Hub25",[1999.1218],0)
         SetGlobal("SC#HubSummoned","GLOBAL",1)~
         GOTO 8
END*/
