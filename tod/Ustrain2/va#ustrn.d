BEGIN va#ustrn

// First meeting.

IF ~NumTimesTalkedTo(0)~ Ust1
SAY @0
++ @1 + Ust1.17
++ @2 + Ust1.15
++ @3 + Ust1.16
++ @4 + Ust1.0
END

IF ~Global("VA#TODPart1","GLOBAL",4)~ Ust2
SAY @5
++ @6 + Ust2.2
++ @7 + Ust2.3
++ @8 + Ust2.4
+ ~PartyHasItem("va#book")~ + @9 + Ust2.1
++ @10 + Ust2.1
END

IF ~Global("VA#TODPart1","GLOBAL",4)~ Ust2.1
SAY @11
= @12
IF ~~ DO ~SetGlobal("VA#TODPart1","GLOBAL",5)~ EXIT
END

IF ~Global("VA#TODPart1","GLOBAL",4)~ Ust2.2
SAY @13
IF ~~ DO ~SetGlobal("VA#TODPart1","GLOBAL",5)~ EXIT
END

IF ~Global("VA#TODPart1","GLOBAL",4)~ Ust2.3
SAY @14
IF ~~ DO ~SetGlobal("VA#TODPart1","GLOBAL",5)~ EXIT
END

IF ~Global("VA#TODPart1","GLOBAL",4)~ Ust2.4
SAY @15
IF ~~ DO ~SetGlobal("VA#TODPart1","GLOBAL",5)~ EXIT
END

IF ~~ Ust1.15
SAY @16
IF ~~ + Ust1.17
END

IF ~~ Ust1.16
SAY @17
IF ~~ + Ust1.17
END

IF ~~ Ust1.0
SAY @18
IF ~~ + Ust1.17
END

IF ~~ Ust1.17
SAY @19
++ @20 + Ust1.18
++ @21 + Ust1.19
++ @22 + Ust1.20
++ @23 + Ust1.21
++ @24 + Ust1.22
END

IF ~~ Ust1.18
SAY @25
IF ~~ + Ust1.22
END

IF ~~ Ust1.19
SAY @26
IF ~~ + Ust1.22
END

IF ~~ Ust1.20
SAY @27
IF ~~ + Ust1.22
END

IF ~~ Ust1.21
SAY @28
IF ~~ + Ust1.22
END

IF ~~ Ust1.22
SAY @29
++ @30 + Ust1.2
++ @31 + Ust1.23
END

IF ~~ Ust1.2
SAY @32
IF ~~ + Ust1.6
END

IF ~~ Ust1.23
SAY @33
IF ~~ + Ust1.6
END

IF ~~ Ust1.6
SAY @34
= @35
+ ~PartyHasItem("va#book")~ + @36 + Ust1.3
+ ~PartyHasItem("va#calan")~ + @37 + Ust1.3
+ ~PartyHasItem("va#book")~ + @38 + Ust1.4
+ ~PartyHasItem("va#calan")~ + @39 + Ust1.4
+ ~!PartyHasItem("va#book")~ + @40 + Ust1.5
+ ~!PartyHasItem("va#calan")~ + @41 + Ust1.5
++ @42 + Ust1.7
++ @43 + Ust1.7
END

IF ~~ Ust1.3
SAY @44
IF ~~ + Ust1.7
END

IF ~~ Ust1.4
SAY @45
IF ~~ + Ust1.7
END

IF ~~ Ust1.5
SAY @46
IF ~~ + Ust1.8
END

IF ~~ Ust1.7
SAY @47
IF ~~ + Ust1.9
END

IF ~~ Ust1.8
SAY @48
IF ~~ + Ust1.9
END

IF ~~ Ust1.9
SAY @49
++ @50 + Ust1.10
++ @51 + Ust1.11
++ @52 + Ust1.12
++ @53 + Ust1.13
END

IF ~~ Ust1.10
SAY @54
IF ~~ + Ust1.14
END

IF ~~ Ust1.11
SAY @55
IF ~~ + Ust1.14
END

IF ~~ Ust1.12
SAY @56
IF ~~ + Ust1.14
END

IF ~~ Ust1.13
SAY @57
IF ~~ + Ust1.14
END

IF ~~ Ust1.14
SAY @58
IF ~~ DO ~Enemy()~ EXIT
END