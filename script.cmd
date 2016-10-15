@ECHO OFF
::Intro Message
ECHO USB Shortcut Remover v1.0.2
ECHO .

::Prompt for input
ECHO Enter USB drive letter to continue...
SET /P drive=

ECHO Deleting files...
::Show all hidden files
attrib -s -h -r /s /d %drive%:\*.*
::Remove all shortcuts
del /f /q %drive%:\*.Lnk
::Remove virus files
IF EXIST %drive%:\wscript.vbs (
 del /f /q %drive%:\wscript.vbs
)
IF EXIST %drive%:\chost.vbs (
 del /f /q %drive%:\chost.vbs
)

ECHO ON
