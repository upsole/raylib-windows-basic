# Dynamically Linking Raylib

You *need* to edit `build.bat` with the path to raylib in your system. 
I installed raylib using  `vcspkg` (which provided a dynamic version of raylib by default, I would like to staticlly link tbh)
This is setup to use "Run Tasks" from VSCode to compile and run your program. It also copies the `raylib.dll` into the bin directory.
Generated files are placed in bin.

## TODO
* Setup a debug build integrated with vscode (should be easy)
* Build Raylib from source (it's over) 

## vcspkg
This is literally the first lib manager i use for Windows so maybe there are better options out there. 
    - [https://vcpkg.io/en/getting-started]
    - [https://github.com/raysan5/raylib/wiki/Working-on-Windows]

## MSVC
This is Window's compiler, I've found it very cumbersome and would much rather use a more familiar tool like `clang` or `gcc`
but I'm doing this to become more familiar with Windows so gotta suffer.
Here's how to setup the compiler from CLI without the installing the complet Visual Studio bloatware:
    - [https://learn.microsoft.com/en-us/cpp/build/building-on-the-command-line?view=msvc-170]
Then you'll need to open VSCode from the `Developer Powershell/CMD...` terminal it installs. 