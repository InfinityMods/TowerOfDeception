BEGIN va#tian

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeet // Party's first meeeting with Tian
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 2
  IF ~~ THEN REPLY @5 GOTO 11
END

IF ~~ THEN BEGIN 2
  SAY @6
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 //Introducing
  SAY @7
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @8
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @9
  IF ~~ THEN REPLY @10 GOTO 6
  IF ~~ THEN REPLY @11 GOTO 7
  IF ~~ THEN REPLY @12 GOTO 8
  IF ~~ THEN REPLY @13 GOTO 12
END

IF ~~ THEN BEGIN 6
  SAY @14
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7
  SAY @15
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 8
  SAY @16
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
  SAY @17
  IF ~~ THEN DO ~SetGlobal("VAJobPos","GLOBAL",1)
                 SetGlobal("RZNotAllowTeleport","GLOBAL",1)
                 StartCutSceneMode()
                 StartCutScene("va#02sc")~
                 UNSOLVED_JOURNAL @40 EXIT
END

IF ~~ THEN BEGIN 10
  SAY @18
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 11
  SAY @19
  IF ~~ THEN DO ~SetGlobal("VAJobNeg","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @19
  IF ~~ THEN DO ~SetGlobal("VAJobNeg","GLOBAL",2)~ EXIT
END

IF ~Global("VAJobNeg","GLOBAL",1)~ THEN BEGIN 13
  SAY @20
  IF ~~ THEN REPLY @21 GOTO 2
  IF ~~ THEN REPLY @22 GOTO 16
END

IF ~Global("VAJobNeg","GLOBAL",2)~ THEN BEGIN 14
  SAY @23
  IF ~~ THEN REPLY @24 GOTO 15
  IF ~~ THEN REPLY @25 GOTO 16
END

IF ~~ THEN BEGIN 15
  SAY @26
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 16
  SAY @27
  IF ~~ THEN DO~~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @28
  IF ~~ THEN REPLY @29 GOTO 8
  IF ~~ THEN REPLY @30 GOTO 12
END

IF ~Global("VAJobPos","GLOBAL",2)
    Global("VAJobNeg","GLOBAL",3)
    PartyHasItem("va#book")~ THEN BEGIN 18
  SAY @31
  IF ~~ THEN REPLY @32 DO ~TakePartyItem("va#book")
        AddXPObject(Player1,50000)
        AddXPObject(Player2,50000)
        AddXPObject(Player3,50000)
        AddXPObject(Player4,50000)
        AddXPObject(Player5,50000)
        AddXPObject(Player6,50000)
        GiveGoldForce(5000)
        EraseJournalEntry(@42)
        EraseJournalEntry(@43)
        EraseJournalEntry(@44)
        EraseJournalEntry(@45)
        EraseJournalEntry(@46)
        EraseJournalEntry(@47)~
        SOLVED_JOURNAL @41 GOTO 19
  IF ~~ THEN REPLY @33 GOTO 20
  IF ~~ THEN REPLY @52 GOTO 23
END

IF ~~ THEN BEGIN 19
   SAY @34
   IF ~~ THEN REPLY @35 DO ~SetGlobal("VA#JobPos","GLOBAL",3)
                            SetGlobal("VA#ToDPart1","GLOBAL",1)
                            StartCutSceneMode()
                            StartCutScene("va#11sc")~ EXIT
   IF ~~ THEN REPLY @50 DO ~SetGlobal("VA#JobPos","GLOBAL",3)
                            SetGlobal("VA#ToDPart1","GLOBAL",1)
                            StartCutSceneMode()
                            StartCutScene("va#11sc")~ EXIT
END

IF ~~ THEN BEGIN 20
   SAY @36
   IF ~~ THEN REPLY @37 GOTO 21
   IF ~~ THEN REPLY @51 DO ~TakePartyItem("va#book")
        AddXPObject(Player1,50000)
        AddXPObject(Player2,50000)
        AddXPObject(Player3,50000)
        AddXPObject(Player4,50000)
        AddXPObject(Player5,50000)
        AddXPObject(Player6,50000)
        GiveGoldForce(5000)
        EraseJournalEntry(@42)
        EraseJournalEntry(@43)
        EraseJournalEntry(@44)
        EraseJournalEntry(@45)
        EraseJournalEntry(@46)
        EraseJournalEntry(@47)~
        SOLVED_JOURNAL @41 GOTO 19
END

IF ~~ THEN BEGIN 21
   SAY @38
   IF ~~ THEN DO ~Enemy()
                 SetGlobal("VA#ToDPart1","GLOBAL",1)
                 EraseJournalEntry(@42)
                 EraseJournalEntry(@43)
                 EraseJournalEntry(@44)
                 EraseJournalEntry(@45)
                 EraseJournalEntry(@46)
                 EraseJournalEntry(@47)~
                 SOLVED_JOURNAL @48 EXIT
END

IF ~Global("VAJobPos","GLOBAL",2)
    Global("VAJobNeg","GLOBAL",3)
    !PartyHasItem("va#book")~ THEN BEGIN 22
   SAY @39
   IF ~~ THEN DO ~SetGlobal("VA#JobPos","GLOBAL",3)
                  SetGlobal("VA#ToDPart1","GLOBAL",1)
                  EraseJournalEntry(@42)
                  EraseJournalEntry(@43)
                  EraseJournalEntry(@44)
                  EraseJournalEntry(@45)
                  EraseJournalEntry(@46)
                  EraseJournalEntry(@47)
                  StartCutSceneMode()
                  StartCutScene("va#11sc")~
                  SOLVED_JOURNAL @49 EXIT
END

IF ~~ THEN BEGIN 23
   SAY @53
   IF ~~ THEN REPLY @37 GOTO 21
   IF ~~ THEN REPLY @51 DO ~TakePartyItem("va#book")
        AddXPObject(Player1,50000)
        AddXPObject(Player2,50000)
        AddXPObject(Player3,50000)
        AddXPObject(Player4,50000)
        AddXPObject(Player5,50000)
        AddXPObject(Player6,50000)
        GiveGoldForce(5000)
        EraseJournalEntry(@42)
        EraseJournalEntry(@43)
        EraseJournalEntry(@44)
        EraseJournalEntry(@45)
        EraseJournalEntry(@46)
        EraseJournalEntry(@47)~
        SOLVED_JOURNAL @41 GOTO 19
END
