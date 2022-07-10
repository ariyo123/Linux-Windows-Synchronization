@echo off

"C:\Users\malog\AppData\Local\Programs\WinSCP\WinSCP.com" ^
  /log="C:\report_movement\lol.log" /ini=nul ^
  /command ^
    "open sftp://username:Password@IP_address/ -hostkey=""ssh-rsa 2048 20oshdsa8ucIY+VNTlqnC1mz1hZP8mAqhkTpen1Iqeg""" ^
    "synchronize local C:\report_movement\source /var/bmsreports/output/" ^
    


set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)


exit /b %WINSCP_RESULT%
pause
