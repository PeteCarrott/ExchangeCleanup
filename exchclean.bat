::Exchange Cleanup v1 by Kyle Weller
@echo off
forfiles.exe /p "C:\inetpub\logs\LogFiles" /s /m *.log /d -7 /c "cmd /c del @file"
forfiles.exe /p "C:\Program Files\Microsoft\Exchange Server\V14\Logging\Diagnostics\DailyPerformanceLogs" /s /m *.* /d -7 /c "cmd /c del @file"
forfiles.exe /p "C:\Program Files\Microsoft\Exchange Server\V14\Logging\Diagnostics\PerformanceLogsToBeProcessed" /s /m *.log /d -7 /c “cmd /c del @file”
forfiles.exe /p "C:\Program Files\Microsoft\Exchange Server\V15\Logging\Diagnostics\DailyPerformanceLogs" /s /m *.* /d -7 /c "cmd /c del @file"
forfiles.exe /p "C:\Program Files\Microsoft\Exchange Server\V15\Logging\Diagnostics\PerformanceLogsToBeProcessed" /s /m *.log /d -7 /c “cmd /c del @file”
del /F /S /Q  "C:\Program Files\Microsoft\Exchange Server\V14\Logging\lodctr_backups\*.bak" 2>NUL
del /F /S /Q  "C:\Program Files\Microsoft\Exchange Server\V15\Logging\lodctr_backups\*.bak" 2>NUL
Exit
