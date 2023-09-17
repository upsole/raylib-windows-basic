@echo off
if not exist .\\bin mkdir .\\bin
set exe-name=blanky.exe
set cflags=/W3 /WX /std:c11
set sources=main.c
set headers="%USERPROFILE%/vcpkg/installed/x64-windows/include"
set raylib-path="%USERPROFILE%/vcpkg/installed/x64-windows/lib/raylib.lib"
set raylib-dll-path="%USERPROFILE%\vcpkg\installed\x64-windows\bin\raylib.dll"
set libs=kernel32.lib user32.lib shell32.lib winmm.lib gdi32.lib opengl32.lib
cl.exe %cflags% /I%headers% %sources% /Fobin\ /Febin\%exe-name% %libs% %raylib-path%
copy %raylib-dll-path% .\\bin\raylib.dll