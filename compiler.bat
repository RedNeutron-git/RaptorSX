@ECHO OFF

rem compile resource file
rc resources.rc

rem convert resource file known format by linker
cvtres /MACHINE:x64 /OUT:resources.o resources.res

rem compile malware.cpp to malware.exe
cl.exe /nologo /Ox /MT /W0 /GS- /DNDEBUG /Tcmalware.cpp /link /OUT:malware.exe /SUBSYSTEM:WINDOWS /MACHINE:x64 resources.o