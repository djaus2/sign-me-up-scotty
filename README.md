# PowerShell Signing Scripts
Some PowerShell scripts for signing PowerShell scripts

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
 
 # Relevant Links
 
 