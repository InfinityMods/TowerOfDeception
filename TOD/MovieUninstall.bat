@echo off
@ECHO Uninstalling movies


copy setup-TOD.exe movie.exe
movie --remove-biff data\VA#Movie.bif
del movie.exe
del data\VA#Movie.bif /F /Q

@ECHO Finished uninstalling movies
