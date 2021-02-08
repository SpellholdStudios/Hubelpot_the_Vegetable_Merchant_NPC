BEGIN SC#Bla
BEGIN SC#GT1
BEGIN SC#GT2
BEGIN SC#Fan
BEGIN SC#Ham

CHAIN IF ~NumTimesTalkedTo(0)~ THEN SC#Bla Bla_0
@0
== SC#GT1 @1
== SC#GT2 @2
END
++ @3 EXTERN SC#Bla Bla_1
++ @4 EXTERN SC#Bla Bla_1
++ @5 EXTERN SC#Bla Bla_4


CHAIN IF ~~ THEN SC#Bla Bla_1
@6
== SC#GT1 @7
== SC#GT2 @8
END
++ @9 EXTERN SC#Bla Bla_3
++ @10 EXTERN SC#Bla Bla_3
++ @11 EXTERN SC#Bla Bla_4


CHAIN IF ~~ THEN SC#Bla Bla_3
@12
== SC#GT1 @13
== SC#GT2 @14
END
++ @15 EXTERN SC#Bla Bla_4
++ @16 EXTERN SC#Bla Bla_4
++ @17 EXTERN SC#Bla Bla_4


CHAIN IF ~~ THEN SC#Bla Bla_4
@18
== SC#GT1 @19 DO ~EscapeArea()~
== SC#GT2 @20 DO ~EscapeArea()~
END
++ @21 EXTERN SC#Bla Bla_5
++ @22 EXTERN SC#Bla Bla_5
++ @23 EXTERN SC#Bla Bla_5


APPEND SC#Bla
IF ~~ Bla_5
SAY @24
++ @25 + Bla_6
END

IF ~~ Bla_6
SAY @26
+ ~CheckStatGT(Player1,15,INT)~ + @27 + Bla_7
+ ~CheckStatLT(Player1,16,INT)~ + @28 + Bla_7
END

IF ~~ Bla_7
SAY @29
++ @30 + Bla_8
END

IF ~~ Bla_8
SAY @31
++ @32 + Bla_9
++ @33 + Bla_9
++ @34 + Bla_9
END

IF ~~ Bla_9
SAY @35
IF ~~ UNSOLVED_JOURNAL @2002
DO ~SetGlobal("SC#HubPlot","GLOBAL",2) AddexperienceParty(15000) EscapeArea()~
EXIT
END

END

APPEND SC#GT1
IF WEIGHT #-1
~NumTimesTalkedTo(0)~ GT1
SAY @37
IF ~~ EXIT
END

END

APPEND SC#GT2
IF WEIGHT #-1
~NumTimesTalkedTo(0)~ GT2
SAY @38
IF ~~ EXIT
END

END

APPEND SC#Fan
IF ~NumTimesTalkedTo(0)~ Fan_1
SAY @39
++ @40 + Fan_2
++ @41 + Fan_2
++ @42 + Fan_3
END

IF ~~ Fan_2
SAY @43
++ @44 + Fan_4
++ @45 + Fan_4
++ @46 + Fan_5
END

IF ~~ Fan_3
SAY @47
IF ~~ EXIT
END

IF ~~ Fan_4
SAY @48
++ @49 + Fan_5
++ @50 + Fan_5
++ @51 + Fan_3
END

IF ~~ Fan_5
SAY @52
++ @53 + Fan_6
++ @54 + Fan_7
++ @55 + Fan_8
END

IF ~~ Fan_6
SAY @56
IF ~~ GOTO Fan_9
END

IF ~~ Fan_7
SAY @57
++ @58 + Fan_10
++ @59 + Fan_11
++ @60 + Fan_8
END

IF ~~ Fan_8
SAY @61
IF ~~ UNSOLVED_JOURNAL @2003
DO ~SetGlobal("SC#HubPlot","GLOBAL",3) AddexperienceParty(15000) EscapeArea()~
EXIT
END

IF ~~ Fan_9
SAY @63
IF ~~ UNSOLVED_JOURNAL @2003
DO ~SetGlobal("SC#HubPlot","GLOBAL",3) AddexperienceParty(15000) EscapeArea()~
EXIT
END

IF ~~ Fan_10
SAY @63
IF ~~ UNSOLVED_JOURNAL @2003
DO ~SetGlobal("SC#HubPlot","GLOBAL",3) AddexperienceParty(15000) TakePartyGold(50) EscapeArea()~
EXIT
END

IF ~~ Fan_11
SAY @63
IF ~~ UNSOLVED_JOURNAL @2003
DO ~SetGlobal("SC#HubPlot","GLOBAL",3) TakePartyGold(25) AddexperienceParty(15000) EscapeArea()~
EXIT
END

END

APPEND INSPECT

IF ~Global("MurdersSolved","GLOBAL",1)~ Aegis_0
SAY @65
++ @66 + Aegis_1
+ ~Global("SC#HubPlot","GLOBAL",3)~ + @67 + Aegis_2
END

IF ~~ Aegis_1
SAY @68
IF ~~ EXIT
END

IF ~~ Aegis_2
SAY @69
++ @70 + Aegis_3
++ @71 + Aegis_3
END

IF ~~ Aegis_3
SAY @72
++ @73 + Aegis_4
END

IF ~~ Aegis_4
SAY @74
IF ~~ UNSOLVED_JOURNAL @2004
DO ~SetGlobal("SC#HubPlot","GLOBAL",4) AddexperienceParty(10000)~
GOTO Aegis_0
END

END

CHAIN IF ~NumTimesTalkedTo(0)~ THEN SC#Ham Ham_0
@76
== SC#HUBJ @77
== SC#Ham @78
== SC#HUBJ @79
== SC#Ham @80
== SC#HUBJ @81
== SC#Ham @82
== SC#HUBJ @83
== SC#Ham @84
== SC#HUBJ @85
== SC#Ham @86
== SC#HUBJ @87
== SC#Ham @88
== SC#HUBJ @89
== SC#Ham @90
== SC#HUBJ @91
== SC#Ham @92
== SC#HUBJ @93
== SC#Ham @94
== SC#HUBJ @95
== SC#Ham @96
== SC#HUBJ @97
== SC#Ham @98 DO ~EscapeArea()~
== SC#HUBJ @99
DO ~SetGlobal("SC#HubPlot","GLOBAL",6) AddexperienceParty(25000) TakePartyItem("SC#HuGl") DestroyItem("SC#HuGl")
EraseJournalEntry(@2002)
EraseJournalEntry(@2003)
EraseJournalEntry(@2004)
EraseJournalEntry(@2005)
EraseJournalEntry(@2006)~
EXIT

