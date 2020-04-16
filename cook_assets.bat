SET "ddp=%~dp0"
SET "ddp=%ddp:~0,-1%"

SET "editorPath=C:\Program Files\Epic Games\UE_4.22\Engine\Binaries\Win64"

del /S Dungeons\*.uasset
del /S Dungeons\*.ubulk
del /S Dungeons\*.uexp

"%editorPath%\UE4Editor-Cmd.exe" "%ddp%\UE4Project\Dungeons.uproject" -run=cook -targetplatform=WindowsNoEditor

robocopy "UE4Project\Saved\Cooked\WindowsNoEditor\Dungeons\Content" Dungeons\Content /s /XF M_*.u* MI_*.u*