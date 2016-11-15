BEGIN va#balor

IF ~NumTimesTalkedTo(0)~ THEN BEGIN TowerEntered // party just entered the tower
  SAY @0
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @6 GOTO 1
END

IF ~~ THEN BEGIN 1 // ...next block...
  SAY @2
  IF ~~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @7 GOTO 2
END

IF ~~ THEN BEGIN 2 // ...final block...
  SAY @4
  IF ~~ THEN REPLY @5 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @8 DO ~Enemy()~ EXIT
END
