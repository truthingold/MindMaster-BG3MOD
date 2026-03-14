@echo off
chcp 65001 >nul
echo Синхронизация файлов мода с репозиторием GitHub...
echo.

:: Укажи здесь свои пути. Не забудь убрать пробелы вокруг знака равно!
set "BG3_DATA=E:\Steam\steamapps\common\Baldurs Gate 3\Data"
set "GIT_REPO=D:\GitHub\MindMaster-BG3MOD"
set "MOD_NAME=MindMaster_4345a630-0d0f-4145-6609-26d25c166d24"

echo Синхронизируем Projects...
robocopy "%BG3_DATA%\Projects\%MOD_NAME%" "%GIT_REPO%\Projects\%MOD_NAME%" /MIR /FFT /Z /XA:H /W:1

echo Синхронизируем Editor\Mods...
robocopy "%BG3_DATA%\Editor\Mods\%MOD_NAME%" "%GIT_REPO%\Editor\Mods\%MOD_NAME%" /MIR /FFT /Z /XA:H /W:1

echo Синхронизируем Mods...
robocopy "%BG3_DATA%\Mods\%MOD_NAME%" "%GIT_REPO%\Mods\%MOD_NAME%" /MIR /FFT /Z /XA:H /W:1

echo Синхронизируем Public...
robocopy "%BG3_DATA%\Public\%MOD_NAME%" "%GIT_REPO%\Public\%MOD_NAME%" /MIR /FFT /Z /XA:H /W:1

echo.
echo Все изменения успешно скопированы!
pause