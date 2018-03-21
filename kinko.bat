cls
@ECHO OFF
title Kinko
color 0C
:::  _    _       _
::: | | _(_)_ __ | | _____
::: | |/ / | '_ \| |/ / _ \
::: |   <| | | | |   < (_) |
::: |_|\_\_|_| |_|_|\_\___/
:::
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
if EXIST "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST "Unlocked Vault" goto MKD
:MENU
echo Lock vault? (Y/N)
set/p "ch=>"
if %ch%==Y goto LOCK
if %ch%==y goto LOCK
if %ch%==N goto END
if %ch%==n goto END
echo Selection error.
goto MENU
:LOCK
ren "Unlocked Vault" "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Vault locked.
goto END
:UNLOCK
echo Password:
set/p "kagi=>"
if NOT %kagi%==YOUR_KEY goto END
attrib -h -s "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Kinko.{21EC2020-3AEA-1069-A2DD-08002B30309D}" "Unlocked Vault"
echo Vault unlocked successfully.
goto END
:MKD
md "Unlocked Vault"
echo Vault created successfully.
goto END
:END
TIMEOUT /T 3
