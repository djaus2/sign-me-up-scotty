# Create a Local Certificate Authority
# Ref: https://www.hanselman.com/blog/SigningPowerShellScripts.aspx
# RefL https://github.com/djaus2/sign-me-up-scotty
# Ref: https://davidjones.sportronics.com.au
write-host 'You will be prompted for the private key to create'
write-host  'Then you will be prompted for the private key you created'
read-host 'Press [Enter] to action that.'
makecert -n "CN=PowerShell Local Certificate Root" -a sha1 -eku 1.3.6.1.5.5.7.3.3 -r -sv root.pvk root.cer -ss Root -sr localMachine