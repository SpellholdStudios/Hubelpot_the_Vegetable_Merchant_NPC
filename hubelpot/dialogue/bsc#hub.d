/////////////
//         //
// BSC#Hub //
//         //
/////////////

BEGIN BSC#Hub

IF ~Global("SC#HubPC","LOCALS",0)~ PCHub_0
SAY @0
++ @1 DO ~SetGlobal("SC#HubPC","LOCALS",1)~ + PCHub_1
++ @2 DO ~SetGlobal("SC#HubPC","LOCALS",1)~ + PCHub_2
++ @3 DO ~SetGlobal("SC#HubPC","LOCALS",1)~ EXIT
END

IF ~~ PCHub_1
SAY @4
++ @5 + PCHub_2
++ @6 + PCHub_2
++ @7 + PCHub_4
END

IF ~~ PCHub_2
SAY @8
++ @9 + PCHub_3
++ @10 + PCHub_3
++ @11 + PCHub_4
END

IF ~~ PCHub_3
SAY @12
IF ~~ THEN EXIT
END

IF ~~ PCHub_4
SAY @13
IF ~~ THEN EXIT
END

CHAIN IF ~InParty("Edwin")
See("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
Gender("Edwin",FEMALE) //Must be Edwina
Global("SC#HubEdwina","LOCALS",0)~ THEN BSC#Hub edw1
@14 DO ~SetGlobal("SC#HubEdwina","LOCALS",1)~
== BEDWIN @15
== BSC#Hub @16
== BEDWIN @17
== BSC#Hub @18
== BEDWIN @19
== BSC#Hub @20
= @21
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("SC#HubImo","LOCALS",1)~ THEN BSC#Hub imo2
@22 DO ~SetGlobal("SC#HubImo","LOCALS",2)~
== IMOEN2J @23
== BSC#Hub @24
= @25
== IMOEN2J @26
== BSC#Hub @27
== IMOEN2J @28
== BSC#Hub @29
== IMOEN2J @30
== BSC#Hub @31
== IMOEN2J @32
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("LavokDead","GLOBAL",1) //Lavok must be dead.
Global("SC#HubVal","LOCALS",1)~ THEN BSC#Hub val2
@33 DO ~SetGlobal("SC#HubVal","LOCALS",2)~
== BVALYGA @34
== BSC#Hub @35
== BVALYGA @36
== BSC#Hub @37
== BVALYGA @38
== BSC#Hub @39
== BVALYGA @40
== BSC#Hub @41
== BVALYGA @42
== BSC#Hub @43
== BVALYGA @44
== BSC#Hub @45
EXIT

CHAIN IF
~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
Global("AnomenRomanceActive","GLOBAL",3) //Anomen says "Are you trying to seduce my Lady behind my back?".
Alignment("Anomen",LAWFUL_GOOD) //Hublepot says "Sir Anomen", which means he must have passed his test.
Global("SC#HubAno","GLOBAL",1)~ THEN BSC#Hub ano2
@46 DO ~SetGlobal("SC#HubAno","GLOBAL",2)~
== BANOMEN @47
== BSC#Hub @48
== BANOMEN @49
== BSC#Hub @50
== BANOMEN @51
== BSC#Hub @52
== BANOMEN @53
== BSC#Hub @54
== BANOMEN @55
== BSC#Hub @56
EXIT

CHAIN IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
Global("SC#HubYos","LOCALS",0)~ THEN BSC#Hub yos1
@57 DO ~SetGlobal("SC#HubYos","LOCALS",1)~
== BYOSHIM @58
== BSC#Hub @59
== BYOSHIM @60
== BSC#Hub @61
== BYOSHIM @62
== BSC#Hub @63
== BYOSHIM @64
== BSC#Hub @65
EXIT

CHAIN IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
Global("SC#HubMin","GLOBAL",0)~ THEN BSC#Hub sc#minhub1
@66 DO ~SetGlobal("SC#HubMin","GLOBAL",1)~
== BMINSC @67
== BSC#Hub @68
== BMINSC @69
== BSC#Hub @70
== BMINSC @71
== BSC#Hub @72
== BMINSC @73
== BSC#Hub @74
== BMINSC @75
== BSC#Hub @76
EXIT

CHAIN IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("SC#HubMaz","LOCALS",0)~ THEN BSC#Hub maz1
@77 DO ~SetGlobal("SC#HubMaz","LOCALS",1)~
== BMAZZY @78
== BSC#Hub @79
== BMAZZY @80
== BSC#Hub @81
== BMAZZY @82
== BSC#Hub @83
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("PCKeepOwner","GLOBAL",1) //PC must have the keep as stronghold.
Global("SC#HubNal","LOCALS",1)~ THEN BSC#Hub nal2
@84 DO ~SetGlobal("SC#HubNal","LOCALS",2)~
== BNALIA @85
== BSC#Hub @86
== BNALIA @87
== BSC#Hub @88
== BNALIA @89
== BSC#Hub @90
== BNALIA @91
== BSC#Hub @92
== BNALIA @93
== BSC#Hub @94
== BNALIA @95
== BSC#Hub @96
== BNALIA @97
EXIT

CHAIN IF
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("SC#HubCer","LOCALS",0)~ THEN BSC#Hub cer1
@98 DO ~SetGlobal("SC#HubCer","LOCALS",1)~
== BCERND @99
== BSC#Hub @100
== BCERND @101
== BSC#Hub @102
== BCERND @103
EXIT

CHAIN IF
~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("SC#HubAer","LOCALS",0)~ THEN BSC#Hub aer1
@104 DO ~SetGlobal("SC#HubAer","LOCALS",1)~
== BAERIE @105
== BSC#Hub @106
== BAERIE @107
== BSC#Hub @108
== BAERIE @109
== BSC#Hub @110
== BAERIE @111
== BSC#Hub @112
== BAERIE @113
== BSC#Hub @114
== BAERIE @115
== BSC#Hub @116
== BAERIE @117
== BSC#Hub @118
EXIT

CHAIN IF
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("SC#HubCer","LOCALS",2)~
THEN BSC#Hub cer3
@119 DO ~SetGlobal("SC#HubCer","LOCALS",3)~
== BCERND @120
== BSC#Hub @121
== BCERND @122
== BSC#Hub @123
== BCERND @124
== BSC#Hub @125
EXIT

CHAIN IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
Global("SC#HubVal","LOCALS",0)~ THEN BSC#Hub val1
@126 DO ~SetGlobal("SC#HubVal","LOCALS",1)~
== BVALYGA @127
== BSC#Hub @128
== BVALYGA @129
== BSC#Hub @130
== BVALYGA @131
== BSC#Hub @132
== BVALYGA @133
== BSC#Hub @134
EXIT

CHAIN IF ~InParty("HaerDalis")
See("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("SC#HubHae","GLOBAL",0)~ THEN BSC#Hub hae1
@135 DO ~SetGlobal("SC#HubHae","GLOBAL",1)~
== BHAERDA @136
== BSC#Hub @137
== BHAERDA @138
== BSC#Hub @139
== BHAERDA @140
== BSC#Hub @141
== BHAERDA @142
== BSC#Hub @143
== BHAERDA @144
EXIT

CHAIN IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
Global("SC#HubImo","LOCALS",0)~ THEN BSC#Hub imo1
@145 DO ~SetGlobal("SC#HubImo","LOCALS",1)~
== IMOEN2J @146
== BSC#Hub @147
== IMOEN2J @148
== BSC#Hub @149
== IMOEN2J @150
== BSC#Hub @151
== IMOEN2J @152
== BSC#Hub @153
EXIT

CHAIN IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
Global("SC#HubNal","LOCALS",0)~ THEN BSC#Hub nal1
@154 DO ~SetGlobal("SC#HubNal","LOCALS",1)~
== BNALIA @155
== BSC#Hub @156
== BNALIA @157
== BSC#Hub @158
== BNALIA @159
== BSC#Hub @160
== BNALIA @161
== BSC#Hub @162
== BNALIA @163
== BSC#Hub @164
== BNALIA @165
== BSC#Hub @166
== BNALIA @167
== BSC#Hub @168
EXIT

CHAIN IF
~InParty("Cernd")
See("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
Global("SC#HubCer","LOCALS",1)~
THEN BSC#Hub cer2
@169 DO ~SetGlobal("SC#HubCer","LOCALS",2)~
== BCERND @170
== BSC#Hub @171
== BCERND @172
== BSC#Hub @173
EXIT

CHAIN IF WEIGHT #30
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubAno","GLOBAL",0)~ THEN BANOMEN ano1
@174 DO ~SetGlobal("SC#HubAno","GLOBAL",1)~
== BSC#Hub @175
== BANOMEN @176
== BSC#Hub @177
== BANOMEN @178
== BSC#Hub @179
== BANOMEN @180
EXIT

CHAIN IF~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubEdw","LOCALS",0)~ THEN BEDWIN edw2
@181 DO ~SetGlobal("SC#HubEdw","LOCALS",1)~
== BSC#Hub @182
== BEDWIN @183
== BSC#Hub @184
== BEDWIN @185
== BSC#Hub @186
== BEDWIN @187
== BSC#Hub @188
== BEDWIN @189
== BSC#Hub @190
== BEDWIN @191
== BSC#Hub @192
EXIT

CHAIN IF WEIGHT #5
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubHae","GLOBAL",1)~ THEN BHAERDA hae2
@193 DO ~SetGlobal("SC#HubHae","GLOBAL",2)~
== BSC#Hub @194
== BHAERDA @195
== BSC#Hub @196
== BHAERDA @197
== BSC#Hub @198
== BHAERDA @199
== BSC#Hub @200
== BHAERDA @201
== BSC#Hub @202
== BHAERDA @203
== BSC#Hub @204
EXIT

CHAIN IF WEIGHT #10
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubHae","GLOBAL",2)~ THEN BHAERDA hae3
@205 DO ~SetGlobal("SC#HubHae","GLOBAL",3)~
== BSC#Hub @206
= @207
= @208
= @209
= @210
= @211
= @212
= @213
= @214
== BHAERDA @215
== BSC#Hub @216
== BHAERDA @217
== BSC#Hub @218
EXIT

CHAIN IF WEIGHT #-1
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
!AreaType(DUNGEON) //cannot be in a dungeon
TimeOfDay(DAY) //can't be at night
Global("LadyMaria","GLOBAL",5)
Global("SC#HubKel","LOCALS",0)~ THEN BKELDOR kel1
@219 DO ~SetGlobal("SC#HubKel","LOCALS",1)~
== BSC#Hub @220
== BKELDOR @221
== BSC#Hub @222
== BKELDOR @223
== BSC#Hub @224
== BKELDOR @225
== BSC#Hub @226
== BKELDOR @227
EXIT

CHAIN IF WEIGHT #15
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubKor","LOCALS",0)~ THEN BKORGAN kor1
@228 DO ~SetGlobal("SC#HubKor","LOCALS",1)~
== BSC#Hub @228
== BKORGAN @229
== BSC#Hub @230
== BKORGAN @231
== BSC#Hub @232
EXIT

CHAIN IF WEIGHT #40
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubVic","LOCALS",0)~ THEN BVICONI vic1
@233 DO ~SetGlobal("SC#HubVic","LOCALS",1)~
== BSC#Hub @234
== BVICONI @235
== BSC#Hub @236
== BVICONI @237
== BSC#Hub @238
== BVICONI @239
== BSC#Hub @240
== BVICONI @241
== BSC#Hub @242
== BVICONI @243
== BSC#Hub @244
== BVICONI @245
== BSC#Hub @246
== BVICONI @247
== BSC#Hub @248
== BVICONI @249
== BSC#Hub @250
== BVICONI @251
== BSC#Hub @252
== BVICONI @253
== BSC#Hub @254
== BVICONI @255
== BSC#Hub @256
== BVICONI @257
== BSC#Hub @258
EXIT

CHAIN IF WEIGHT #64
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJah","LOCALS",0)~ THEN BJAHEIR jah1
@259 DO ~SetGlobal("SC#HubJah","LOCALS",1)~
== BSC#Hub @260
== BJAHEIR @261
== BSC#Hub @262
== BJAHEIR @263
== BSC#Hub @264
== BJAHEIR @265
== BSC#Hub @266
== BJAHEIR @267
== BSC#Hub @268
== BJAHEIR @269
== BSC#Hub @270
== BJAHEIR @271
== BSC#Hub @272
== BJAHEIR @273
EXIT

CHAIN IF
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubMin","GLOBAL",1)~ THEN BMINSC sc#minhub2
@274 DO ~SetGlobal("SC#HubMin","GLOBAL",2)~
== BSC#Hub @275
== BMINSC @276
== BSC#Hub @277
== BMINSC @278
== BSC#Hub @279
== BMINSC @280
== BSC#Hub @281
== BMINSC @282
== BSC#Hub @283
== BMINSC @284
== BSC#Hub @285
== BMINSC @286
== BSC#Hub @287
EXIT

CHAIN IF WEIGHT #3
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJan","LOCALS",0)~ THEN BJAN jan1
@288 DO ~SetGlobal("SC#HubJan","LOCALS",1)~
== BSC#Hub @289
== BJAN @290
== BSC#Hub @291
== BJAN @292
== BSC#Hub @293
== BJAN @294
== BSC#Hub @295
== BJAN @296
== BSC#Hub @297
== BJAN @298
== BSC#Hub @299
== BJAN @300
== BSC#Hub @301
== BJAN @302
== BSC#Hub @303
== BJAN @304
== BSC#Hub @305
== BJAN @306
== BSC#Hub @307
== BJAN @308
== BSC#Hub @309
== BJAN @310
EXIT

CHAIN IF WEIGHT #5
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJan","LOCALS",1)~ THEN BJAN jan2
@311 DO ~SetGlobal("SC#HubJan","LOCALS",2)~
== BSC#Hub @312
== BJAN @313
== BSC#Hub @314
== BJAN @315
== BSC#Hub @316
= @317
== BJAN @318
== BSC#Hub @319
== BJAN @320
== BSC#Hub @321
EXIT

CHAIN IF WEIGHT #7
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJan","LOCALS",2)~ THEN BJAN jan3
@322 DO ~SetGlobal("SC#HubJan","LOCALS",3)~
== BSC#Hub @323
== BJAN @324
== BSC#Hub @325
= @326
= @327
= @328
== BJAN @329
== BSC#Hub @330
== BJAN @331
== BSC#Hub @332
== BJAN @333
== BSC#Hub @334
= @335
== BJAN @336
== BSC#Hub @337
= @338
== BJAN @339
== BSC#Hub @340
EXIT

CHAIN IF WEIGHT #8
~InParty("Hubelpot")
See("Hubelpot")
!StateCheck("Hubelpot",STATE_SLEEPING)
Global("SC#HubJan","LOCALS",3)~ THEN BJAN jan4
@341 DO ~SetGlobal("SC#HubJan","LOCALS",4)~
== BSC#Hub @342
== BJAN @343
== BSC#Hub @344
== BJAN @345
== BSC#Hub @346
= @347
= @348
== BJAN @349
== BSC#Hub @350
= @351
== BJAN @352
== BSC#Hub @353
= @354
= @355
= @356
= @357
== BJAN @358
== BSC#Hub @359
== BJAN @360
== BSC#Hub @361
EXIT

CHAIN IF ~CombatCounter(0)
!See([ENEMY])
!StateCheck("Hubelpot",CD_STATE_NOTVALID)
!StateCheck("Minsc",CD_STATE_NOTVALID)
InMyArea("Minsc")
InParty("Minsc")
Global("SC#HubMin","GLOBAL",2)~
THEN BSC#HUB sc#minhub3
@362
== BMINSC @363
== BSC#HUB @364 DO ~SetGlobal("SC#HubMin","GLOBAL",3)~
== BSC#HUB @365
== BSC#HUB IF ~NumInParty(6)~ THEN @366
== BSC#HUB IF ~NumInParty(5)~ THEN @372
== BSC#HUB IF ~NumInParty(4)~ THEN @373
== BSC#HUB IF ~NumInParty(3)~ THEN @374
== BSC#HUB IF ~NumInParty(2)~ THEN @375
== BSC#HUB @367
== BSC#HUB @368
== BSC#HUB @365
== BSC#HUB IF ~NumInParty(6)~ THEN @366
== BSC#HUB IF ~NumInParty(5)~ THEN @372
== BSC#HUB IF ~NumInParty(4)~ THEN @373
== BSC#HUB IF ~NumInParty(3)~ THEN @374
== BSC#HUB IF ~NumInParty(2)~ THEN @375
== BSC#HUB @369
END
IF ~!InParty("Jaheira") !InParty("Anomen") !InParty("Jan")~ THEN EXTERN BSC#HUB sc#count7
IF ~InParty("Jaheira") !InParty("Anomen") !InParty("Jan")~ THEN EXTERN BSC#HUB sc#count6
IF ~InParty("Jaheira") !InParty("Anomen") InParty("Jan")~ THEN EXTERN BSC#HUB sc#count5
IF ~!InParty("Jaheira") InParty("Anomen") !InParty("Jan")~ THEN EXTERN BSC#HUB sc#count4
IF ~!InParty("Jaheira") InParty("Anomen") InParty("Jan")~ THEN EXTERN BSC#HUB sc#count3
IF ~InParty("Jaheira") InParty("Anomen") !InParty("Jan")~ THEN EXTERN BSC#HUB sc#count2
IF ~InParty("Jaheira") InParty("Anomen") InParty("Jan")~ THEN EXTERN BSC#HUB sc#count1

CHAIN BSC#HUB sc#count1
@370
EXTERN BSC#HUB sc#countfinale

CHAIN BSC#HUB sc#count2
@376
EXTERN BSC#HUB sc#countfinale

CHAIN BSC#HUB sc#count3
@377
EXTERN BSC#HUB sc#countfinale

CHAIN BSC#HUB sc#count4
@378
EXTERN BSC#HUB sc#countfinale

CHAIN BSC#HUB sc#count5
@379
EXTERN BSC#HUB sc#countfinale

CHAIN BSC#HUB sc#count6
@380
EXTERN BSC#HUB sc#countfinale

CHAIN BSC#HUB sc#count7
@381
EXTERN BSC#HUB sc#countfinale

CHAIN BSC#HUB sc#countfinale
@369
== BMINSC @371 // Boo's squeak
EXIT