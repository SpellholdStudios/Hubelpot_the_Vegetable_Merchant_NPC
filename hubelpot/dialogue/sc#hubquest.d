BEGIN SC#Bla
BEGIN SC#GT1
BEGIN SC#GT2
BEGIN SC#Fan
BEGIN SC#Ham

CHAIN IF ~NumTimesTalkedTo(0)~ THEN SC#Bla Bla_0
~You! Vegetable man! What did I tell you about coming around here! We don’t like your kind around here, do we boys?~
== SC#GT1 ~No we don’t like his kind around here!~
== SC#GT2 ~Grrr!~
END
++ ~We are here to discuss the matter of a missing caravan, Blake.~ EXTERN SC#Bla Bla_1
++ ~You’re not talking to the vegetable man, you’re talking to me. We want to know about a missing caravan, and about the money you were paid for its contents.~ EXTERN SC#Bla Bla_1
++ ~CARAVAN! WHERE!? NOW!~ EXTERN SC#Bla Bla_4


CHAIN IF ~~ THEN SC#Bla Bla_1
~Who in the hells do think you are? Who do you think you’re talking to? Get stuffed.~
== SC#GT1 ~Get stuffed!~
== SC#GT2 ~Grrrrrr! *Jumps off bench*~
END
++ ~I think I’m the man asking you about a caravan that never showed up, and about money that was never returned. I think you’re going to answer my questions. If you don’t, I’m afraid that we may never become friends.~ EXTERN SC#Bla Bla_3
++ ~Where is the caravan, Blake? Where is the vegetable man’s money? You’re going to tell me; why not tell me now?~ EXTERN SC#Bla Bla_3
++ ~TALK! SCREAM! CHOOSE!~ EXTERN SC#Bla Bla_4


CHAIN IF ~~ THEN SC#Bla Bla_3
~Are you threatening me? Do you have any idea what you are getting yourself into? One word from me bigjob, and my boys from the Honorable Brotherhood of Teamsters Local 14597 will do you proper! Now bugger off!~
== SC#GT1 ~*Hehe* Bigjobs! Bugger off!~
== SC#GT2 ~RRRRR! *flexes biceps*~
END
++ ~I was afraid we wouldn’t be friends. Oh well. *Puts hand on weapon*~ EXTERN SC#Bla Bla_4
++ ~Fine. I’ll hurt you a little, and then ask you again. *Readies weapons*~ EXTERN SC#Bla Bla_4
++ ~RARGH! YOU DIE! *Begin to attack*~ EXTERN SC#Bla Bla_4


CHAIN IF ~~ THEN SC#Bla Bla_4
~Wait! Hey now! Let’s not get carried away here. There’s no need for violence.~
== SC#GT1 ~No violence!~ DO ~EscapeArea()~
== SC#GT2 ~Eeek!~ DO ~EscapeArea()~
END
++ ~That’s the spirit. Now, why don’t you tell me all about the caravan, and about my good friend’s money?~ EXTERN SC#Bla Bla_5
++ ~Talk little gnome. Where is the caravan and where is the vegetable man’s money?~ EXTERN SC#Bla Bla_5
++ ~TALK!~ EXTERN SC#Bla Bla_5


APPEND SC#Bla
IF ~~ Bla_5
SAY ~Look, I’m sorry about all this, I really am, but my hands are tied here! The caravan is gone, long gone, and I don’t have the money!~
++ ~Go on.~ + Bla_6
END

IF ~~ Bla_6
SAY ~There’s a gang in this city, dangerous people, worse than the Shadow Thieves. Much worse than you! You can kill me, but that’s just where they’d start. I contracted the caravan. The bandits hit the caravan before it ever got to the city. A half-dozen teamsters dead, the valuable cargo taken, and the food dumped on the ground.~
+ ~CheckStatGT(Player1,15,INT)~ + ~How do you know that it was this gang, and not just ordinary bandits?~ + Bla_7
+ ~CheckStatLT(Player1,16,INT)~ + ~What about the gold?~ + Bla_7
END

IF ~~ Bla_7
SAY ~I... Look, I have a family. I have a wife, and kids! The gang shook me down. I gave them caravan schedules, and the vegetable man’s money. I got to keep breathing, and so did my kin. No one was meant to be hurt!~
++ ~Where is this gang now?~ + Bla_8
END

IF ~~ Bla_8
SAY ~I don’t know, and that’s Glittergold’s own truth! But, I can tell you who would know! There’s a girl upstairs, Sweet Fanny Adams. She’s a special friend to one of them. She could tell you. That’s all I know.~
++ ~Thank you for your cooperation, friend.~ + Bla_9
++ ~You can leave now, gnome. Don’t let me see you again.~ + Bla_9
++ ~SO MUCH TALK! GO AWAY NOW!~ + Bla_9
END

IF ~~ Bla_9
SAY ~I can go! Hurrah!~
IF ~~ UNSOLVED_JOURNAL ~A Matter of Some Cabbages
Spoke with the gnome and learned of gang of bandits that may have considerable treasure and Hubelpot’s gold. A girl named Sweet Fanny Adams is close to one gang member. She may be found on second floor of Copper Coronet.~
DO ~SetGlobal("SC#HubPlot","GLOBAL",2) AddexperienceParty(15000) EscapeArea()~
EXIT
END

END

APPEND SC#GT1
IF WEIGHT #-1
~NumTimesTalkedTo(0)~ GT1
SAY ~If you want to talk, talk to Brinsley!~
IF ~~ EXIT
END

END

APPEND SC#GT2
IF WEIGHT #-1
~NumTimesTalkedTo(0)~ GT2
SAY ~Hmmpfh!~
IF ~~ EXIT
END

END

APPEND SC#Fan
IF ~NumTimesTalkedTo(0)~ Fan_1
SAY ~Hello there my <LADYLORD>. Are you looking for some fun? I’m all booked up right now, but I’m sure we can find a friend for you.~
++ ~Fun? No, my good lady, I am looking for information. Do I have the honor of addressing Sweet Fanny Adams?~ + Fan_2
++ ~I need information. Your name is Adams?~ + Fan_2
++ ~Yes, I’d like some fun. How much?~ + Fan_3
END

IF ~~ Fan_2
SAY ~My, you do have a lovely voice. Yes, I’m Fanny Adams. What would you like to know?~
++ ~I seek knowledge of a band of dangerous men my lady, men of terrible violence. These men attacked a caravan, and did great harm to many.~ + Fan_4
++ ~I need to know what happened to a caravan. It was attacked just outside of the city.~ + Fan_4
++ ~Your "Friend" robbed my caravan. Where is he?~ + Fan_5
END

IF ~~ Fan_3
SAY ~You want the Madam in the back dearie. If she’s not around, just talk to the girls. I’m sure you’ll have a lovely time! *smiles*~
IF ~~ EXIT
END

IF ~~ Fan_4
SAY ~Oh, I wouldn’t know anything about that! The girls here are all but simple women between the ages of sixteen and nineteen and a half, cut off in this tavern with no one to entertain us! Oh, it is a lonely life, bathing, dressing, undressing, making exciting underwear... We are just not used to kind and generous adventurers.~
++ ~Sweet Fanny Adams, the robber of that caravan is known to you. Men have died, Miss Adams. You know their killers. I ask you, please, to share what you know.~ + Fan_5
++ ~Ahem... Perhaps just a little fun... no... Adams, no games. Tell me who robbed the caravan.~ + Fan_5
++ ~You know, I do want some fun. How about it?~ + Fan_3
END

IF ~~ Fan_5
SAY ~Sweetie, perhaps I do know those you seek. Perhaps I know one of them very well. I also know that if I tell you, I risk the loss of a friend, or more. Surely you couldn’t ask that of me?~
++ ~Dear Lady, those whom I seek have committed crimes most foul. Justice must be done. Tell me what you know, and I guarantee your safety.~ + Fan_6
++ ~I am asking that of you, and you are going to tell me. The only question is what it will take.~ + Fan_7
++ ~Tell me. Now. *ready weapon*~ + Fan_8
END

IF ~~ Fan_6
SAY ~I see kind <SIRMAAM>. I see. *frowns in thought* Your words reveal a gentle soul, and I will not be a party to banditry. I will tell you what you want to know.~
IF ~~ GOTO Fan_9
END

IF ~~ Fan_7
SAY ~I see kind sir. Very well, yet such information has value, and I am a woman with needs. What price do you offer me?~
++ ~I think that fifty gold should be might be enough to compensate you.~ + Fan_10
++ ~Twenty five gold, and not a copper more.~ + Fan_11
++ ~Offer you? I offer you your life. *ready weapon*~ + Fan_8
END

IF ~~ Fan_8
SAY ~Wait! Dracandros is the man you seek! He has a place in the bridge district somewhere. Look for him behind a trapped door in the South East of the district, not far from the Temple of Helm. Now if you will excuse me my <LADYLORD>.~
IF ~~ UNSOLVED_JOURNAL ~A Matter of Some Cabbages
Spoke with lady of quite good repute in the Copper Coronet. The caravan was robbed by a gang lead by a man named Dracandros, who hides somewhere in the Bridge District.~
DO ~SetGlobal("SC#HubPlot","GLOBAL",3) AddexperienceParty(15000) EscapeArea()~
EXIT
END

IF ~~ Fan_9
SAY ~Dracandros is the man you seek. Beware kind sir, for he is well armed, and has powerful friends and more powerful masters. He stays somewhere in the Bridge district, in a warehouse in the North East, not far I think from Councilor Balthis’ estate, and well north of the Temple of Helm. Now if I may, I must return to my duties. Be cautious, and fare thee well.~
IF ~~ UNSOLVED_JOURNAL ~A Matter of Some Cabbages
Spoke with lady of quite good repute in the Copper Coronet. The caravan was robbed by a gang led by a man named Dracandros, who hides somewhere in the Bridge District.~
DO ~SetGlobal("SC#HubPlot","GLOBAL",3) AddexperienceParty(15000) EscapeArea()~
EXIT
END

IF ~~ Fan_10
SAY ~Dracandros is the man you seek. Beware kind sir, for he is well armed, and has powerful friends and more powerful masters. He stays somewhere in the Bridge district, in a warehouse in the North East, not far I think from Councilor Balthis’ estate, and well north of the Temple of Helm. Now if I may, I must return to my duties. Be cautious, and fare thee well.~
IF ~~ UNSOLVED_JOURNAL ~A Matter of Some Cabbages
Spoke with lady of quite good repute in the Copper Coronet. The caravan was robbed by a gang led by a man named Dracandros, who hides somewhere in the Bridge District.~
DO ~SetGlobal("SC#HubPlot","GLOBAL",3) AddexperienceParty(15000) TakePartyGold(50) EscapeArea()~
EXIT
END

IF ~~ Fan_11
SAY ~Dracandros is the man you seek. Beware kind sir, for he is well armed, and has powerful friends and more powerful masters. He stays somewhere in the Bridge district, in a warehouse in the North East, not far I think from Councilor Balthis’ estate, and well north of the Temple of Helm. Now if I may, I must return to my duties. Be cautious, and fare thee well.~
IF ~~ UNSOLVED_JOURNAL ~A Matter of Some Cabbages
Spoke with lady of quite good repute in the Copper Coronet. The caravan was robbed by a gang led by a man named Dracandros, who hides somewhere in the Bridge District.~
DO ~SetGlobal("SC#HubPlot","GLOBALS",3) TakePartyGold(25) AddexperienceParty(15000) EscapeArea()~
EXIT
END

END

APPEND INSPECT

IF ~Global("MurdersSolved","GLOBAL",1)~ Aegis_0
SAY ~Is there anything else I can help you with?~
++ ~No, nothing officer.~ + Aegis_1
+ ~Global("SC#HubPlot","GLOBALS",3)~ + ~Yes sir. I was wondering if I could ask you some questions?~ + Aegis_2
END

IF ~~ Aegis_1
SAY ~Well enough then. Good day, citizen.~
IF ~~ EXIT
END

IF ~~ Aegis_2
SAY ~Well enough citizen. How may I help you?~
++ ~I’m looking for a man named Dracandros. I have reason to believe that he may have been involved in an act of banditry outside of the city.~ + Aegis_3
++ ~I’m looking for a group of suspicious characters led by a man named Dracandros.~ + Aegis_3
END

IF ~~ Aegis_3
SAY ~Dracandros? I’ve heard the name. I think he and a few cronies have been seen around a warehouse in the North East of the district.~
++ ~Thank you officer.~ + Aegis_4
END

IF ~~ Aegis_4
SAY ~You're welcome.~
IF ~~ UNSOLVED_JOURNAL ~A Matter of Some Cabbages
Lieutenant Aegisfield informs me that Dracandros has been seen in or around a warehouse somewhere in the North East of the Bridge District.~
DO ~SetGlobal("SC#HubPlot","GLOBAL",4) AddexperienceParty(10000)~
GOTO Aegis_0
END

END

CHAIN IF ~NumTimesTalkedTo(0)~ THEN SC#Ham Ham_0
~Dad! Where have you been! What happened?!~
== SC#HUBJ ~Our Ham! It’s good te see ye boy! How is our Morag!~
== SC#Ham ~She’s worried sick! What in the gods’ names is going on?~
== SC#HUBJ ~Well Ham, ye know about the trouble with the Guild?~
== SC#Ham ~Aye?~
== SC#HUBJ ~It’s all right boy! Ah hae the money! We’re all right!~
== SC#Ham ~Dad! That’s... that’s wonderful.~
== SC#HUBJ ~Here ye go boy. Give this te yer mother, an’ she’ll take care o’ the rest.~
== SC#Ham ~I will, but dad, why can’t you give it back to her yourself?~
== SC#HUBJ ~It’s not that simple Ham. This is <LADYLORD> <CHARNAME>. Without <PRO_HISHER> help, Ah’d never hae got the money back. Now, <CHARNAME> needs mah help.~
== SC#Ham ~Your help? Dad, what are you talking about?~
== SC#HUBJ ~Ham. Ah may hae te be gone fer a while son. Mehbe a long while. Yer ma always had a better hed fer business than Ah. She can run the shop until Ah’m done. Yer a grown man now, Hamlish. Ye can take care o’ yerself, and ye can help yer ma.~
== SC#Ham ~Dad? Are you in trouble?~
== SC#HUBJ ~Nothin’ like that boy! Ah told ye what were happenin’!~
== SC#Ham ~Dad, you’re not a young adventurer. You’re a respectable middle aged vegetable merchant with a leased shop in the promenade. You’re going to get yourself killed.~
== SC#HUBJ ~What! Shut yer mouth boy afore ah give ye the back o’ mah hand! Ah hae a duty, an ah’m goin’ te do it, and you mah son are goin’ te do as yer mother says until Ah get back or Ah’m goin’ te put ye over mah knee an ye know Ah still can!~
== SC#Ham ~*small voice* Yes sir.~
== SC#HUBJ ~Son... Ah just wanted to tell ye... tell yer ma, right?~
== SC#Ham ~Yes dad. You’ll... be ok?~
== SC#HUBJ ~Mah son... *moves to hug Hamlish*~
== SC#Ham ~Dad! *pushes back out of hug*~
== SC#HUBJ ~Take care our Hamlish.~
== SC#Ham ~I’ll take care of everything dad. Don’t you worry.~ DO ~EscapeArea()~
== SC#HUBJ ~Come on mah <LADYLORD>, time te go.~
DO ~SetGlobal("SC#HubPlot","GLOBAL",6) AddexperienceParty(25000) DestroyItem("SC#HuGl")
EraseJournalEntry(@1)
EraseJournalEntry(@2)
EraseJournalEntry(@3)
EraseJournalEntry(@4)
EraseJournalEntry(@5)~
EXIT

