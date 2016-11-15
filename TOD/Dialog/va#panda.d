BEGIN va#panda

IF ~NumTimesTalkedTo(0)~ THEN BEGIN AfterSettingFree // Seting Pandaira free
   SAY @0 = @1 = @2
       =
       @3
       =
       @4
       =
       @5
   IF ~~ THEN REPLY @6 GOTO 2
   IF ~~ THEN REPLY @31 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @7
   IF ~~ THEN REPLY @8 GOTO 3
   IF ~~ THEN REPLY @32 GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY @9
       =
       @10
       =
       @11
   IF ~~ THEN REPLY @12 GOTO 4
   IF ~~ THEN REPLY @33 GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY @13
   IF ~~ THEN REPLY @14 GOTO 5
   IF ~~ THEN REPLY @34 GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY @15
       =
       @16
   IF ~~ THEN REPLY @17 GOTO 6
   IF ~~ THEN REPLY @35 GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY @18
       =
       @19
       =
       @20
       =
       @21
   IF ~~ THEN REPLY @22 GOTO 7
   IF ~~ THEN REPLY @36 GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY @23
   IF ~~ THEN REPLY @24 GOTO 8
   IF ~~ THEN REPLY @37 GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY @25
       =
       @26
   IF ~~ THEN REPLY @27 GOTO 9
   IF ~~ THEN REPLY @38 GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY @28
   IF ~~ THEN DO ~SetGlobal("PandairaSpoken","GLOBAL",1)~
                 UNSOLVED_JOURNAL @30 EXIT
END

IF ~Global("PandairaSpoken","GLOBAL",1)~ THEN BEGIN Sentences
   SAY @29
   IF ~~ THEN EXIT
END
