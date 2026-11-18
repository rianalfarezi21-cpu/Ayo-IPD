@echo off
echo ===================================================
echo   AUTO BUILD APK - INSPEKSI PANEN KELAPA SAWIT
echo ===================================================
call npm install
call npx cap add android
call npx cap copy android
cd android
call gradlew.bat assembleDebug
echo.
echo SELESAI! File APK tersimpan di:
echo android\app\build\outputs\apk\debug\app-debug.apk
pause
