BEGIN va#ghost

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeet // The End Discussion
   SAY @0
       =
       @1
       =
       @2
       =
       @3
   IF ~~ THEN REPLY @4 GOTO 2
   IF ~~ THEN REPLY @10 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @5
       =
       @6
       =
       @7
       =
       @8
       =
       @9
   IF ~~ THEN DO ~StartCutSceneMode()
                  StartCutScene("va#91sc")~ EXIT
END

