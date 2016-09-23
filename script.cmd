@ECHO OFF
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
ECHO ON