BEGIN va#guli2

IF ~Global("VA#ShardDestroyed","GLOBAL",2)~ THEN BEGIN 0
   SAY @0
       =
       @1
       =
       @2
   IF ~~ THEN DO ~StartCutSceneMode()
                  StartCutScene("va#09sc")~ EXIT
END
