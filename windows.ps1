write-host "Set up chocolatey"
get-packageprovider -name chocolatey

write-host "Installing"
install-package GoogleChrome
install-package nodejs
install-package nvm
install-package atom
install-package unity
install-package VisualStudioCode
install-package VisualStudio2015Community
