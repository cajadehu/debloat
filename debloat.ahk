#SingleInstance force
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode INPUT  ; Input is recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Menu, Tray, Icon, msctf.dll, 3

GroupAdd, Browsers, ahk_exe chrome.exe
GroupAdd, Browsers, ahk_exe iexplore.exe
GroupAdd, Browsers, ahk_exe slimbrowser.exe
return

:c1*:BPATH::{raw}%~dp0\
:c1*:DPATH::{raw}%userprofile%\desktop
:C*:HOSTS::{raw}%SystemRoot%\system32\drivers\etc
:*:APDAT::{raw}%appdata%
:c1*:ncshell::nircmd shellrefresh{enter}
:c1*:ncsys::nircmd sysrefresh{enter}
:c*:ncb1::nircmd setbrightness 10{enter}
:c*:ncb5::nircmd setbrightness 50{enter}
:c*:ncb0::nircmd setbrightness 100{enter}

:*:===::=====================================
:*:`#`#`#::{raw}#####################################

:*:debloatthis::{raw}iwr -useb https://git.io/JJ8R4|iex
:c1:ddg::{raw}https://www.DuckDuckGo.com/
:c1:klcpm::{raw}https://codecguide.com/download_k-lite_codec_pack_mega.htm
:c1:mwb::{raw}https://www.malwarebytes.com/

:c*:ATOZ::{RAW}abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,-_()!@#$%^&*´[]{}<> /\|;:’”~¦•·¸¢©°÷½¼¾>¡¿«<¯ µ¬¶±”®»§¨×™ƒ…‰¤¥¹²³
:c1*:atoz::abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
:c1*:SPECIALCHAR::{raw},.-_()!@#$%^&*´[]{}<>/\|;:'"`~¦•·¸¢©°÷½¼¾>¡¿«<¯µ¬¶±"®»§¨×™ƒ…‰¤¥¹²³
:c1*:SPECIALSYMBOLS::{raw}☂☃☄★☆☇☈☉☊☋☌☍☎☏☐☑☒☓☔☕☘☙☚☛☝☟☠☡☢☣☤☥☦☧☨☩☪☫☬☭☮☯☰☱☲☳☴☵☶☷☸☹☺☻☼☽☾☿♀♁♂♃♄♅♆♇♈♉♊♋♌♍♎♏♐♑♒♓♔♕♖♗♘♙♚♛♜♝♞♟♠♣♥♦♨♪♫♭♯♻♾♿⚒⚓⚔⚕⚖⚗⚙⚛⚜⚠⚡⚪⚫⚰⚱⚽⚾⛄⛅⛈⛉⛊⛋⛌⛎⛏⛑⛒⛓⛔⛕⛖⛗⛚⛛⛝⛞⛣⛨⛩⛪⛫⛬⛭⛮⛯⛰⛱⛲⛳⛴⛵⛶⛷⛸⛹⛺⛻⛼⛽🔥🧯💡🔌⚡🚽🚰🚹🚺🚻🚿🛁🧼

:c1*:RRR::
	Random, rand, 10000000, 99999999
	Send %rand%
Return

:C1*:LoremIpsum::
	FileRead, clipboard, loremipsum.txt ;load it
	Send ^v
return



; date structures
;====================================================================================================================================================
:c1*:ARCHD::
FormatTime, ARCHDATE,, yyMMdd ; 220415
SendInput, %ARCHDATE%
return

:c1*:YMD::
FormatTime, ARCHYMD,, yy-MM-dd_HH-mm-ss ; 22-04-15_19-42-29
SendInput, %ARCHYMD%
return

:c1*:ARCHF::
FormatTime, ARCHFULL,, yyMMddHHmmss ; 220415194236
SendInput, %ARCHFULL%
return

:c1*:DWORK::
FormatTime, WORKDATE,, ddd, MMM-dd-yyyy ; Fri, Apr-15-2022
SendInput, %WORKDATE%
return

:c1*:DDDD::
FormatTime, NORMDATE,, MMM-dd-yyyy ; Apr-15-2022
SendInput, %NORMDATE%
return

:c*:dOw::
FormatTime, NORMDATE,, MM/dd/yyyy ; 04/15/2022
SendInput, %NORMDATE%
return

:c1*:TSD::
FormatTime, SHORTDATE,, MM-dd-yy ; 04-15-22
SendInput, %SHORTDATE%
return

:c1*:TTTT::
FormatTime, NORMTIME,, h:mm tt ; 7:43 PM
SendInput, %NORMTIME%
return

:c1*:DDTT::
FormatTime, NORMDATETIME,, MMM-dd-yyyy_HH-mm-ss ; Apr-15-2022_19-43-27
SendInput, %NORMDATETIME%
return

:c1*:DTLOG::
FormatTime, NORMDATETIME,, MM/dd/yyyy HH:mm:ss ; 04/15/2022 19:43:35
SendInput, %NORMDATETIME%
return

:c1*:DDDTTT::
FormatTime, FULLDATETIME,, dddd, MMMM d, yyyy, h:mm tt ; Friday, April 15, 2022, 7:43 PM
SendInput, %FULLDATETIME%
return




