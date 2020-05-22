BEGIN va#tian2

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FirstMeet // Party´s first meeeting with Tian #2 outside of Athkatla
  SAY @0
  IF ~~ THEN DO ~StartCutSceneMode()
                 StartCutScene("va#03sc")~ EXIT
END
