////////////
//        //
// SC#HUB //
//        //
////////////


//This is the talk the PC have the first time s/he meets Hubelpot.
BEGIN SC#HUB

IF ~NumTimesTalkedTo(0)~ Hub
SAY @0
++ @1 + Hub_2
++ @2 + Hub_2
+ ~CheckStatGT(Player1,15,CHR)~ + @3 + Hub_0
+ ~CheckStatLT(Player1,16,CHR)~ + @3 + Hub_1
END

IF ~~ Hub_0
SAY @4
IF ~~ EXIT
END

IF ~~ Hub_1
SAY @5
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ Hub_2
SAY @6
++ @7 + Hub_3
++ @8 + Hub_3
+ ~CheckStatGT(Player1,15,CHR)~ + @9 + Hub_0
+ ~CheckStatLT(Player1,16,CHR)~ + @9 + Hub_1
END

IF ~~ Hub_3
SAY @10
++ @11 + Hub_4
++ @12 + Hub_4
+ ~CheckStatGT(Player1,15,CHR)~ + @13 + Hub_0
+ ~CheckStatLT(Player1,16,CHR)~ + @13 + Hub_1
END

IF ~~ Hub_4
SAY @14
++ @15 + Hub_5
++ @16 + Hub_5
+ ~CheckStatGT(Player1,15,CHR)~ + @17 + Hub_0
+ ~CheckStatLT(Player1,16,CHR)~ + @17 + Hub_1
END

IF ~~ Hub_5
SAY @18
IF ~~ UNSOLVED_JOURNAL @2001 
DO ~SetGlobal("SC#HubJoined","LOCALS",1) SetGlobal("SC#HubPlot","GLOBAL",1) JoinParty()~
EXIT
END


/////////////
//         //
// SC#HUBJ //
//         //
/////////////

BEGIN SC#HUBJ

IF WEIGHT #-2
~Global("SC#HubPlot","GLOBAL",2) Global("SC#HubPlotTalk","LOCALS",0)~ HubPlot_0
SAY @20
++ @21 + HubPlot_1
++ @22 + HubPlot_1
++ @23 + HubPlot_2
END

IF ~~ HubPlot_1
SAY @24
IF ~~ DO ~SetGlobal("SC#HubPlotTalk","LOCALS",1)~ EXIT
END

IF ~~ HubPlot_2
SAY @25
IF ~~ DO ~SetGlobal("SC#HubPlotTalk","LOCALS",1) SetGlobal("SC#HubJoined","LOCALS",0) LeaveParty() EscapeAreaMove("AR0707",389,383,12)~ EXIT
END

//Gold-dialogue

IF WEIGHT #-1
~Global("SC#HubPlotTalk","LOCALS",1) PartyHasItem("SC#HuGl")~ HubGold_0
SAY @26
++ @27 DO ~AddexperienceParty(25000) SetGlobal("SC#HubPlotTalk","LOCALS",2)~ + HubGold_1
++ @28 DO ~AddexperienceParty(25000) SetGlobal("SC#HubPlotTalk","LOCALS",2)~ + HubGold_1
++ @29 DO ~AddexperienceParty(25000) SetGlobal("SC#HubPlotTalk","LOCALS",2)~ + HubGold_5
END

IF ~~ HubGold_1
SAY @30
++ @31 DO ~AddexperienceParty(10000)~ GOTO HubGold_3
++ @32 + HubGold_3
++ @33 + HubGold_5
END

//Isn't there supposed to be a HubGold_2?? I've linked the replies above to HubGold_3.

IF ~~ HubGold_3
SAY @34
++ @35 + HubGold_4
++ @36 + HubGold_4
++ @37 + HubGold_6
END

IF ~~ HubGold_4
SAY @38
IF ~~ UNSOLVED_JOURNAL @2005
DO ~SetGlobal("SC#HubPlotTalk","LOCALS",2) SetGlobal("SC#HubPlot","GLOBAL",5)~
EXIT
END

IF ~~ HubGold_5
SAY @40
IF ~~ DO ~SetGlobal("SC#HubPlotTalk","LOCALS",2) SetGlobal("SC#HubJoined","LOCALS",0) GivePartyGold(1000) DestroyItem("SC#HuGl") LeaveParty() EscapeArea()~ EXIT
END

IF ~~ HubGold_6
SAY @41
IF ~~ DO ~SetGlobal("SC#HubPlotTalk","LOCALS",2) SetGlobal("SC#HubJoined","LOCALS",0) DestroyItem("SC#HuGl") LeaveParty() EscapeAreaMove("AR0707",389,383,3)~ EXIT
END

INTERJECT_COPY_TRANS Jan 0 HubJan1
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @42
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @43
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @44
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @45
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @46
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @47
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @48
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @49
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @50
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @51
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @52
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @53
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @54
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @55
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    @56
END

/////////////
//         //
// SC#HUBP //
//         //
/////////////

BEGIN SC#HUBP

//If you kick him out, this is the coversation that will occur.
IF ~Global("SC#HubKicked","LOCALS",0) Global("SC#HubJoined","LOCALS",1)~ HubP_0
SAY @57
++ @58 DO ~JoinParty()~ EXIT
++ @59 DO ~SetGlobal("SC#HubKicked","LOCALS",1) SetGlobal("SC#HubJoined","LOCALS",0)~ + HubP_1
END

IF ~~ HubP_1
SAY @60
IF ~~ THEN DO ~EscapeAreaMove("AR0707",389,383,12)~ EXIT
END

//If you talk to him after he's been kicked out, this is what will occur.
IF ~Global("SC#HubKicked","LOCALS",1) Global("SC#HubJoined","LOCALS",0)~ HubP_2
SAY @61
++ @62 DO ~SetGlobal("SC#HubKicked","LOCALS",0) SetGlobal("SC#HubJoined","LOCALS",1) JoinParty()~ EXIT
++ @63 EXIT
END

//////////////////
//              //
// Tree of Life //
//              //
//////////////////

EXTEND_BOTTOM PLAYER1 33
IF ~IsValidForPartyDialog("Hubelpot")
Global("SC#HubTOL","GLOBAL",0)~ THEN DO ~SetGlobal("SC#HubTOL","GLOBAL",1)~ GOTO HubTOL_1
END

APPEND PLAYER1
IF ~~ HubTOL_1
SAY @64
++ @65 EXTERN SC#HubJ HubTOL_2
++ @66 EXTERN SC#HubJ HubTOL_2
END
END

APPEND SC#HubJ
IF ~~ HubTOL_2
SAY @67
COPY_TRANS PLAYER1 33
END
END

//////////////////////
//                  //
// Hubelpot in Hell //
//                  //
//////////////////////

INTERJECT_COPY_TRANS PLAYER1 25 SC#HubInHell
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN @68
END

/////////////////////
//                 //
// Irenicus Taunts //
//                 //
/////////////////////

INTERJECT_COPY_TRANS HELLJON 7 SC#HubIrenicusTaunts
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN @69
END

INTERJECT_COPY_TRANS HELLJON 8 SC#HubIrenicusTaunts
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN @69
END

INTERJECT_COPY_TRANS HELLJON 9 SC#HubIrenicusTaunts
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN @69
END

INTERJECT_COPY_TRANS HELLJON 10 SC#HubIrenicusTaunts
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN @69
END
