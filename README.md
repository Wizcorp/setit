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
* git

Usage
------

### Windows

**Note**: You will need to run this in Powershell as Administrator.

```powershell
Invoke-RestMethod https://bit.ly/setit-windows | powershell -command -
```

### MacOS

```bash
curl -fsSL https://bit.ly/setit-macos | sh
```
