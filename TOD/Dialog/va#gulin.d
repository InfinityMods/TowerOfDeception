BEGIN va#gulin

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeet // Party´s first meeeting with Gulin Murth
   SAY @0
       =
       @1
       =
       @2
       =
       @3
       =
       @4
   IF ~~ THEN REPLY @5 GOTO 2
   IF ~~ THEN REPLY @6 GOTO 3
END

IF ~~ THEN BEGIN 2 //Introducing Gulin
   SAY @7
        =
        @8
        =
        @9
        =
        @10
   IF ~~ THEN REPLY @11 GOTO 4
   IF ~~ THEN REPLY @12 GOTO 5
   IF ~~ THEN REPLY @29 GOTO 8
END

IF ~~ THEN BEGIN 3
   SAY @13
   IF ~~ THEN DO ~SetGlobal("GulinSpoken","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 4 // Explaining Astral Shard
   SAY @14
       =
       @15
       =
       @16
   IF ~~ THEN REPLY @17 GOTO 5
   IF ~~ THEN REPLY @29 GOTO 8
   IF ~~ THEN REPLY @18 GOTO 6
END

IF ~~ THEN BEGIN 5 // Noticing about next floor
   SAY @19
       =
       @20
   IF ~~ THEN REPLY @21 GOTO 4
   IF ~~ THEN REPLY @29 GOTO 8
   IF ~~ THEN REPLY @22 GOTO 6
END

IF ~~ THEN BEGIN 6 // End of dialog
   SAY @23
   IF ~~ THEN DO~SetGlobal("GulinSpoken","GLOBAL",2)~
              UNSOLVED_JOURNAL @28 EXIT
END

IF ~Global("GulinSpoken","GLOBAL",1)~ THEN BEGIN 7
   SAY @24
   IF ~~ THEN REPLY @25 GOTO 2
   IF ~~ THEN REPLY @26 GOTO 3
END

IF ~Global("GulinSpoken","GLOBAL",2)~ THEN BEGIN Sentences
   SAY @27
   IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // More about the tower
   SAY @30
       = 
       @31
       = 
       @32
       = 
       @33
       = 
       @34
       = 
       @35
   IF ~~ THEN REPLY @11 GOTO 4
   IF ~~ THEN REPLY @12 GOTO 5
   IF ~~ THEN REPLY @18 GOTO 6
END