cls
@ECHO OFF
title Kinko
:::  _    _       _
::: | | _(_)_ __ | | _____
::: | |/ / | '_ \| |/ / _ \
::: |   <| | | | |   < (_) |
::: |_|\_\_|_| |_|_|\_\___/
::: 
REM Tressley Cahill 2018
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
if EXIST "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST "Unlocked Vault" goto MKVAULT
:CONFIRM
echo Are you sure you want to lock the vault? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==N goto END
if %cho%==n goto END
echo Invalid selection.
goto CONFIRM
:LOCK
ren "Unlocked Vault" "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Vault locked.
goto END
:UNLOCK
echo Enter password:
set/p "kagi=>"
if NOT %kagi%==YOUR_KEY_HERE goto END
attrib -h -s "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}" "Unlocked Vault"
echo Vault unlocked successfully.
goto END
:MKVAULT
md "Unlocked Vault"
echo New vault created successfully.
goto END
:END
TIMEOUT /T 3
