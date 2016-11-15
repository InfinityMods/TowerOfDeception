BEGIN va#kergo

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeet // Party´s first meeeting with captain Kergo outside of Athkatla
  SAY @0
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("va#04sc")~ EXIT
END

IF ~Global("KergoMoved","GLOBAL",1)~ THEN BEGIN KergoMovedWithParty // Kergo moved with party near the tower borders at the beginning of adventure
  SAY @2
  IF ~~ THEN DO ~SetGlobal("KergoMoved","GLOBAL",2)
                 SaveGame(0)~ EXIT
END

IF ~Global("KergoMoved","GLOBAL",2)~ THEN BEGIN Sentences
   SAY @6
   IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("VA#ShardDestroyed","GLOBAL",2)
    Global("KergoMoved","GLOBAL",2)~ THEN BEGIN Ending
   SAY @3
   IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @5
   IF ~~ THEN DO ~SetGlobal("VAJobPos","GLOBAL",2)
                  SetGlobal("VAJobNeg","GLOBAL",3)
                  SetGlobalTimer("VA#USTRAIN_ENCOUNTER","GLOBAL",21600)
                  StartCutSceneMode()
                  StartCutScene("va#10sc")~ EXIT
END
