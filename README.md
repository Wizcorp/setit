SetIt
=====

Machine setup scripts for Windows 10 & MacOS. Currently untested.

Will install and configure:

* Package manager
* Stack to compile C/C++ code
* NVM (Node.js Version Manager)
* Atom Editor
* Visual Studio Code (and Visual Studio on Windows)
* Unity
* Google Chrome

Usage
------

### Windows

```powershell
Invoke-RestMethod https://raw.githubusercontent.com/Wizcorp/setit/master/windows.ps1 | powershell -command -
```

### MacOS

```bash
curl -fsSL https://raw.githubusercontent.com/Wizcorp/setit/master/macos.sh | sh
```