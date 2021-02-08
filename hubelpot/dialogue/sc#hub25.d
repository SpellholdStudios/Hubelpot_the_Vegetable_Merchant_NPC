//////////////
//          //
// SC#Hub25 //
//          //
//////////////

//This is the talk the PC have when s/he summons Hubelpot to the Pocket Plane.
BEGIN SC#Hub25

IF ~Global("SC#HubSummoned","GLOBAL",1)~ THEN Hub25_0
SAY @0
IF ~~ THEN DO ~SetGlobal("SC#HubSummoned","GLOBAL",2)~ GOTO Hub25_1
END

IF ~~ Hub25_1
SAY @1
++ @2 DO ~SetGlobal("SC#HubJoined","LOCALS",1) JoinParty()~ EXIT
++ @3 + Hub25_2
END

IF ~~ Hub25_2
SAY @4
IF ~~ THEN DO ~MoveToPointNoInterrupt([1450.1405])~ EXIT
END

//Next time you talk to him

IF ~Global("SC#HubSummoned","GLOBAL",2)~ Hub25_3
SAY @5
++ @2 DO ~SetGlobal("SC#HubJoined","LOCALS",1) JoinParty()~ EXIT
++ @3 + Hub25_4
END

IF ~~ Hub25_4
SAY @4
IF ~~ THEN EXIT
END

///////////////
//           //
// SC#KHA25J //
//           //
///////////////

BEGIN SC#Hb25J


///////////////
//           //
// SC#KHA25P //
//           //
///////////////

BEGIN SC#Hb25P

IF ~Global("SC#Hub25Kicked","LOCALS",0) Global("SC#HubJoined","LOCALS",1)~ Hub25P_0
SAY @6
++ @7 DO ~JoinParty()~ EXIT
++ @8 + Hub25P_1
END

IF ~~ Hub25P_1
SAY @9
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("SC#Hub25Kicked","LOCALS",1) SetGlobal("SC#HubJoined","LOCALS",0)
MoveToPointNoInterrupt([1450.1405]) Face(0)~ EXIT
IF ~!AreaCheck("AR4500")~ THEN DO ~SetGlobal("SC#Hub25Kicked","LOCALS",1) SetGlobal("SC#HubJoined","LOCALS",0)
CreateVisualEffectObject("spdimndr",Myself) Wait(2) MoveBetweenAreas("AR4500",[1450.1405],0)~ EXIT
END

//If you want him to rejoin after he's been kicked out:

IF ~Global("SC#Hub25Kicked","LOCALS",1) Global("SC#HubJoined","LOCALS",0)~ Hub25P_2
SAY @10
++ @11 DO ~SetGlobal("SC#Hub25Kicked","LOCALS",0) SetGlobal("SC#HubJoined","LOCALS",1) JoinParty()~ EXIT
++ @12 EXIT
END

////////////////////////
//                    //
// Ascending God-hood //
//                    //
////////////////////////

INTERJECT_COPY_TRANS FINSOL01 27 SC#HubAscendChoice
== SC#Hb25J IF ~InParty("Hubelpot")~ THEN @13
END
