write-host "Set up chocolatey"
get-packageprovider -name chocolatey -force -forcebootstrap
get-packageprovider -name nuget -force -forcebootstrap

write-host "Installing"
install-package GoogleChrome -force -forcebootstrap
install-package nodejs -force -forcebootstrap
install-package nvm -force -forcebootstrap
install-package atom -force -forcebootstrap
install-package unity -force -forcebootstrap
install-package VisualStudioCode -force -forcebootstrap
install-package VisualStudio2015Community -force -forcebootstrap
