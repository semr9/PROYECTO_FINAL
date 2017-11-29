@echo off

mkdir build
chdir build

mkdir mak.mingw
chdir mak.mingw

mkdir x64
chdir x64

del CMakeCache.txt

cmake -DCMAKE_CONFIGURATION_TYPES="Debug;Release" -G "MinGW Makefiles" ../../../

if %errorlevel% NEQ 0 goto error
goto end

:error
echo Houve um erro. Pressione qualquer tecla para finalizar.
pause >nul

:end

echo Pressione qualquer tecla para finalizar.
pause >nul

cd ../../../
