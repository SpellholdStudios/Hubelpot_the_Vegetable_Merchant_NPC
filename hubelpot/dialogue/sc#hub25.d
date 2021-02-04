//////////////
//          //
// SC#Hub25 //
//          //
//////////////

//This is the talk the PC have when s/he summons Hubelpot to the Pocket Plane.
BEGIN SC#Hub25

IF ~Global("SC#HubSummoned","GLOBAL",1)~ THEN Hub25_0
SAY ~Where... you? So mah duty is not yet fulfilled? Very well. A deal is a deal, an’ Ah’ll not try te back out now. So, ye got anything te eat around here?~
IF ~~ THEN DO ~SetGlobal("SC#HubSummoned","GLOBAL",2)~ GOTO Hub25_1
END

IF ~~ Hub25_1
SAY ~So, ye want me back now do you? Well enough then. Seems Ah’ve traveled a long way to pay back a thousand gold. Still, it has been interestin’.~ [SC#Hub46]
++ ~Come, join me Hubelpot. There is work to be done.~ DO ~SetGlobal("SC#HubJoined","LOCALS",1) JoinParty()~ EXIT
++ ~No Hubelpot, I don’t need you. Relax in the pocket plane for a while.~ + Hub25_2
END

IF ~~ Hub25_2
SAY ~Ah canna believe ye dragged me here te sit on me arse. Ah guess Ah’ll see if there’s anything here te cook.~
IF ~~ THEN DO ~MoveToPointNoInterrupt([1450.1405])~ EXIT
END

//Next time you talk to him

IF ~Global("SC#HubSummoned","GLOBAL",2)~ Hub25_3
SAY ~So, ye want me back now do you? Well enough then. Seems Ah’ve traveled a long way to pay back a thousand gold. Still, it has been interestin’.~
++ ~Come, join me Hubelpot. There is work to be done.~ DO ~SetGlobal("SC#HubJoined","LOCALS",1) JoinParty()~ EXIT
++ ~No Hubelpot, I don’t need you. Relax in the pocket plane for a while.~ + Hub25_4
END

IF ~~ Hub25_4
SAY ~Ah canna believe ye dragged me here te sit on me arse. Ah guess Ah’ll see if there’s anything here te cook.~
IF ~~ THEN EXIT
END

///////////////
//           //
// SC#KHA25J //
//           //
///////////////

BEGIN SC#Hub25J


///////////////
//           //
// SC#KHA25P //
//           //
///////////////

BEGIN SC#Hub25P

IF ~Global("SC#Hub25Kicked","LOCALS",0) Global("SC#HubJoined","LOCALS",1)~ Hub25P_0
SAY ~So ye want me te go then?~ [SC#Hub52]
++ ~No Hubelpot, stay with me. I need someone to do the cooking around here.~ DO ~JoinParty()~ EXIT
++ ~I think it’s time for you to go. Off with you now, vegetable man.~ + Hub25P_1
END

IF ~~ Hub25P_1
SAY ~Fair enough, Ah’m goin’. If ye need me, ye know how te find me.~
IF ~AreaCheck("AR4500")~ THEN DO ~SetGlobal("SC#Hub25Kicked","LOCALS",1) SetGlobal("SC#HubJoined","LOCALS",0)
MoveToPointNoInterrupt([1450.1405]) Face(0)~ EXIT
IF ~!AreaCheck("AR4500")~ THEN DO ~SetGlobal("SC#Hub25Kicked","LOCALS",1) SetGlobal("SC#HubJoined","LOCALS",0)
CreateVisualEffectObject("spdimndr",Myself) Wait(2) MoveBetweenAreas("AR4500",[1450.1405],0)~ EXIT
END

//If you want him to rejoin after he's been kicked out:

IF ~Global("SC#Hub25Kicked","LOCALS",1) Global("SC#HubJoined","LOCALS",0)~ Hub25P_2
SAY ~Eh? Yer back! Hae ye need of mah tallents, <CHARNAME>?~
++ ~Yes my friend. Come, let us travel together~ DO ~SetGlobal("SC#Hub25Kicked","LOCALS",0) SetGlobal("SC#HubJoined","LOCALS",1) JoinParty()~ EXIT
++ ~No Hubelpot, just stopping by for some rations.~ EXIT
END

////////////////////////
//                    //
// Ascending God-hood //
//                    //
////////////////////////

INTERJECT_COPY_TRANS FINSOL01 27 SC#HubAscendChoice
== SC#Hub25J IF ~InParty("Hubelpot")~ THEN ~So now ye may become a God? Don’t be a fool <CHARNAME>. Ye’ll be at the bottom of the pile, hated and at war forever. Get out while ye can. That’s mah advice, fer what it’s worth.~
END
