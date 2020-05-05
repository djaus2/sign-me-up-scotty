# Create a Personal Certificate
# Ref: https://www.hanselman.com/blog/SigningPowerShellScripts.aspx
# RefL https://github.com/djaus2/sign-me-up-scotty
# Ref: https://davidjones.sportronics.com.au
write-host 'You will be prompted for the private key from 1.'
read-host 'Press [Enter] to action that.'
makecert -pe -n "CN=PowerShell User" -ss MY -a sha1 -eku 1.3.6.1.5.5.7.3.3 -iv root.pvk -ic root.cer