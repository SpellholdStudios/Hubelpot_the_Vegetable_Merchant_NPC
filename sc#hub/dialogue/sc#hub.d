////////////
//        //
// SC#HUB //
//        //
////////////


//This is the talk the PC have the first time s/he meets Hubelpot.
BEGIN SC#HUB

IF ~NumTimesTalkedTo(0)~ Hub
SAY ~Excuse me mah <LADYLORD>, but Ah was wonderin’ if Ah might hae a word with ye. Ye hae the look o’ the gallowglass, an Ah could surely use yer help.~ [SC#Hub57]
++ ~Of course good merchant. How may we assist?~ + Hub_2
++ ~Speak then. I will hear. Know you however that I am in need of funds. My help will not come free.~ + Hub_2
+ ~CheckStatGT(Player1,15,CHR)~ + ~I have no time to speak with a fat merchant. Go back to your cabbages.~ + Hub_0
+ ~CheckStatLT(Player1,16,CHR)~ + ~I have no time to speak with a fat merchant. Go back to your cabbages.~ + Hub_1
END

IF ~~ Hub_0
SAY ~Very well, mah <LADYLORD>. Ah am sore in need, and shall wait an’ hope ye’ll change yer mind.~ [SC#Hub59]
IF ~~ EXIT
END

IF ~~ Hub_1
SAY ~As ye wish, mah <LADYLORD>. I shall not bother ye again.~ [SC#Hub56]
IF ~~ DO ~EscapeArea()~ EXIT
END

IF ~~ Hub_2
SAY ~Ah’ll give ye the short version of the tale mah friends. Mah name is Hubelpot Thistledown, an’ until a ten-day back Ah had the honor of bein’ a buyer fer the Small Merchants’ guild. A goodly share o’ the food tha’ moves into Amn moves through the guild.~ [SC#Hub55]
++ ~I see. What has this to do with your need for my help?~ + Hub_3
++ ~Get to the point you blabbering twit. What do you want?~ + Hub_3
+ ~CheckStatGT(Player1,15,CHR)~ + ~Suddenly, I no longer care. I’ll be going now.~ + Hub_0
+ ~CheckStatLT(Player1,16,CHR)~ + ~Suddenly, I no longer care. I’ll be going now.~ + Hub_1
END

IF ~~ Hub_3
SAY ~Mah contact with the Teamsters’ Guild is a gnome named Brinsley Blake. Tough little bugger. Ah gave him over a thousand in Merchant’s Guild gold te guarantee space on a caravan fer a shipment o’ cabbages an’ such. It didn’ arrive, an’ he claims nae te know what happened. Worse, he told the guild Ah’d never given the gold over. Ah was responsible fer that money, and unless Ah can get it back Ah an’ mah family are ruined.~ [SC#Hub58]
++ ~I suppose you need me to put some pressure on this gnome? Force him to admit that he took the gold?~ + Hub_4
++ ~And I am supposed to do what about this? More important, if you have no money, how can you pay me?~ + Hub_4
+ ~CheckStatGT(Player1,15,CHR)~ + ~Shut up! Why do you keep talking! Shut up! Go away! Argh!~ + Hub_0
+ ~CheckStatLT(Player1,16,CHR)~ + ~Shut up! Why do you keep talking! Shut up! Go away! Argh!~ + Hub_1
END

IF ~~ Hub_4
SAY ~Ah need ye te take me to Blake. He’s in the Copper Coronet in the slums. He'll nae pay mind te me, but Ah think he'll listen to you. If ye take me there, Ah’ll give ye 50 gold. Ah know it’s nae much, but it’s all Ah have te give.~ [SC#Hub53]
++ ~Very well. Join me, and I’ll do what I can.~ + Hub_5
++ ~50 gold? That is nothing. Still, so long as you obey me in all things, I will take you to meet this man. Perhaps there is some profit to be made from a lost caravan.~ + Hub_5
+ ~CheckStatGT(Player1,15,CHR)~ + ~50 gold! I listened to all that for 50 gold! YEARGH! Get out of my sight before I cut off your nose and feed it to you! Your kind makes me puke!~ + Hub_0
+ ~CheckStatLT(Player1,16,CHR)~ + ~50 gold! I listened to all that for 50 gold! YEARGH! Get out of my sight before I cut off your nose and feed it to you! Your kind makes me puke!~ + Hub_1
END

IF ~~ Hub_5
SAY ~Ah thank ye. Ah hae some skill with wounds, an Ah’m willin’ te follow yer orders. Ah’m also a good cook, or so Ah’m told.~ [SC#Hub54]
IF ~~ UNSOLVED_JOURNAL ~A Matter of Some Cabbages
Was joined by Hubelpot, a vegetable merchant. He claims to have been cheated by a gnome teamster named Brinsley Blake. This Blake usually can be found in The Copper Coronet, a tavern in the slums. This should be easy to clear up.~ 
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
SAY ~This is big. Bigger than Ah thought. Mah guild will never believe this with nae proof, an’ the Teamsters will nae give back money they never got. Ah . . . Ah must get that money back. An’ there are six dead. That’s nae right. <CHARNAME>, Ah know that Ah hae no right, but can ye help me?~ [SC#Hub47]
++ ~There are dark deeds here, and justice must be done. Of course I will help.~ + HubPlot_1
++ ~I smell a profit here. There was something worth killing for in that caravan. Besides, we had a deal. Let’s get your gold.~ + HubPlot_1
++ ~No, this is too much. I have no time for this. Get lost, Hubelpot.~ + HubPlot_2
END

IF ~~ HubPlot_1
SAY ~Ah thank ye. Come, we should ask the lass upstairs about her man.~ [SC#Hub43]
IF ~~ DO ~SetGlobal("SC#HubPlotTalk","LOCALS",1)~ EXIT
END

IF ~~ HubPlot_2
SAY ~Ah ... Ah see. Well, Ah thank ye humbly for yer help. If ye want me, Ah’ll be back in the shop. Ye can find me there.~ [SC#Hub50]
IF ~~ DO ~SetGlobal("SC#HubPlotTalk","LOCALS",1) SetGlobal("SC#HubJoined","LOCALS",0) LeaveParty() EscapeAreaMove("AR0707",389,383,12)~ EXIT
END

//Gold-dialogue

IF WEIGHT #-1
~Global("SC#HubPlotTalk","LOCALS",1) PartyHasItem("SC#HuGl")~ HubGold_0
SAY ~Here it is! The gold! With this, ah can clear mah name! Ah can...~ [SC#Hub42]
++ ~Congratulations Hubelpot! Your name and your family are saved!~ DO ~AddexperienceParty(25000) SetGlobal("SC#HubPlotTalk","LOCALS",2)~ + HubGold_1
++ ~Go on, Hubelpot.~ DO ~AddexperienceParty(25000) SetGlobal("SC#HubPlotTalk","LOCALS",2)~ + HubGold_1
++ ~You can? I found the gold Hubelpot. I’m keeping it.~ DO ~AddexperienceParty(25000) SetGlobal("SC#HubPlotTalk","LOCALS",2)~ + HubGold_5
END

IF ~~ HubGold_1
SAY ~Ah... Ah know ye shed blood fer this gold, <CHARNAME>. Without the gold Ah can never pay mah debt te the guild, yet Ah know ye need it as well fer yer own quest, an Ah could nae hae recovered it mahself.~ [SC#Hub51]
++ ~Hubelpot, that is nonsense! Your family will be ruined without this gold, and I agreed to help you find it. It is yours, and I will hear no more about it.~ DO ~AddexperienceParty(10000)~ GOTO HubGold_3
++ ~There is truth to what you say, yet we had a deal. You need this gold more than I. Can you offer me a compromise?~ + HubGold_3
++ ~You’re right. I’m keeping the gold.~ + HubGold_5
END

//Isn't there supposed to be a HubGold_2?? I've linked the replies above to HubGold_3.

IF ~~ HubGold_3
SAY ~Ah thank ye mah <LADYLORD>, from the bottom of me heart. Ah can offer ye some small compensation. Mah Morag can handle the shop without me fer a while, an with mah debts paid the guild’ll help her. Ah owe ye much. If it be yer will, Ah’ll serve ye with mah life until ye feel mah debt hae been paid. Ah’ll heal yer wounds, cook yer meals, and raise mah club as ye command. What do ye say, <CHARNAME>?~
++ ~I accept your fealty Hubelpot, and I thank you for it. You have been and shall remain a most worthy companion.~ + HubGold_4
++ ~I can always use a good cook, and an extra hand as well. Very well Hubelpot, I accept your fealty in lieu of the gold, for now.~ + HubGold_4
++ ~I have no need of a cook Hubelpot, and no need of your club. Take your gold, and go.~ + HubGold_6
END

IF ~~ HubGold_4
SAY ~Ye’ll nae regret it mah <LADYLORD>. Ah thank ye! Let’s get te the Five Flagons Inn. Mah boy Hamlish be workin’ in the kitchens there. We can pass the gold to him, an he’ll take care of passin’ it te Morag.~
IF ~~ UNSOLVED_JOURNAL ~A Matter of Some Cabbages
We have recovered the Merchant Guild’s gold, and shall return it to its rightful owners. The other treasure we gained in the recovery of the gold was fair compensation for the task. We must visit Hubelpot’s son Hamlish in the kitchens of the Five Flagon’s inn.~
DO ~SetGlobal("SC#HubPlotTalk","LOCALS",2) SetGlobal("SC#HubPlot","GLOBAL",5)~
EXIT
END

IF ~~ HubGold_5
SAY ~Ah see. Well then, Ah . . . Fare well. Ah shall not know yer like again.~
IF ~~ DO ~SetGlobal("SC#HubPlotTalk","LOCALS",2) SetGlobal("SC#HubJoined","LOCALS",0) GivePartyGold(1000) DestroyItem("SC#HuGl") LeaveParty() EscapeArea()~ EXIT
END

IF ~~ HubGold_6
SAY ~Ah... Ah understand. Well, if ye hae need of me, Ah’ll be back in the shop. Chauntea’s blessings on ye.~ [SC#Hub45]
IF ~~ DO ~SetGlobal("SC#HubPlotTalk","LOCALS",2) SetGlobal("SC#HubJoined","LOCALS",0) DestroyItem("SC#HuGl") LeaveParty() EscapeAreaMove("AR0707",389,383,3)~ EXIT
END

INTERJECT_COPY_TRANS Jan 0 HubJan1
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Hubelpot my old friend! What are you doing out of your shop!~
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Jansen! Wha tis good ta see ye lad! How air the bairns?~
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Doing well.~
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~And Agripina? Did she try tha’ ginger tea?~
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~She did! Yes, the swelling went right down.~
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Good to hear it.~
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~So Hubelpot, I hear you’re having problems with the guild?~
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Aye, true enough. Ah borrowed from ‘em more an ah shoulda done, an’ now ah’m een a fix.~
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~You know, this reminds me of a situation faced by old cousin Fingers, must have been, oh, around the year of the Undereducated Trout...~
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~"Undereducated Trout?"~
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Yes. So Fingers, he was my third cousin on my Father’s side you understand, Grizella’s husband...~
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Grizella’s the lass wi’ the peg leg?~
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~The very same! Funny story there...~
  == SC#HubJ   IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Eh! The gang air movin’ agin’. We’d best geit on.~
  == Jan       IF ~IsValidForPartyDialog("Hubelpot")~ THEN
    ~Right, yes. So Grizella was working as a slightly used enchantment dealer...~
END

/////////////
//         //
// SC#HUBP //
//         //
/////////////

BEGIN SC#HUBP

//If you kick him out, this is the coversation that will occur.
IF ~Global("SC#HubKicked","LOCALS",0) Global("SC#HubJoined","LOCALS",1)~ HubP_0
SAY ~So, ye want me te go now do ye?~
++ ~Stay with me Hubelpot. There is work to be done.~ DO ~JoinParty()~ EXIT
++ ~No Hubelpot, I don’t need you. Time for you to go home.~ DO ~SetGlobal("SC#HubKicked","LOCALS",1) SetGlobal("SC#HubJoined","LOCALS",0)~ + HubP_1
END

IF ~~ HubP_1
SAY ~Ah... Ah understand. Well, if ye hae need of me, Ah’ll be back in the shop. Chauntea’s blessings on ye.~
IF ~~ THEN DO ~EscapeAreaMove("AR0707",389,383,12)~ EXIT
END

//If you talk to him after he's been kicked out, this is what will occur.
IF ~Global("SC#HubKicked","LOCALS",1) Global("SC#HubJoined","LOCALS",0)~ HubP_2
SAY ~Eh? Yer back! Hae ye need of mah tallents, <CHARNAME>?~
++ ~Yes my friend. Come, let us travel together~ DO ~SetGlobal("SC#HubKicked","LOCALS",0) SetGlobal("SC#HubJoined","LOCALS",1) JoinParty()~ EXIT
++ ~No Hubelpot, just stopping by for some rations.~ EXIT
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
SAY ~You look at the one time vegetable merchant now sworn to your service. When you met him he was, despite his age, nearly as much an innocent as you had been at Candlekeep. Now he has fought, and killed, at your command.~
++ ~Hubelpot, you are a family man. Your wife and son wait for you. You have fought bravely at my side, but now it’s time for you to go. I ask you to return to your home. This is not your fight.~ EXTERN SC#HubJ HubTOL_2
++ ~Hubelpot, I saved your family, and you swore to me. Can I count on you now?~ EXTERN SC#HubJ HubTOL_2
END
END

APPEND SC#HubJ
IF ~~ HubTOL_2
SAY ~How can ye ask me that <CHARNAME>? After all this, how can ye ask me that? Ah have stood by ye faithfully, an’ Ah shall stand with ye now. Now let’s go, an’ when we’re done, Ah’ll see what Ah can cook up with a few o’ these acorns.~ [SC#Hub44]
COPY_TRANS PLAYER1 33
END
END
//////////////////////
//                  //
// Hubelpot in Hell //
//                  //
//////////////////////

INTERJECT_COPY_TRANS PLAYER1 25 SC#HubInHell
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN ~Ah felt a pull, Ah felt mahself dragged down, away from the world, away from Chauntea. The land is wrong here, the air is foul. Still, Ah knew ye needed me. So, here Ah am.~
END

/////////////////////
//                 //
// Irenicus Taunts //
//                 //
/////////////////////

INTERJECT_COPY_TRANS HELLJON 7 SC#HubIrenicusTaunts
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN ~ By Sylvanus’ great green hairy bollocks, ye come back up more often than on o’ Jansen’s Curries! Why won’t ye just die?!~
END

INTERJECT_COPY_TRANS HELLJON 8 SC#HubIrenicusTaunts
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN ~ By Sylvanus’ great green hairy bollocks, ye come back up more often than on o’ Jansen’s Curries! Why won’t ye just die?!~
END

INTERJECT_COPY_TRANS HELLJON 9 SC#HubIrenicusTaunts
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN ~ By Sylvanus’ great green hairy bollocks, ye come back up more often than on o’ Jansen’s Curries! Why won’t ye just die?!~
END

INTERJECT_COPY_TRANS HELLJON 10 SC#HubIrenicusTaunts
== SC#HubJ IF ~IsValidForPartyDialog("Hubelpot")~ THEN ~ By Sylvanus’ great green hairy bollocks, ye come back up more often than on o’ Jansen’s Curries! Why won’t ye just die?!~
END
