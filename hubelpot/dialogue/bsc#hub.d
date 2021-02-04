/////////////
//         //
// BSC#Hub //
//         //
/////////////

BEGIN BSC#Hub

IF ~Global("SC#HubPC","LOCALS",0)~ PCHub_0
SAY ~*singing* You can bugger the bear if ye do it with care, in the Winter when he is asleep in his lair, thouh Ah would not advise it in Spring or in Fall, but the Hedgehog can never be buggered at all!~ [SC#Hub48]
++ ~What in the names of all the gods was that!~ DO ~SetGlobal("SC#HubPC","LOCALS",1)~ + PCHub_1
++ ~Beautiful! Encore! More!~ DO ~SetGlobal("SC#HubPC","LOCALS",1)~ + PCHub_2
++ ~Shut up. Now.~ DO ~SetGlobal("SC#HubPC","LOCALS",1)~ EXIT
END

IF ~~ PCHub_1
SAY ~Eh? Ah didnae realize ye were listenin’ mah <LADYLORD>. That was one of the great traditional songs of the Ogg family, an’ one of me personal favorites. Would ye care te hear some more?~
++ ~Yes, yes I would.~ + PCHub_2
++ ~It is sort of interesting. . . Sure, let’s hear another verse.~ + PCHub_2
++ ~No.~ + PCHub_4
END

IF ~~ PCHub_2
SAY ~You can bugger the ram, you can bugger the lamb, you can bugger the ewe, though the weather's a sham, you can bugger the tiger (it may caterwaul), but the hedgehog can never be buggered at all.~ [SC#Hub49]
++ ~Very nice! Well sung!~ + PCHub_3
++ ~That was interesting. Please be quiet now.~ + PCHub_3
++ ~Never, ever sing in my presence again.~ + PCHub_4
END

IF ~~ PCHub_3
SAY ~Glad ye liked it mah <LADYLORD>! It’s a fine thing to share joy through the gift of song!~
IF ~~ THEN EXIT
END

IF ~~ PCHub_4
SAY ~Some people just don’t appreciate the joy of music.~
IF ~~ THEN EXIT
END

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Gender("Edwin",FEMALE) //Must be Edwina
Global("SC#HubEdw","LOCALS",0)~ THEN BEDWIN edw1
~Ah once bought a single pouch of them yellow Thayan peppercorns, m'lady, and Ah must say Ah have never figured out how to spice a dish with it. Take that time my old lady put it into the stew, and Ah told her that she should hae waited till the very last moment. All of us burned our tongues raw, I swear t'ye. So on next occasion Morag. . . ~ DO ~SetGlobal("SC#HubEdw","LOCALS",1)~
== BEDWIN ~Why, oh insipid oaf, are you distracting me with that nonsense?~
== BSC#Hub ~Why, Ah’m thinkin' that being a Thayvian ye could tip me on how te prepare the peppercorns –~
== BEDWIN ~A Thayvian male does not spend his time in the kitchens. He eats, and if it is not to his taste he punishes his wife for displeasing him and she in turn punishes the servants.~
== BSC#Hub ~Aye, I see. But than when the servants cook for yer husband lady, ye might hae glimpsed –~
== BEDWIN ~I am not a *LADY*!~
== BSC#Hub ~*stunned*~
= ~As ye say it. . . *grumbles to himself* Neve' saw a wench to be offended with bein' called a lady afore. . . ~
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("SC#HubImo","LOCALS",1)~ THEN BSC#Hub imo2
~All right lassie, Ahl sing it one more time, just fer you. You can bugger the ram, you can bugger the lamb, you can bugger the ewe, though the wether's a sham, you can bugger the tiger (it may caterwaul), but the hedgehog can never be buggered at all.~ DO ~SetGlobal("SC#HubImo","LOCALS",2)~
== IMOEN2J ~Hehe! That’s great Hubelpot! Teach me more!~
== BSC#Hub ~Well, why don’ we do one fer the sweet drow, an all those who call the night their home. Ahem.~
= ~You can bugger the seal, you can bugger the eel, you can bugger the crab, though they say it can't feel, You can bugger the bat as the night casts its pall, but the hedgehog can never be buggered at all.~ [SC#Hub60]
== IMOEN2J ~But the hedgehog can never be buggered at all!~
== BSC#Hub ~That’s right lassie!~
== IMOEN2J ~Hubelpot, what does buggered mean?~
== BSC#Hub ~Eh? Well, um, it means "bothered".~
== IMOEN2J ~Does it? *grins*~
== BSC#Hub ~Ah. . . Hey, look! Ah foun' some rock candy still in me pack! Ye wan' a little before supper?~
== IMOEN2J ~Yes, please. *still grinning*~
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("LavokDead","LOCALS",1) //Lavok must be dead.
Global("SC#HubVal","LOCALS",1)~ THEN BSC#Hub val2
~That kinsman o’yours, Lord Valygar. . . ~ DO ~SetGlobal("SC#HubVal","LOCALS",2)~
== BVALYGA ~Lavok? What of him? I think he finally found his peace of mind. I only wish that I could do the same.~
== BSC#Hub ~Well, if Ah said ye took after him -~
== BVALYGA ~Let me assure you that I do not. I have refused to succumb to the pull that magic exerts on me. I will never become a necromancer.~
== BSC#Hub ~Yeah, ‘course. But complexion-wise, m’lord, is another matter entirely. What I meant to say Lord Lavok, gods rest his soul, looked unhealthy-like. Sort o’bluish in his face.~
== BVALYGA ~Lavok was 500 years old!~
== BSC#Hub ~Aye? Well, then let us all look that crisp when we’re his age. . . ~
== BVALYGA ~Why are you mocking me, Hubelpot?~
== BSC#Hub ~‘tis only good fun, m’lord. There’s no need te be so grim.~
== BVALYGA ~*Stares at Hubelpot*~
== BSC#Hub ~Ah still say that yer lordship needs to drink milk every even, not ale. Helps with bad temper too, aye.~
== BVALYGA ~If only it all was that simple, Hubelpot, if only. . . You do not understand.~
== BSC#Hub ~Aye, forgive me for speaking out of line then, m’lord. I figure that with ye lurkin’ in ‘em woods, milk aren’t that easy to come by.~
EXIT

CHAIN IF
~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AnomenRomanceActive","LOCALS",3) //Anomen says "Are you trying to seduce my Lady behind my back?".
Alignment("Anomen",LAWFUL_GOOD) //Hublepot says "Sir Anomen", which means he must have passed his test.
Global("SC#HubAno","LOCALS",1)~ THEN BSC#Hub ano2
~Sir Anomen, what be ye favorite desert?~ DO ~SetGlobal("SC#HubAno","LOCALS",2)~
== BANOMEN ~What do you want, peasant? I am a paladin of the Order of the Most -~
== BSC#Hub ~Radiant Heart. Aye. . . Ye seem like a man who likes spices. . . Cinammon buns?~
== BANOMEN ~Is that an allusion to my interest in fair <CHARNAME>? Are you trying to mock my love for my Lady?~
== BSC#Hub ~Nae, what for? Have an old lady of mine own back home. . . and a son. . . 'bout your age, and bakes great cinnamon buns.~
== BANOMEN ~Commoner, are you indeed only interested in what sweets I like?~
== BSC#Hub ~Well. . . yes.~
== BANOMEN ~Strawberry rhubarb pie. Pie like my mother backed before my drunken father killed her, before my sister-~
== BSC#Hub ~Strawberry-rhubarb ye say? Well, remind me, laddie, next time we stay in town, Ah'd show ye Mistress Friture's shop. She makes exceptional pastry that one, the best in town. *claps Anomen on his back*~
== BANOMEN ~Can I still tell you how I killed twelve giants?~
== BSC#Hub ~Of course, laddie; and if you do not mind Ah'd ask ye to repeat it when we get to the shop so my sonny hear that one.~
EXIT

CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("SC#HubYos","LOCALS",0)~ THEN BSC#Hub yos1
~'Scuse me a minute laddie.~ DO ~SetGlobal("SC#HubYos","LOCALS",1)~
== BYOSHIM ~Yes?~
== BSC#Hub ~Yer from Kara-Tur, right?~
== BYOSHIM ~That is correct, why do you ask?~
== BSC#Hub ~I mean nothing by it, my interest is culinary in nature.~
== BYOSHIM ~Ahh yes, Kara-Tur is most famous for its cuisine.~
== BSC#Hub ~Ah'll admit, Kara-Tur cuisine is not a subject Ah know well.~
== BYOSHIM ~Cooking is not one of my more developed skills, but I would be willing to show you some of the basic techniques of preparing our dishes.~
== BSC#Hub ~Ah would be honored.~
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("SC#HubMin","LOCALS",0)~ THEN BSC#Hub min1
~Laddie, are ye feelin’ allright?~ DO ~SetGlobal("SC#HubMin","LOCALS",1)~
== BMINSC ~Ooooh! Minsc is filled with pain! Woe is Minsc!~
== BSC#Hub ~Be ye wounded?~
== BMINSC ~Wounds? Minsc laughs at the pain of wounds! Wounds are nothing to the ranger true!~
== BSC#Hub ~Eh? So where’s the pain, lad?~
== BMINSC ~The pain burns in Minsc’s head like fire! We are not talking about any small fire here either! As fires go, this is a big one!~
== BSC#Hub ~Ah see. Well, one second there laddie. . . ~
== BMINSC ~Where?~
== BSC#Hub ~Here ye go! Dried crushed hot pepper. Take just a pinch an’ put it on a little bread like so. Now roll the bread gently between ye fingers te make a pill.~
== BMINSC ~Look Boo, a little pill! It is so cute!~
== BSC#Hub ~Jus’ pop it down laddie, on an empty stomach mind ye. That should take care o’ that fire.~
EXIT

CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("SC#HubMaz","LOCALS",0)~ THEN BSC#Hub maz1
~On a trip o’ two Ah’ve passed thru halfflin’ villages and what caught me eye were the way the bushes were trimmed. Quite artistically, Ah must say.~ DO ~SetGlobal("SC#HubMaz","LOCALS",1)~
== BMAZZY ~My good Hubelpot, I am glad that you give credit to my people’s topiary skills. I have always felt that the art of the garden was a clear window into the civilized soul.~
== BSC#Hub ~Aye, ye’re right lassie. Ah recall now that some of the bushes were no higher than me knee, and were all cut as different animals for the enjoyment o’ the little ones, who tumbled between ‘em. As Ah was looking at ‘em playing Ah was thinkin’ all of Hamlish takin’ a nice girl to wife and Morag and me watchin’ over their children. Such a peaceful place it was, and no bigger than a human’s hearth.~
== BMAZZY ~Things need not be grand to make a person feel happy good Hubelpot. A garden holds a mirror to Nature, and to the gardener as well. Beauty of spirit will shine clear, even through the smallest space.~
== BSC#Hub ~*Smiles into his beard* Well said, lassie, well said.~
== BMAZZY ~Enough talk my friend. It is time, I think to move on. Let us bestir ourselves, arose our swords in defiance of foulness and charge onward to glory and victory!~
== BSC#Hub ~*Sigh* Your sword and me club that be, lassie.~
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("PCKeepOwner","LOCALS",1) //PC must have the keep as stronghold.
Global("SC#HubNal","LOCALS",1)~ THEN BSC#Hub nal2
~So miss Nalia, ye got yeself a good plot of land there, ei?~ DO ~SetGlobal("SC#HubNal","LOCALS",2)~
== BNALIA ~Yes, D’Arnises’ Duchy is quite large.~
== BSC#Hub ~So what d’ya grow?~
== BNALIA ~Oh. . . my family does not work the land. We sublet it to the farmers. My aunt always forbade me to talk to the peasants, so I know very little. Wheat perhaps. . . or was it rye?~
== BSC#Hub ~I saw oats mainly when we passed. Thought that crop looked promising.~
== BNALIA ~My father was a generous master, and <CHARNAME> manages well, but I still think that taxes imposed on the farmers are too high. Of course I need to pay my aunt’s allowance now that she moved to the city, but myself - I can easily live on half what <CHARNAME> sets aside for me. . . Or even on a quarter if I-~
== BSC#Hub ~Missus Nalia, it’s nice that ye care for ye peoples, but do not cut yeself too short. . . Skinny as ye are, ye still need eating.~
== BNALIA ~No food taste better than the one honestly earned or even better - grown by your own labors. I do admire simple men like you who work hard! I once had a row of tomatoes I planted myself. That taught me a very important lesson.~
== BSC#Hub ~Oh, that ye need to cover ‘em or black rot will take ‘em all?~
== BNALIA ~That too. . . But the most important thing I learned while tending my patch was that noble birth counts for nothing with tomato plants. Unless you work hard and care for them they’ll never ripen. Just like simple people need much attention and care from their lords to ripen and grow. I think that every noble needs such an experience.~
== BSC#Hub ~I beg ye pardon missus, but if ye want to grow tomatoes, plant ‘em more southward than ye Keep. Not the right soil here for Tomatoes. Unless ye intend them as evergreens that is.~
== BNALIA ~Oh. . . you mean that in the south tomatoes ripen with less effort?~
== BSC#Hub ~Aye, in Tethyr, one only need to dump a bucket o’ water or two every now and then, and the tomatoes grow big, red and sweet. . . No comparison to our fare.~
== BNALIA ~*Sighs* I am afraid that it would carry a wrong moral message to the ruling class.~
EXIT

CHAIN IF
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("SC#HubCer","LOCALS",0)~ THEN BSC#Hub cer1
~So Cernd, what be ya trade afore ya split from ya missus?~ DO ~SetGlobal("SC#HubCer","LOCALS",1)~
== BCERND ~A vegetable merchant.~
== BSC#Hub ~I thoughts so. . . Figured I heard ya name in the Guild. So how come I dunno ya?~
== BCERND ~We'd only been in Athkatla a few months before I left. . . on my quest to serve Nature. It was three years back.~
== BSC#Hub ~Aye, that explains it. ‘Bout this time, ‘twas a particularly fine crop of beets down south, so I went in hopes to get a bargain afore others hear o’ that.~
== BCERND ~That’s right, Master Hubelpot. Beets were exceptional that year, indeed.~
EXIT

CHAIN IF
~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("SC#HubAer","LOCALS",0)~ THEN BSC#Hub aer1
~Lassie, come here. . . ~ DO ~SetGlobal("SC#HubAer","LOCALS",1)~
== BAERIE ~Wh-what? You. . . you startled me, uncle Hubelpot.~
== BSC#Hub ~*Produces a huge handkerchief with red and white checkered pattern and catches Aerie's nose with it.* Now ye blow, lass, it's no good fer a girl to sniff all th' time.~
== BAERIE ~*Blows her nose delicately* I. . . I am sorry. The air here near the ground is so. . . so itchy.~
== BSC#Hub ~Dusty ye mean? Well, that's road fer ya, lassie. No helping that. Oh, I see ya need to blow ye nose again.~
== BAERIE ~*Blows her nose again, this time more forcefully* Oh, I. . . I miss the skies so much. Ah, Uncle Hubelpot, if only you knew what joy it is to fly. . . ~
== BSC#Hub ~Ya, I know tha feelin'. . . Ya see, lassie, when I was a whisp o'a lad, I wanna marry a pretty thin' just like you.. but then I married missus Thistledown, and now I wan’ no different. Here lassie, take that.~
== BAERIE ~Wh-what is it?~
== BSC#Hub ~ A lolly-pop. Try suckin' on it an' ya throat feel not so raw.~
== BAERIE ~It. . . it does feel better.~
== BSC#Hub ~Aye, wait 'til we get to an inn. Ale, lassie, is the besterest thin' to get rid o'a road dust.~
== BAERIE ~Ale? I.. I do not know if I could drink ale. . . ~
== BSC#Hub ~Princess, even Ao almighty would down a mug or two if he dragged his ass about for a day under a pack full o' dented armour with us.~
== BAERIE ~*Giggles* Do you have. . . another lolly-pop, Master Hubelpot?~
== BSC#Hub ~Aye, here we go.~
EXIT

CHAIN IF
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("SC#HubCer","LOCALS",2)~
THEN BSC#Hub cer3
~What where ya thinkin’ of, Cernd, while closeted down that basement?~ DO ~SetGlobal("SC#HubCer","LOCALS",3)~
== BCERND ~I tried not to let the gloomy thoughts of the slaughtered animals to overcome me. So I was reminiscing on canning. . . mainly asparagus, because the sole ray of glorious sun that penetrated the small window in my cell late in the afternoon was so feeble it reminded me of early spring.~
== BSC#Hub ~Aye, good. So what spices d’ya use for asparagus?~
== BCERND ~Thyme, cherry leaf, cloves. . . black peppers of course.~
== BSC#Hub ~Ah, my missus she’s great believer in adding current’s leaf in it.~
== BCERND ~For pickled cucumbers - perhaps, for tomatoes even, but for asparagus I would not.~
== BSC#Hub ~Mayhap y’a right, lad. Too perky, that.~
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("SC#HubVal","LOCALS",0)~ THEN BSC#Hub val1
~Ah beg yer pardon, young Master Corthala -~ DO ~SetGlobal("SC#HubVal","LOCALS",1)~
== BVALYGA ~Hubelpot, do me a favor -~
== BSC#Hub ~Aye, Ah misspoke again, me bad. Mah good Lord Cortha-~
== BVALYGA ~I am no lord!~
== BSC#Hub ~How come? Yer lord father was a lord and yer lady mother was a lady -~
== BVALYGA ~*bitterly* My "lady" mother was a lich, Hubelpot and turned my "lord" father into a zombie!~
== BSC#Hub ~Aye, that’s nae lady-like, but w’all have our quirks. *Shakes his head* Coulda been worse, eh?~
== BVALYGA ~Uh-huh.~
== BSC#Hub ~Like if her ladyship would turn your lordship’s father into a skeleton. . . no meat at all on ‘em buggers. Such indecency.~
EXIT

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("SC#HubHae","LOCALS",0)~ THEN BSC#Hub hae1
~Laddie, Ah wuz wonderin’ if ye could satisfy me curiosity a bit?~ DO ~SetGlobal("SC#HubHae","LOCALS",1)~
== BHAERDA ~Ah my dear Old mother hen, I’ll gladly bandy words with you. To satisfy your searching wit, what might this fledgling cockerel do?~
== BSC#Hub ~Eh? Laddie, um, Ah’d ask ye please nae te call me a hen.~
== BHAERDA ~Ha! Cluck not in anger my nurturing friend! I merely point out your self to you, and mean not to offend. *Grins*~
== BSC#Hub ~Er . . . look, laddie, Ah don’ wan’ te be arguing aboat this, bu’ yer bein' a might irritatin’. Also, what’s wi’ the rhymin’?~
== BHAERDA ~Poor mother hen with ruffled feathers, distracted now from your endeavors. Tell me, what was it you wished to know? Wished you to hear some tale of woe?~
== BSC#Hub ~Actually, Ah wuz wonderin’ what kind of gardens ye’d seen in Sigil. How they were laid out, the sculpture an’ such. Now if ye’d rather play rhymin’ bird games that’s fair enough. Ah’ll get back to me cookin’.~
== BHAERDA ~Gardens? You show surprising grace old mother hen! Wish you to hear of the Lady’s garden?~
== BSC#Hub ~Aht this point, no.~
== BHAERDA ~Hah! Listen well! In the City of Doors did the Lady of Pain a stately pleasure dome decree. . . ~
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("SC#HubImo","LOCALS",0)~ THEN BSC#Hub imo1
~Ay there lassie.~ DO ~SetGlobal("SC#HubImo","LOCALS",1)~
== IMOEN2J ~Huh! What! Oh. . . Hubelpot. You sure are sneaky for such a big man.~
== BSC#Hub ~Am Ah? We’ll, Ah’ll work on makin’ more noise then. Ah gots some nice blueberries, an’ Ah wuz wonderin’ if ye’d like ‘em now with honey-cakes, or mixed in wi’ some porridge in tha’ mornin’.~
== IMOEN2J ~Ooh! Blueberries with honey-cakes! Gimmee gimmee gimmee!~
== BSC#Hub ~Heh, ye’ remind me of me niece. Here, ye can hae two honey cakes now an’ a cup full o’ berries, an’ we’ll hae the rest wi’ breakfast.~
== IMOEN2J ~Mmm. These are nice. They remind me of. . . well, you wouldn’t be interested.~
== BSC#Hub ~Maybe Ah would be lassie, maybe Ah would. Ye never know. Here, let me get ye some water, ye’ve got some blue on ye’r chin.~
== IMOEN2J ~Hubelpot, where did you get blueberries around here?~
== BSC#Hub ~Every man hae his secrets, lassie.~
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("SC#HubNal","LOCALS",0)~ THEN BSC#Hub nal1
~Aye, ye are a kind hearted lassie, what wi' helpin' the poor an' all.~ DO ~SetGlobal("SC#HubNal","LOCALS",1)~
== BNALIA ~Why, thank you. It’s not that though. I’m just trying to do what’s right.~
== BSC#Hub ~An’ that’s a good thing miss. Say, do ye drink mead?~
== BNALIA ~I mean, I try to help the less fortunate.~
== BSC#Hub ~Ah can see that. Anyway, we’re almost out o’ beer, an’ this wine nae be good, but ah hae some mead in mah pack. . . ~
== BNALIA ~The lower orders struggle so, your lives so difficult, and I feel so bad for you all. You must so crave the tiniest acts of compassion, the smallest crumbs of kindness.~
== BSC#Hub ~Err. . . Yes. We’re all very grateful. Try the mead, there be bits o’ apple in it. It’s almost scumble, but nae as strong.~
== BNALIA ~I am sorry Hubelpot. I must sound as smug as my Auntie. Have you ever felt the need to reach out to those less fortunate?~
== BSC#Hub ~Wha? Yes, miss. Ah remember once when a street kid ran into me shop. Grabbed a customer’s purse an’ tried to do a runner. Luckilly Ah haid me sling handy. Got him wi’ a stone right behin’ the ear.~
== BNALIA ~What! How could you! That is not helping the less fortunate!~
== BSC#Hub ~Mehbe so. Still, mah customer thought it were helpful. She got te keep her purse. As te the little laddie, Ah put him to useful work muckin’ out the pigs. A little honest work does the soul some good.~
== BNALIA ~And. . . Did the boy reform?~
== BSC#Hub ~Nah. Little bugger kicked me a good one in me danglies an’ scarpered a few days after.~
== BNALIA ~Hubelpot! I don’t think you’ve understood what I’m talking about at all!~
== BSC#Hub ~Ah might nae hae followed ye missy. So, will ye be wantin’ some mead then?~
EXIT

CHAIN IF
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("SC#HubCer","LOCALS",1)~
THEN BSC#Hub cer2
~Can I still count ya as a fellow vegetable merchant, Cernd? I miss talkin' 'bout bussiness, ya know.~ DO ~SetGlobal("SC#HubCer","LOCALS",2)~
== BCERND ~If the winds so move you, Master Hubelpot.~
== BSC#Hub ~Say, there’s somethin’ in our trade that makes one wanna learn the secrets o’ the land.~
== BCERND ~Perhaps the closeness to the nature’s generous bounty puts one in the philosophical frame of mind that compels him to protect the Great Mother.~
== BSC#Hub ~Ya said it, laddie. I was a wee lad, and me father he had a small farm o’ his own. . . So I’d be goin’ out every morn, afore dawn to collect cow paddies. . . and they all be covered with morning dew. . . and I’d think of all’ya good thing’ that’ll grow even better. I reckon anyone would wanna serve Chauntea if he’d got that frame.~
EXIT

CHAIN IF WEIGHT #30
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubAno","LOCALS",0)~ THEN BANOMEN ano1
~- . . . and so I asked “Fair lady, how are you this day?”~ DO ~SetGlobal("SC#HubAno","LOCALS",1)~
== BSC#Hub ~Don't ye think that “Fair Lady” be a little over used?~
== BANOMEN ~Forgive me sir, I was only speaking from my heart.~
== BSC#Hub ~Point taken and Ah apologize, good sir.~
== BANOMEN ~Accepted. Forgive me if I seem defensive. It would seem that it is popular these days to criticize my manner of speech, and indeed my manner in general.~
== BSC#Hub ~Terrible sorry to hear that mah friend. Tell yr what, tonight Ah’ll make yer favorite fer dinner. Last time we were in the forest, Ah managed to trap a couple of wild Amnish hens.~
== BANOMEN ~Ha, ha! Lead on good fellow! My <LADYLORD> <CHARNAME>, perhaps you will do me the pleasure of dining with me tonight?~
EXIT

CHAIN IF WEIGHT #0
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubEdw","LOCALS",0)~ THEN BEDWIN edw1
~Simian!(No wait, it is too generous for this. . . pot crowned with cabbage) You. . . there *snapps his fingers*~ DO ~SetGlobal("SC#HubEdw","LOCALS",1)~
== BSC#Hub ~Aye, missus?~
== BEDWIN ~What? How dare you to address a Thayvian male in such a manner?!~
== BSC#Hub ~Meant no offence, sir. Ah was thinking that ye be playing a bit o’ mask ball or some such game. Nobles are big on that sort o' thing. What, with pretendin' that we're all from that Siam country. . . so tried to play along, sir.~
== BEDWIN ~Congratulations, Hubelpot. You have just managed to drop my opinion on the intellectual capabilities of others yet another notch. (and I thought it was impossible to do so).~
== BSC#Hub ~Thank you, sir. So ye not be playin' a lady then, sir?~
== BEDWIN ~NO! Do not you see my perfectly conditioned and styled beard?~
== BSC#Hub ~Well, I thought it was a part of the joke. . . I mean, same as the red robes. . . ~
== BEDWIN ~Have you a knowledge of the most evil, darkest and most destructive spell that a mage produced?~
== BSC#Hub ~No, sir, A'm but a simple merchant. Or do ye’ mean that one wi’ the three balls an’ the doves, cause that one is. . . ~
== BEDWIN ~No! Of course you do not! Because I am working on creating it. . . and your prattle motivates me like nothing else to complete it.~
== BSC#Hub ~Glad t' be of help, sir.~
EXIT

CHAIN IF WEIGHT #5
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubHae","LOCALS",0)~ THEN BHAERDA hae2
~Ah, my common vole, allow me to exhilarate you with the songs of nature’s beauty, wild and unbowed by men’s obsession with order, their need to sow instead of harvesting what nature decides to offer herself.~ DO ~SetGlobal("SC#HubHae","LOCALS",1)~
== BSC#Hub ~"Common Vole?"~
== BHAERDA ~Would you prefer "Old Mother Hen"?~
== BSC#Hub ~Vole it is then.~
== BHAERDA ~Now, my common vole, listen to my song. . . ~
== BSC#Hub ~Ah see. . . Well, mah heart usually sings at the sight of piles after piles of big, juicy potatoes, fer I know the family will have a good time and tables will be set aplenty.~
== BHAERDA ~Your tale tells of force and bondage, whereas the prairies where sage grows unattended truly inspire songs about rough beauty and acerbity.~
== BSC#Hub ~Let me tell ye wha' poetry is. Lookin' at a field o' wheat as it bends and bows in the wind, displayin' colors o' green water under the sun . . . ~
== BHAERDA ~Ah. . . there is a poet’s soul hidden under the plain costume of the vole, but strict and stern it is, like the fields you speak of.~
== BSC#Hub ~Strict they look te ye. Inspiring they are for me. Lookin' at a field o' ripe wheat, golden and rich . . . reminds me of a song.~
== BHAERDA ~You are reminded of a song? How unexpected and intriguing! Do share, my vole, do share.~
== BSC#Hub ~Mehbe later.~
EXIT

CHAIN IF WEIGHT #10
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubHae","LOCALS",1)~ THEN BHAERDA hae3
~Well my common vole, you told me that you had been reminded of a song, a tribute to natures beauty as bound by man. Are you ready now to share your song with me?~ DO ~SetGlobal("SC#HubHae","LOCALS",2)~
== BSC#Hub ~Ah well. . . Why not?~
= ~First Ah let two spoons full of rich golden butter melt in a pot and enhance it with half a spoon of thistle oil. Who would think that such a neglected weed makes for the best oil to be found, by the way? But mind the heat must be low, because both, butter and thistle oil don’t like it too hot.~
= ~Ah add a clove or two of garlic, neatly mashed, and two rough cut onions and stir until the onions look like bits o' glass.~
= ~For taste and health two stalks o' celery, chopped, and for color and nutrition five handy potatoes, diced to inch by inch. At least six of them small gourds cut in bite-sized chips. All that goes into the pot and is stewed slowly as long as it takes for the ingredients to collapse with tiny sizzles.~
= ~For flavor Ah take a good pinch o' dried thyme, then mix it with a small pinch o' dried tarragon and a better pinch o' dried sage. Solar salt te carry the flavors an' a good hand full of herbal salts te add te the potatoes. A pinch o' red hot chilli pepper fer the bite, an' some nutmeg always goes well with them potatoes.~
= ~In Summer Ah get them herbs fresh from Morag’s beds, which makes the soup a whole different but just as fine experience.~
= ~Ah add water to cover the lot and bring it to the boil. Ah lid the pot and reduce the heat, te let the vegetable extract for aroun' 20 minutes. When they're soft an' tender they're te cool down fer a bit.~
= ~Then comes the secret that makes the poem of potato soup. Ah mash it wi' care but just enough force, until the soup is a golden cream that almost looks like them fields of ripe wheat in the mornin' sun.~
= ~Ah heat up again, softly stirring fer Ah d’nae want the cream to stick to the pot. While Ah stir Ah sing the song the farmers sing when they go and cut the wheat.~
== BHAERDA ~And what song would that be?~
== BSC#Hub ~"A Wizard's Staff Has a Knob on the End"~
== BHAERDA ~Hubelpot, my vole, it surely is a wonder to behold, but not what I expected.~
== BSC#Hub ~Do tell.~
EXIT

CHAIN IF WEIGHT #-1
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
!AreaType(DUNGEON) //cannot be in a dungeon
TimeOfDay(DAY) //can't be at night
Global("LadyMaria","LOCALS",5)
Global("SC#HubKel","LOCALS",0)~ THEN BKELDOR kel1
~It is a fine day my friend. On a day like this I feel young again.~ DO ~SetGlobal("SC#HubKel","LOCALS",1)~
== BSC#Hub ~Ye’re in good spirits today Sir Knight.~
== BKELDOR ~And why should I not be, good Hubelpot? My lady and I are reconciled, my children are happy, and I am grateful. What more could a man ask of life?~
== BSC#Hub ~He could ask for breakfast, Sir Knight.~
== BKELDOR ~Hah! Right you are!~
== BSC#Hub ~Fear not, Sir Knight. I hae slain ye some bread an’ jam, an’ Ah think Ah ken add some small beer to yer feast.~
== BKELDOR ~A mighty feast indeed!~
== BSC#Hub ~If Ah may say so Sir Knight, this new mood suits ye.~
== BKELDOR ~Thank you Hubelpot. As I said, it is a good day. Pass the small beer, would you?~
EXIT

CHAIN IF WEIGHT #15
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubKor","LOCALS",0)~ THEN BKORGAN kor1
~Eh?~ DO ~SetGlobal("SC#HubKor","LOCALS",1)~
== BSC#Hub ~Eh?~
== BKORGAN ~Ohh-ar.~
== BSC#Hub ~Aye.~
== BKORGAN ~*Braaap*~
== BSC#Hub ~Heh.~
EXIT

CHAIN IF WEIGHT #40
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubVic","LOCALS",0)~ THEN BVICONI vic1
~I see your eyes upon me lowly male. Could it be that desire burns still within your aged flesh?~ DO ~SetGlobal("SC#HubVic","LOCALS",1)~
== BSC#Hub ~Eh? What?~
== BVICONI ~Have I distressed you rivvil? Does the exploration of your licentious nature shame you?~
== BSC#Hub ~Lassie, hauf ra time ah cannae mense whit yer gang oan aboot. Gin yer aiblins wantin tae ken whitsitawboot, ah wiz wunnrin whit drow like fer scran?~
== BVICONI ~What? Speak common wael!~
== BSC#Hub ~Sorry lass, ah cannae spraff "wael", common ur itherwise.~
== BVICONI ~Ah? Do you try to play games with me? Do you deny then the surging lust I elicit from you male!~
== BSC#Hub ~Ar? Yer aye ae bonnie lass, boat ma wife wadna hae wi tha.~
== BVICONI ~What?~
== BSC#Hub ~Look, jus’ answer. Ye cannae huv proper farmin’ undergroon’, boat ye’ve gart muckle greet cities. Plain common: What do drow eat?~
== BVICONI ~You want to know what drow eat?~
== BSC#Hub ~Yes.~
== BVICONI ~We. . . We have great caverns filled with delicate fungi of a thousand hues, and we hunt beasts large and small, beasts the likes of which you have never dared to dream!~
== BSC#Hub ~You feed cities on mushrooms and game meat?~
== BVICONI ~We also have some tubers.~
== BSC#Hub ~So meat, potatoes and mushrooms then.~
== BVICONI ~Well, yes. We also eat fish.~
== BSC#Hub ~Ah.~
== BVICONI ~The fish are shining white, gigantic creatures, gifted with a rare and malevolent intelligence!~
== BSC#Hub ~Ah’m sure.~
== BVICONI ~You do know of the dark pleasures of the body in which Drow and Drow alone are trained?~
== BSC#Hub ~Look, Ah’m cookin’ up some pigeon tonight, wi' mushrooms an' onions. There’s also bread an’ honey. Will tha' be ok?~
== BVICONI ~Do we have any apples left?~
== BSC#Hub ~Of course lassie. Would yeh like one?~
== BVICONI ~Yes. And some extra mushrooms.~
== BSC#Hub ~Mah pleasure.~
EXIT

CHAIN IF WEIGHT #64
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJah","LOCALS",0)~ THEN BJAHEIR jah1
~Hubelpot, you need to think on your role as a druid more deeply.~ DO ~SetGlobal("SC#HubJah","LOCALS",1)~
== BSC#Hub ~Whatever do ye mean lassie?~
== BJAHEIR ~You forget your duties to nature and balance, obsessing over farming. As a druid you must acknowledge the terrible damage done by farms. There is more to the service of Nature than service to the needs of Men.~
== BSC#Hub ~. . . Well lassie, sometime ye need to think o’ the needs o’ human folk. Are ye hungry?~
== BJAHEIR ~Do not change the subject, Hubelpot. Deception does not become you. I acknowledge the role of humans in the balance. Their needs must be accounted for, but they do not outweigh the needs of Nature’s other children.~
== BSC#Hub ~Aye, aye. Ah'll have ye know that Ah do respect the needs of creatures great an' small. Still, farming has taught me some lessons. If ye wish te build a farm that'll thrive, ye first have to deal with rabbits and pests sneaking in te eat yer crops -~
== BJAHEIR ~Your arguments wander again, and in a most unpleasant direction! You do not mean to defend the use of traps and poisons?!~
== BSC#Hub ~No, no Ah don't. No, Ah make sure and plant enough to share. Mixing the crops a bit helps with the insects, an’ the missus always keeps some cats aboot. Nothin’ like a few cats te keep down rodents.~
== BJAHEIR ~I see. Using the balance to protect your farms, which in turn disturb the balance. I do not condemn your practices, but the fact remains that your actions are solely in the service of Man, not the service of Nature.~
== BSC#Hub ~Mehbe. On the other han’, Ah figure peasants an’ city folks hae as much right te eat as rabbits and rats. The land is healthier after a few years under mah care, well nourished and well tilled.~
== BJAHEIR ~Healthier!? The land screams under the care of farmers! The forests are pushed back by human farms, the animals displaced by swelling human cities, habitats lost and the balance disrupted! Rivers run brown with human filth and the skies themselves are discolored! How can even a Druid of Chauntea ignore such horrors?!~
== BSC#Hub ~Aye, there’s a problem there. In a few hundred years there could be trouble. Fer now, peasant folk starve. They hae precious little comfort, freezin’ in winter, fryin’ in summer, what little they hae can be taken from ‘em by bandits, nobles an' worse. Those fine forests are filled wi’ wolves an’ bears an’ nameless beasts, things that’ll come out o’ the green te rip a man’s livelihood from him and leave his family te starve. Ah’ll worry aboat mah own folks. Ah trust ye’ll care for the forests.~
== BJAHEIR ~That is short-sighted, Hubelpot. Without balance, the race of man can not survive. It will choke on its own poisons. Your views are unworthy of a Druid.~
== BSC#Hub ~Mehbe so. Now what about dinner tonight? All this talk about rabbits and vegetables has got me craving mah famous rabbit stew. Would ye do me the honor of joinin’ mah hunt?~
== BJAHEIR ~Hmmph!~
EXIT

CHAIN IF WEIGHT #12
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubMin","LOCALS",0)~ THEN BMINSC min2
~EYARARARAGHHH!!!~ DO ~SetGlobal("SC#HubMin","LOCALS",1)~
== BSC#Hub ~Huh?! What?! What’s goin’ on?!!~
== BMINSC ~The fire is back!~
== BSC#Hub ~Eh? The fire in yer head?~
== BMINSC ~Now the fire burns in parts of Minsc that Boo forbids Minsc to mention!~
== BSC#Hub ~Oh. Ah see.~
== BMINSC ~No little vegetable man, you do not see. Minsc is most careful about such things, and his faithful Boo keeps constant guard on Minsc's modesty.~
== BSC#Hub ~Ah meant . . .~
== BMINSC ~Meaning? Of what value is meaning to Minsc, when Minsc’s bottom is beset be the hot pokers of Evil! Quickly vegeatable man, you must give Minsc more of the red powder!~
== BSC#Hub ~More? Laddie, Ah gave ye enough crushed pepper te last ye a week. Ah showed ye how . . .~
== BMINSC ~Yes, well, Minsc was still in some pain even after following the instructions of the vegetable man. Boo was sleeping, but Minsc reasoned that if a little of the powder made the pain less, then more of the powder would make it even more less, and all of the powder would take away all of the pain! Minsc was right! Minsc took all of the red powder, and his head was free of fire as it had not been since Minsc was a small ranger playing in the fields of his home!~
== BSC#Hub ~Oh.~
== BMINSC ~But now the terrible fire is back, though much lower, and Minsc must have more of the powder to do battle against it!~
== BSC#Hub ~Laddie, Ah’m afraid that more powder is not what ye need. What ye need is milk. Mehbe yogurt. Let’s see what we hae. . . ~
EXIT

CHAIN IF WEIGHT #3
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJan","LOCALS",0)~ THEN BJAN jan1
~So Hubelpot, you’ve decided to leave the exciting world of high stakes vegetable marketing for the quiet stability of the adventuring life?~ DO ~SetGlobal("SC#HubJan","LOCALS",1)~
== BSC#Hub ~Oh? Aye, ah suppose.~
== BJAN ~Well, I’m sure you’ve made the right decision. I remember when my dear, sweet Aunt Petunia first decided to take to the road. . . ~
== BSC#Hub ~The lass with the beard?~
== BJAN ~The very same! Now Aunt Petunia once was a simple farm girl, why she had nothing more to her name than a very large house made out of flat bread and an enormous wagon carved from a single pomegranate. . . ~
== BSC#Hub ~A house made out of flat bread?~
== BJAN ~Yes, she started as an apprentice witch you know, but she was never very good with sweets, and those gingerbread cottages attract mice. Also, Petunia had a weight problem, not serious you understand, but in the end the flatbread seemed like a healthier choice.~
== BSC#Hub ~Ah can imagine.~
== BJAN ~Well now Aunt Petunia had hear of a magnificent treasure in the realm of enchanted baked goods, The Eternally Self Renewing Loaf of Rye. At the time it was in the hands of a powerful and unfriendly Pastryomancer named Levinia. . . ~
== BSC#Hub ~Pastry-o-mancer?~
== BJAN ~Yes. You know your boy Hamlish might want to consider Pastryomancy as a career path. . . ~
== BSC#Hub ~Wait now! Git back to yer Aunt Petunia an’ this Loaf.~
== BJAN ~Oh that. Well, as I was saying, the loaf was in the hands of Levinia, and so Petunia grabbed for it. You see, Petunia knew that if she could just get the entire loaf, she could use it to overpower Levinia, end her evil reign, and win recognition as a true mistress of the baking arts! Not mistress in the *heh* physical sense of course. . . ~
== BSC#Hub ~So did she do it then?~
== BJAN ~Do what?~
== BSC#Hub ~Did yer Auntie manage to defeat this Levinia?~
== BJAN ~Well no, no she didn’t. She only managed to pull away half the Loaf. Naturally, she had no choice but to flee! She took to the road that very day.~
== BSC#Hub ~Eh? Wha’d she have to flee?~
== BJAN ~Hubelpot! I’m surprised!~
== BSC#Hub ~Surprised?~
== BJAN ~Haven’t you heard that with half a loaf it’s better to run?~
== BSC#Hub ~"Half a loaf it’s better to run?" . . . that’s awful Jansen.~
== BJAN ~Awful Jansen! Now there’s a name I haven’t heard in years! Have I ever told you. . . ~
EXIT

CHAIN IF WEIGHT #5
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJan","LOCALS",1)~ THEN BJAN jan2
~You know Hubelpot, I always thought only cousin Griseldis, gods bless her soul, had mastered the vegetable cabbage. However, and it must be said, I have never tasted a better cabbage soup than yours.~ DO ~SetGlobal("SC#HubJan","LOCALS",2)~
== BSC#Hub ~Ah. . . thank ye, Jan. It do make a man proud when his cabbages are appreciated. This soup hae brought joy into mah house in a rough time.~
== BJAN ~From one with a love for vegetables to another, do tell.~
== BSC#Hub ~Eh, well. . . It’s nae a secret, but I guess it’s nae a story likely te be sung by bards either.~
== BJAN ~My old friend, you know that I am a gnome who appreciates a story about good cooking.~
== BSC#Hub ~A gnome after me own heart. Listen then. . . ~
= ~This happened a few years back, when we had a bad crop. Vegetables were rotting in the fields and business was slow. Morag’s spirits were low, an’ we were gettin’ more ‘an a mite desperate. So, Ah decided to treat the family to a feast, using what we could find and spare in the shop.~
== BJAN ~Nothing like a feast to put off fears of impending starvation.~
== BSC#Hub ~Morag an’ I searched through our stores and we found two fleshy cabbages. They were getting a bit on the brown side ye understand’ yet I had been praticin a bit of the lore o’ Chauntea me da’ taught me. Ah prayed, Ah sang her praises, an’ she gave me a miracle! The cabbages freshened before our very eyes!~
== BJAN ~The miracle of the cabbages! Truly an inspiration for us all! Still, I think that there is more to your soup. Spill it out, Hubelpot.~
== BSC#Hub ~Indeed there is. Still, we best be movin’ on. Ah’ll tell ye more later mah good gnome.~
EXIT

CHAIN IF WEIGHT #7
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJan","LOCALS",2)~ THEN BJAN jan3
~Hubelpot, I believe that we were discussing the Miracle of the Cabbages?~ DO ~SetGlobal("SC#HubJan","LOCALS",3)~
== BSC#Hub ~Eh? Ye want te hear the rest o’ that story?~
== BJAN ~But of course! Unless you’d like to discuss this one time, it must have been, oh, I don’t know. . . ~
== BSC#Hub ~Right. Well, there was no way to cook anything fancy with what me an’ the wife had found, miracle or no. There was only one thing to do. Cook cabbage soup with pleasure and dedication!~
= ~So Ah began choppin’ them cabbages up, with a song of praise fer Chauntea on mah lips, down te about a half an inch long by 2 inches wide strips. Very fine so Ah could get out every last drop o’ flavour.~
= ~Ah then proceeded to bung them in a big pan, stirred a little and left it to soak in some water.~
= ~Ah measured in just enough grinded rice to give the meal some thickness and added a sack of brown lentils.~
== BJAN ~Rice. . . and lentils? In a cabbage soup?~
== BSC#Hub ~Don't give me that look. None of this is so out of the ordinary, although mehbe mixing lentils and rice isn't your common all garden cabbage soup idea but. . . never mind.~
== BJAN ~Hubelpot, I thought your family was in danger of starvation? Where did you get the rice and lentils?~
== BSC#Hub ~Not immediate danger, ye understan’. We were in trouble, but nae dead yet. Now do ye want te hear this?~
== BJAN ~Yes, of course.~
== BSC#Hub ~Right. Mah Morag also spared six fresh tomatoes, just enough te give some taste and color to the cabbages. Ah cut out the centers and mashed them down to a near paste which again Ah added to mah largest pot.~
= ~Now the stage was almost set. Just two last things to do.~
== BJAN ~I know! I know! The one and only thing not to be left out of anything. . . ~
== BSC#Hub ~Nah! Never interrupt a man when he is reminiscin’. Ah was referrin’, of course to, the most important thing, the flavor!~
= ~Ah pleaded Morag to loot her herbal garden and vinegar collection, the best ones you hae ever seen by the way. So now I had Oregano, Basil vinegar, a nice balsamic vinegar, some pinches of herbal salts and mah secret basic spice blend I have always prepared.~
== BJAN ~So there is a secret after all!~
== BSC#Hub ~Aye, so there is, but one Ah will nae share so easily. <CHARNAME> is lookin’ a bit antsy. Ah think we’d best continue this later.~
EXIT

CHAIN IF WEIGHT #8
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJan","LOCALS",3)~ THEN BJAN jan4
~Well Hubelpot, we don’t seem to be too busy at the moment. You know, I remember once when my Aunt Griseldis. . . ~ DO ~SetGlobal("SC#HubJan","LOCALS",4)~
== BSC#Hub ~The one with the cabbages?~
== BJAN ~The very same! Say, Hubelpot, you never did tell me the secret of your soup.~
== BSC#Hub ~Didn’t Ah? Would Ye like te hear more?~
== BJAN ~I would, I would!~
== BSC#Hub ~Well, where was Ah. Oh yes. Ahem.~
= ~Ah mixed all my flavors to a paste. Ah knew Ah would need half a cup-full as it were a large pot. When the levels were correct and the flavor was exact Ah added it to the now brimming pot.~
= ~The last step was to fill with some purified water and to boil fer a couple hours on a low heat, mixin’ occasionally, sometimes with force to blend the flavours, and always with the song on my lips the farmers sing when they go and dig out the potatoes.~
== BJAN ~Yes indeed! The beauty of the Potato Song provides a fine compliment to any meal.~
== BSC#Hub ~. . . and so Ah waited, till finally its softness and aroma had peaked, so quickly Ah removed it from the boil and sat it to cool.~
= ~The tension mounted as Ah knew Ah’d have te wait 10 minutes te see if it had been a success. . . ~
== BJAN ~Nothing quite like the tension of the dedicated student of cookery.~
== BSC#Hub ~Suddenly horror hit me! I had forgotten the pepper and chili! So Ah dashed to the pot an’ added a bit of pepper and chili, and returned it to the boil for 10 more minutes to mix in the spice.~
= ~The waiting continued then onto the final tasting time.~
= ~Ah dipped my spoon inside the pot, my large rounded spoon so Ah could sample all the ingredients in this broth at once. . . ~
= ~. . . Ah blew on it twice fer luck an’ finally tasted it. . . ~
= ~. . .~
== BJAN ~Yes? Yes?~
== BSC#Hub ~SUCCCESSSSSS!!! It was delicious and the spices served to give it that subtle tingle on the tongue yet not enough te burn. The herbs an’ salt added the savory and the meal was as Ah had hoped. Brimming with taste albeit lacking in Calories.~
== BJAN ~If I give you the secret of Auntie Sigunde's apple pie, will you let me have that secret spice blend?~
== BSC#Hub ~We will see, Jan, we will see.~
EXIT

