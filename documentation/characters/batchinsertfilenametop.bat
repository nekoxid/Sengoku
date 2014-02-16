@ECHO OFF
for /R "p:\ath\to\Sengoku Demo\history\characters\" %%i IN (*.txt) DO (
ECHO "%%~nxi" > "%%~nxi.tmp"
ECHO. >> "%%~nxi.tmp"
ECHO. >> "%%~nxi.tmp"
type "%%~nxi" >> "%%~nxi.tmp"
del "%%~nxi"
ren "%%~nxi.tmp" "%%~nxi"
)