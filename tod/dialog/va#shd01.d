BEGIN va#shd01

IF ~NumTimesTalkedTo(0)~ THEN BEGIN FloorEntered // party just entered the floor
  SAY @0
  IF ~~ THEN DO ~Enemy()~ EXIT
END
