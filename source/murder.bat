::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBNdVhGQPVeeCaIS5Of66/m7r1gPUOctcYzU1PqHI+9z
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBNdVhGQPVebFqU46fz609iIo0AUWuUDdZrJ3rGcHO0G+EHhZ9gozn86
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
cd C:\Users\%username%\AppData\Roaming\murder
cls
chcp 65001
cls
set pcuser=%username%
cd source\cmdbkg
cmdbkg "Backround\backround.bmp" /t 15 
cd C:\Users\%pcuser%\AppData\Roaming\murder
set version=1.0.1.8

:info
REM SoftwareName: Murder
REM Creator: shirawu
REM idk lol

:_colorset
: : red
set r=[40;31m

: : green
set g=[40;32m

: : yellow
set y=[40;33m

: : blue
set b=[40;34m

: : magenta(purple)
set m=[40;35m

:  : cyan
set c=[40;36m

: : white
set w=[40;37m

: : grey
set gr=[40;90m

: : strong red
set sr=[40;91m

: : strong green
set sg=[40;92m

: : strong yellow
set sy=[40;93m

: : blue
set sb=[40;94m

: : strong magenta(purple)
set sm=[40;95m

: : strong cyan
set sc=[40;96m

: : strong white
set ssc=[40;97m

:login_menu
mode con lines=28 cols=122
@echo off
title ^< murder\login_pannel\ ^>
if not exist "Account" md Account
if not exist "Account\*.cmd" goto:_new_register
cd source\cmdbkg
cmdbkg "Backround\backround.bmp" /t 15
cd C:\Users\%pcuser%\AppData\Roaming\murder
echo.
type source\logo.py
echo.
echo.
echo %w%                                       ╔════════════════════════════════════╗
echo %w%                                       ║             Login %r%(1)              %w%║
echo %w%                                       ║                                    ║
echo %w%                                       ║            Register %r%(2)            %w%║
echo %w%                                       ╚════════════════════════════════════╝
echo.
echo.
set /p lgpan=[40;31m                                                        
if %lgpan% == 1 goto:_login
if %lgpan% == 2 goto:_register
echo.
echo                                               %w%Command %y%[%r%%lgpan%%y%] %w%is invalid...
ping localhost -n 4 >nul
goto:login_menu

:_login
mode con lines=12 cols=122
title ^< murder\login_pannel\login\ ^>
cls
cd source\cmdbkg
cmdbkg 
cd C:\Users\%pcuser%\AppData\Roaming\murder
echo %y%                                                [BACK] %gr%to go back
ping localhost -n 2 >nul
echo.
echo.
set /p USERNAME=%w%     Username%sr%~%w%
if %USERNAME% == back goto:login_menu
title ^< murder\login_pannel\login\user{%USERNAME%}\ ^>
if not exist "Account\%USERNAME%.cmd" (
    echo.
    echo %sr%                                        The Username %y%[%r%%USERNAME%%y%] %sr%Does not Exist.
    ping localhost -n 4 >nul
    goto :_login
)
call "Account\%USERNAME%.cmd"
echo.
set /p LOGIN_ENTER_PASSWORD=%w%     Password%sr%~%w%
if %LOGIN_ENTER_PASSWORD% == back goto:login_menu
if not "%LOGIN_ENTER_PASSWORD%"=="%PASSWORD%" echo                                                %r%Incorrect Password... & ping localhost -n 3 >nul & goto:_login
title ^< murder\login_pannel\login\user{%USERNAME%}\pass{%LOGIN_ENTER_PASSWORD%}\ ^>
goto:logged_in

:_register
title ^< murder\login_pannel\register ^>
mode con lines=12 cols=122
cls
cd source\cmdbkg
cmdbkg 
cd C:\Users\%pcuser%\AppData\Roaming\murder
echo %y%                                                [BACK] %gr%to go back
ping localhost -n 2 >nul
echo.
echo.
set /p REGISTER_NAME=%w%     Account Name%r%~%w%
if %REGISTER_NAME% == back goto:login_menu
call :_banned_word_list
title ^< murder ^| Register [Account Name: %REGISTER_NAME%] ^>
if exist "Account\%REGISTER_NAME%.cmd" (
    echo.
    echo                                              %r%Account already exist...
    ping localhost -n 3 >nul
    goto:_register
)
echo.
set /p REGISTER_PASSWORD=%w%     Account Password%r%~%w%
if %REGISTER_PASSWORD% == back goto:login_menu
cls
echo.
echo                                   Please Re-Enter the Password for the Account %sy%[%r%%REGISTER_NAME%%sy%]
echo.
set /p REGISTER_RE_ENTER_PASSWORD=%r%                                                      ^#^> %w%
if %REGISTER_RE_ENTER_PASSWORD% == back goto:login_menu
if not %REGISTER_PASSWORD% == %REGISTER_RE_ENTER_PASSWORD% (
    echo.
    echo                                                  %r%Passwort does not match...
    ping localhost -n 3 >nul
    goto:_register
)

(
    echo @echo off
    echo set "USERNAME=%REGISTER_NAME%"
    echo set "PASSWORD=%REGISTER_PASSWORD%"
)>"Account\%REGISTER_NAME%.cmd"
echo %w%                                        The account was successfully created.
echo.
echo.
echo.
echo %c%                                                   Press a Key
pause >nul
goto:login_menu

:_new_register
title ^< murder\login_pannel\register ^>
mode con lines=12 cols=122
cls
cd source\cmdbkg
cmdbkg 
cd C:\Users\%pcuser%\AppData\Roaming\murder
echo %gr%                                        Register an %sy%Account %gr%to use the Programm...
ping localhost -n 2 >nul
echo.
echo.
set /p REGISTER_NAME=%w%     Account Name%r%~%w%
call :_banned_word_list
title ^< murder ^| Register [Account Name: %REGISTER_NAME%] ^>
if exist "Account\%REGISTER_NAME%.cmd" (
    echo.
    echo                                              %r%Account already exist...
    ping localhost -n 3 >nul
    goto:_new_register
)
echo.
set /p REGISTER_PASSWORD=%w%     Account Password%r%~%w%
cls
echo.
echo                                   Please Re-Enter the Password for the Account %sy%[%r%%REGISTER_NAME%%sy%]
echo.
set /p REGISTER_RE-ENTER_PASSWORD=%r%                                                      ^#^> %w%
if not %REGISTER_PASSWORD% == %REGISTER_RE-ENTER_PASSWORD% (
    echo.
    echo                                                  %r%Passwort does not match...
    ping localhost -n 3 >nul
    goto:_register
)

(
    echo @echo off
    echo set "USERNAME=%REGISTER_NAME%"
    echo set "PASSWORD=%REGISTER_PASSWORD%"
)>"Account\%REGISTER_NAME%.cmd"
echo %w%                                        The account was successfully created.
echo.
echo.
echo.
echo %c%                                                   Press a Key
pause >nul
goto:login_menu

:logged_in
echo.
echo %r%                                          Login successfull! %w%Redirecting...
ping localhost -n 3 >nul 
goto:_menu_

:notavail
cls
echo.
echo %w% This Account Name contains the word [%r%%REGISTER_NAME%%w%] which is not allowed...
echo.
ping localhost -n 4 >nul
echo x=msgbox("Stop using this thingys lol" ,16, "Error | Autoclose") >> temp1.vbs
echo x=msgbox("not cool bro... not cool" ,16, "Error | Autoclose") >> temp1.vbs
ping localhost -n 1 >nul
start temp1.vbs
ping localhost -n 2 >nul
del temp1.vbs /S /Q
exit()

:_menu_
@echo off
cls
cd C:\Users\%pcuser%\AppData\Roaming\murder
title ^< murder\menu\ ^>
mode con lines=30 cols=150
cd source\cmdbkg
cmdbkg "Backround\backround.bmp" /t 20
cd C:\Users\%pcuser%\AppData\Roaming\murder
echo.
type source\menu_logo.py
echo.
echo.
echo.
echo %w%                           ╔═════════════════════════════════════════════════════════════════════════════════════════════╗            
echo %r%                          /%w%║          %r%v%version%                      %sr%MAIN                    %w%Logged in as %y%[%r%%USERNAME%%y%]             %w%║%r%\
echo %w%                 ╔═════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo %w%                 ║     %y%[%w%1%y%] %r%^>^> %sr%IP Tools                                                                                             %w%║
echo %w%                 ║     %y%[%w%2%y%] %r%^>^> %sr%Exiftool                                                                                             %w%║
echo %w%                 ║     %y%[%w%3%y%] %r%^>^> %sr%Showing Feautures                                                                                    %w%║
echo %w%                 ║                                                                                                                 ║
echo %w%                 ║                                                                                                                 ║
echo %w%                 ╚═════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝
echo %gr%                                                  Make ur Choice or do %sy%[%y%HELP%sy%] %gr%^| %sy%[%y%CHANGELOG%sy%]  
echo.
set /p menu=%r%  [murder%sr%\%r%menu]..%y%^>%w% 

: : menu choices
if %menu% == 1 goto:_IPtools
if %menu% == 2 goto:_exif
if %menu% == 3 goto:showing_ftu
if %menu% == C goto:credits
if %menu% == c goto:credits
if %menu% == showadminpassword{key/shown}{account~shirawu} goto:shirawu_show_adminpw
if %menu% == showadminpassword{key/shown}{account~xyurox} goto:xyurox_show_adminpw
if %menu% == rl goto:_menu_
if %menu% == help (
    start source\help.html
    goto:_menu_
)
if %menu% == changelog (
    start source\changelog.html
    goto:_menu_
)
if %menu% == admin_pannel_login goto:admincheck
if %menu% == instand goto:admin_pannel
echo.
echo %y% [%r%Menu%sr%^|%r%INFO%y%] %w%Command %y%[%r%%menu%%y%] %w%is invalid...
ping localhost -n 4 >nul
goto:_menu_

:shirawu_show_adminpw
echo.
echo %sr% How many Seconds to show the Admin Password?
echo %gr% (2 == 1 Second, idk why lol)
echo.
set /p visibility=%r% ^#^> %w%
if %visibility% == back goto:_menu_
echo @echo off >> source\shirawu_apw.cmd
echo set "apw=henlo_uwu" >> source\shirawu_apw.cmd
ping localhost -n 2 >nul
call "source\apw.cmd"
echo.
echo  %w%shirawu's Admin Password%r% ~ %w%%apw% 
ping localhost -n %visibility% >nul
del source\shirawu_apw.cmd /S /Q
goto:_menu_

:xyurox_show_adminpw
echo.
echo %sr% How many Seconds to show the Admin Password?
echo %gr% (2 == 1 Second, idk why lol)
echo.
set /p visibility=%r% ^#^> %w%
if %visibility% == back goto:_menu_
echo @echo off >> source\xyurox_apw.cmd
echo set "apw=typhoon69" >> source\xyurox_apw.cmd
ping localhost -n 2 >nul
call "source\xyurox_apw.cmd"
echo.
echo  %w%xyurox' Admin Password%r% ~ %w%%apw% 
ping localhost -n %visibility% >nul
del source\xyurox_apw.cmd /S /Q
goto:_menu_

:credits
echo.
echo %gr% Creator: %sc%shirawu#3764
echo.
echo %gr% Admins: %c% shirawu
echo         %c%  xyurox
pause >nul
goto:_menu_

:showing_ftu
cls
mode con lines=24 cols=70
title ^< murder\menu\show_features\ ^>
echo.
echo %sr%                      ---=====================---
echo %w%                           Showing Features
echo %sr%                      ---=====================---
echo.
echo %w%      ╔════════════════════════════════════════════════════════╗
echo %w%      ║   %y%[%r%1%y%] %w%Show Login Data                                  ║
echo %w%      ║                                                        ║
echo %w%      ║                                                        ║
echo %w%      ╚════════════════════════════════════════════════════════╝
echo %gr%                     To go back type %y%[BACK]
echo.
set /p stools=%r%  [murder%sr%\%r%menu%sr%\%r%showing_tools]..%y%^>%w% 
if %stools% == 1 goto:_showlogindata
if %stools% == rl goto:show_features
if %stools% == back goto:_menu_
goto:showing_ftu

:_showlogindata
echo.
echo %gr% -=LoginData=-
echo.
echo.
ping localhost -n 3 >nul
echo %gr% Username: %c%%USERNAME%
echo.
echo %gr% Password: %c%%LOGIN_ENTER_PASSWORD%
ping localhost -n 4 >nul
goto:showing_ftu

:_exif
set /a num= (%Random%%%9)+1
echo.
set /p imgpath=%gr% Full File Path: %c%
if %imgpath% == back goto:_menu_
title ^< exiftool\Getting_MetaData_from_%imgpath% ^>
cls
echo.
color %num%
cd source
exiftool "%imgpath%"
title ^< exiftool\MetaData{file:%imgpath%} ^>
pause >nul
goto:_menu_

:_IPtools
cls
title ^< murder\menu\ip_tools\ ^>
mode con lines=23 cols=80
echo.
echo %r%                            ---================---
echo %w%                                   IP Tools
echo %r%                            ---================---
echo.
echo %w%           ╔══════════════════════════════════════════════════════╗
echo %w%           ║   %y%[%r%1%y%] %w%IP Pinger                                      ║
echo %w%           ║   %y%[%r%1%y%] %w%IP Lookup                                      ║
echo %w%           ║                                                      ║
echo %w%           ║                                                      ║
echo %w%           ║                                                      ║
echo %w%           ║                                                      ║
echo %w%           ║                                                      ║
echo %w%           ╚══════════════════════════════════════════════════════╝
echo %gr%                            To go back type %y%[BACK]
echo.
set /p IPTools=%r%  [murder%sr%\%r%menu%sr%\%r%ip_tools]..%y%^>%w% 
if %IPTools% == 1 goto:_pingreq
if %IPTools% == rl goto:_IPtools
if %IPTools% == back goto:_menu_
echo.
echo %y% [%r%IP Tools%sr%^|%r%INFO%y%] %w%Command %y%[%r%%IPTools%%y%] %w%is invalid...
ping localhost -n 4 >nul
goto:_IPtools

:admincheck
cls
title ^< murder\admin\login\ ^>
mode con lines=30 cols=102
cd source\cmdbkg
cmdbkg "Backround\admin_backround.bmp" /t 20
cd C:\Users\%pcuser%\AppData\Roaming\murder
echo.
type source\admin_logo.py
echo.
echo.
echo.
set /p adminuser=%sm%                  Admin %m%Username%r%~%w%
if %adminuser% == shirawu goto:admin_pass_check
if %adminuser% == back goto:_menu_
echo.
echo %r% [Admin Pannel Check INFO] %w%This Admin does not exist...
ping localhost -n 4 >nul
goto:_menu_
:admin_pass_check
title ^< murder\admin\login\adminuser{%adminuser%}\ ^>
echo.
echo.
set /p adminpass=%sm%                  %adminuser%'s Admin %m%Password%r%~%w%
if %adminpass% == henlo_uwu goto:admin_pannel_load
if %adminpass% == back goto:_menu_
echo.
echo %r% [Admin Pannel Check INFO] %w%The Password for the Account %y%[%r%%adminuser%%y%] %w%is incorrect...
ping localhost -n 4 >nul
goto:_menu_

:admin_pannel_load
cls
title ^< murder\admin\login\adminuser{%adminuser%}\adminpass{%adminpass%}\ ^>
ping localhost -n 4 >nul
:admin_pannel
title ^< murder\admin\menu\ ^>
cls
mode con lines=30 cols=102
cd source\cmdbkg
cmdbkg "Backround\admin_backround.bmp" /t 20
cd C:\Users\%pcuser%\AppData\Roaming\murder
echo.
type source\admin_logo.py
echo.
echo.
echo.
echo.
echo %w% ╔══════════════════════════════════════════════════════════════════════════════════════════════════╗
echo %w% ║   %sy%[%sm%1%sy%] %r%^>^> %w%Clear Vid Folder                                                                        ║
echo %w% ║                                                                                                  ║
echo %w% ║                                                                                                  ║
echo %w% ╚══════════════════════════════════════════════════════════════════════════════════════════════════╝
echo.
echo.
set /p adminpannel=%r%  [murder%sr%\%r%admin%sr%\%r%menu]..%y%^>%w% 
if %adminpannel% == 1 goto:clearcvid
if %adminpannel% == back goto:_menu_
if %adminpannel% == rl goto:admin_pannel
echo.
echo %y% [%r%Admin Pannel%sr%^|%r%INFO%y%] %w%Command %y%[%r%%adminpannel%%y%] %w%is invalid...
ping localhost -n 4 >nul
goto:admin_pannel

:clearcvid
echo.
set /p usure=%gr%   Are you sure? (y/n)%sr%~%sw%
if %usure% == Y goto:clearcvidyes
if %usure% == y goto:clearcvidyes
if %usure% == N goto:admin_pannel
if %usure% == n goto:admin_pannel
if %usure% == back goto:admin_pannel
echo.
echo %y% [%r%CVids Clearer%y%^|%r%INFO%y%] %w%Command %y%[%r%%usure%%y%] %w%is invalid...
ping localhost -n 4 >nul
goto:admin_pannel

:clearcvidyes
del C:\Users\%pcuser%\Documents\cutted_videos\*.* /S /Q
echo.
echo %gr% Press a key to go back
pause >nul
goto:admin_pannel






:_banned_word_list
if %REGISTER_NAME% == Porn goto:notavail
if %REGISTER_NAME% == porn goto:notavail
if %REGISTER_NAME% == Bitch goto:notavail
if %REGISTER_NAME% == bitch goto:notavail
if %REGISTER_NAME% == Fuck goto:notavail
if %REGISTER_NAME% == fuck goto:notavail
if %REGISTER_NAME% == fucker goto:notavail
if %REGISTER_NAME% == Fucker goto:notavail
if %REGISTER_NAME% == Fuckers goto:notavail
if %REGISTER_NAME% == fuckers goto:notavail
if %REGISTER_NAME% == Sex goto:notavail
if %REGISTER_NAME% == Whore goto:notavail
if %REGISTER_NAME% == whore goto:notavail
if %REGISTER_NAME% == Porno goto:notavail
if %REGISTER_NAME% == ficken goto:notavail
if %REGISTER_NAME% == schlampe goto:notavail
if %REGISTER_NAME% == fotze goto:notavail
if %REGISTER_NAME% == fick goto:notavail
if %REGISTER_NAME% == deepthroat goto:notavail
if %REGISTER_NAME% == nigger goto:notavail
if %REGISTER_NAME% == nigga goto:notavail
if %REGISTER_NAME% == niggas goto:notavail
if %REGISTER_NAME% == racist goto:notavail