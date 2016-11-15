@echo off
@ECHO Installing movies


copy chitin.key TOD\Backup
mkdir VA#Movie
copy TOD\Mve\*.mve VA#Movie
copy setup-TOD.exe movie.exe
movie --make-biff VA#Movie
del movie.exe
rmdir VA#Movie /S /Q

@ECHO Finished installing movies
