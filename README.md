# PowerShell Code Signing Scripts
Some PowerShell scripts for signing PowerShell scripts  

_Note that the GitHub link for this repository, sign-me-up-scotty, came from two sources. The first is the Scott Haselman (and Geoff Bard) post [Signing PowerShell Scripts](https://www.hanselman.com/blog/SigningPowerShellScripts.aspx), with respect to code signing PowerShell scripts. A great source of information on this, as always from Scott, Thanks Scott. Also its is a play on the quote beam-me-up-scotty from the SciFi TV series Star Trek._  

> Note that this page will be mirrored on my blog [https://davidjones.sportronics.com.au](https://davidjones.sportronics.com.au) where you can leave comments

Ever had this:

 ```
 .\1-create--local-certificate-authority : File  
sign-me-up-scotty\scripts\1-create--local-certificate-authority.ps1  
cannot be loaded. The file  
sign-me-up-scotty\scripts\1-create--local-certificate-authority.ps1 is  
not digitally signed. You cannot run this script on the current system. For more information about running scripts and  
setting execution policy, see about_Execution_Policies at https:/go.microsoft.com/fwlink/?LinkID=135170.  
At line:1 char:1  
+ .\1-create--local-certificate-authority  
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~  
    + CategoryInfo          : SecurityError: (:) [], PSSecurityException  
    + FullyQualifiedErrorId : UnauthorizedAccess  
 ```


# Background
I have developed and extended (many times) the GitHub repository [djaus2/az-iothub-ps](https://github.com/az-iothub-ps), 
which is a tool for developing in a menu driven manner, entities for Azure IoT Hub, Devices, Device Provisioing Services and IoT Central. 
The focus with this is upon creating, managing and interconnecting these enitities as well as getting the interconnection metadata into 
contexts (eg enviroment variables and json files) that Quickstart samples can cosume and thus make the explorartion of the Quickstarts
of these far easier. My argument is that many of the Quickstart tutorials are long-winded, do-this-do-that etc. 
I have had a quest for some time to make this all simpler!

# Why this repository?
I found when I downloaded the [djaus2/az-iothub-ps](https://github.com/az-iothub-ps) repository, I could not run the scripts as they were 
remote and unsigned. Whilst I did initially try setting the execution policy using
[Set-ExecutionPolicy](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7)
 but whilst this can work I found it a bit of hack. There are Group Policy issues, hierachy of levels, requirements to do it in registry etc. 
 Is it a good practice to set Unrestricted? Etc Etc.
 
 So I have a GitHub repository which is a collection of numerous PowerShell scripts that are all subscripts to 
 the Main Menu PowerShell script (get-iothub) in this case. Whilst I can run teh scripts on teh machine where they are created, 
 if the repository is cloned or downloaded elsewhere, PowerShell signature restrictions, especially since I install PS-7, restrict or inhibit 
 the running of the scripts.
 
 Q1. How then can the scripts be signed locally for use by the current user?  
 Q2. How than this be done for a plethora of scripts as in the above repository; using one command line entry? i.e. recursively.  
 Q3. If the local clone of the repository is code signed as in Q2, how can this be removed in one hit before, or as part of a pipeline, 
 when changes are made and they are comitted back to the repository?  
 Q4. Is there a better way for PowerShell scripts in repositories? (Cloning, Updates and Commits)  
 
 # Some Links
 - [Signing PowerShell Scripts - Scott Hanselman](https://www.hanselman.com/blog/SigningPowerShellScripts.aspx)
 - [Code Signing Multiple PowerShell Scripts - The Server Analyst](https://serveranalyst.wordpress.com/2011/11/12/code-signing-multiple-powershell-scripts/)
- [Set-ExecutionPolicy](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7)
- [Publish-Script](https://docs.microsoft.com/en-us/powershell/module/PowershellGet/Publish-Script?view=powershell-5.1)
- [How to Set PowerShell Script Execution Policy in Windows 10](https://www.tenforums.com/tutorials/54585-change-powershell-script-execution-policy-windows-10-a.html)

<hr>

> <b>Disclaimer</b>  
<i>Given the nature of PowerShell, and what a script is allowed to do if a script is enabled on your system, it is up to you to check out these links and the scripts in repository and to ascertain their suitability for, and intrusiveness into, your system.  
 Also, note that some scripts here are recursive.</i>

<hr>

# What's in this Repository
- Following [Scott Hanselman's](https://www.hanselman.com/blog/SigningPowerShellScripts.aspx) post:
  - A script to create a local authority  
  [1-create--local-certificate-authority](https://github.com/djaus2/sign-me-up-scotty/blob/master/scripts/1-create--local-certificate-authority.ps1)
  - A script to create a personal certificate:  
  [2-create-personal-certificate.ps1](https://github.com/djaus2/sign-me-up-scotty/blob/master/scripts/2-create-personal-certificate.ps1)
  - A script to verify the personal certifcate  
  [3-verify.ps1](https://github.com/djaus2/sign-me-up-scotty/blob/master/scripts/3-Verify.ps1)
  - A script to sign one PowerShell script using that certificate:  
  [sign-one.ps1](https://github.com/djaus2/sign-me-up-scotty/blob/master/scripts/sign-one.ps1)  
  _Place the PS File (path) in the command line,_
- Following the [The Server Analyst](https://serveranalyst.wordpress.com/2011/11/12/code-signing-multiple-powershell-scripts) post:
  - A script to recursively sign all scripts at or below the current folder:  
  [signall.ps1](https://github.com/djaus2/sign-me-up-scotty/blob/master/scripts/signall.ps1)  
  Note that it was modified so as it recurses from the current folder.
  - I've added a script to recursively unsign all sigened scripts below the current folder:  
  [unsignall.ps1](https://github.com/djaus2/sign-me-up-scotty/blob/master/scripts/unsignall.ps1)  
  Note that this also recurses from the current folder.
  
  As indicated this page will mirrored and extended on my blog [https://davidjones.sportronics.com.au](https://davidjones.sportronics.com.au). Comments and feedback are invited there.

# Usage
- You may run into a "Catch-22" scenario. You can't run the signing scripts unless they are signed. To get around this complete the first 3 scripts by copying the command from each directly to the command line.
- Once they are setup you can run the later scripts as PS scripts.

# If you must ...
Some PS 
```
PS C:\scripts> Get-ExecutionPolicy
Unrestricted

PS \scripts> Set-ExecutionPolicy unrestricted

Execution Policy Change
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose
you to the security risks described in the about_Execution_Policies help topic at
https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to change the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): Y
```

You may need to do 1. and 2. in the VS Developer Command Prompt
