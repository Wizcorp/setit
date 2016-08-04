write-host "Set up chocolatey"
get-packageprovider -name chocolatey -force -forcebootstrap

write-host "Set up nuget"
get-packageprovider -name nuget -force -forcebootstrap

write-host "Installing packages"
install-package GoogleChrome -force -forcebootstrap
install-package nodejs -force -forcebootstrap
install-package atom -force -forcebootstrap
install-package VisualStudioCode -force -forcebootstrap
install-package microsoft-build-tools -force -forcebootstrap
install-package nvm -force -forcebootstrap
install-package unity -force -forcebootstrap
install-package git -force -forcebootstrap

# Todo: fails at install time
install-package cmder -force -forcebootstrap

# VS2015Community
Invoke-WebRequest -Uri https://download.microsoft.com/download/0/B/C/0BC321A4-013F-479C-84E6-4A2F90B11269/vs_community.exe -OutFile vs_community.exe
Invoke-WebRequest -Uri https://raw.githubusercontent.com/daptiv/visualstudio/master/files/default/2015/AdminDeployment-community.xml -OutFile admin.xml
# /full instead of /AdminFile for full install
.\vs_community.exe /quiet /passive /AdminFile admin.xml
rm vs_community.exe

# VS install runs in background, we can't delete this for now!
# rm admin.xml