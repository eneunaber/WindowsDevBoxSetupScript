
####--------------------------------------------------------
### Background
###	https://learn.microsoft.com/en-us/windows/package-manager/winget/
### 
### Installation of winget
### https://learn.microsoft.com/en-us/windows/package-manager/winget/#install-winget
####--------------------------------------------------------

####--------------------------------------------------------
#### Function section
####--------------------------------------------------------
function Install {

    param (
        $PackageName,
		$PackageId
    )

    Write-Host Install $PackageName
	winget install $PackageId 
	if($?)
	{
		Write-Host $PackageName installed successfully. 
	}
}


######################################
#### Tools
######################################
Install Powertoys Microsoft.Powertoys
Install WindowsTerminal Microsoft.WindowsTerminal
Install "Paint.net" dotPDNLLC.paintdotnet
Install WinMerge WinMerge.WinMerge
Install 7zip 7zip.7zip
Install "Microsoft PowerShell" Microsoft.PowerShell
Install slack SlackTechnologies.Slack
Install KeePassXC KeePassXCTeam.KeePassXC


######################################
#### Source Control
######################################
Install Git Git.Git 
Install "Github Desktop" GitHub.GitHubDesktop 


######################################
#### SDKs	
######################################
Install "dotNet sdk 7" Microsoft.DotNet.SDK.7
Install "Python.3.12" Python.Python.3.12
# Install "Java 8" Oracle.JavaRuntimeEnvironment


######################################
#### Editors & IDEs
######################################
Install Notepad++ Notepad++.Notepad++
Install "VS Code" Microsoft.VisualStudioCode
Install "VisualStudio.2022.Community" Microsoft.VisualStudio.2022.Community
Install HeidiSQL HeidiSQL.HeidiSQL


######################################
#### Environments & Containers
######################################
# https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#1-overview
Write-Host "<<< Install WSL >>>"
wsl --install
wsl --set-default-version 2
Install Ubuntu.2204 Canonical.Ubuntu.2204
wsl --install -d Ubuntu

Install "Docker DockerDesktop" Docker.DockerDesktop


######################################
#### Utilities
######################################
Install install Task.Task
