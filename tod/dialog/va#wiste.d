BEGIN va#wiste

IF ~NumTimesTalkedTo(0)~ THEN BEGIN AfterSetingFree //Party just set Wistemach and Pandaira free from prison state
   SAY @0
   IF ~~ THEN REPLY @1 GOTO 2
   IF ~~ THEN REPLY @4 GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY @2
   IF ~~ THEN REPLY @3 DO ~Enemy()~ EXIT
   IF ~~ THEN REPLY @5 DO ~Enemy()~ EXIT
END
