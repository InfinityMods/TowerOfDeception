BEGIN ~va#prisn~ 1 // Dialog bez pauzovania

IF ~RandomNum(5,1)~ THEN BEGIN 0
  SAY  @0
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN 1
  SAY @1
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,3)~ THEN BEGIN 2
  SAY @2
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN 3
  SAY @3
  IF ~~ THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN 4
  SAY @4
  IF ~~ THEN EXIT
END
