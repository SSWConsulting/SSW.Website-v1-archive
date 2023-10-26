@ECHO OFF

ECHO Change working directory
e:
cd E:\Inetpub\SSW

REM ----------------

ECHO Finding folders zz* and _vti_*
DIR _vti_*.* /ad/b/s > ztTemp.txt
DIR zz*.* /ad/b/s >> ztTemp.txt

ECHO Deleting found folders
FOR /F %%a IN (ztTemp.txt) DO rd %%a /s/q

REM ----------------

ECHO Finding zzed files
DIR /A-D /B /S | FIND "\zz" > ztTemp.txt

ECHO Deleting found files
REM FOR /F %%a IN (ztTemp.txt) DO takeown /f %%a
FOR /F %%a IN (ztTemp.txt) DO del %%a /q

REM ----------------

ECHO Remove old found file
IF EXIST ztTemp.txt del ztTemp.txt

REM PAUSE