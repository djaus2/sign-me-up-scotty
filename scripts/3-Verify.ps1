# Verify that the Personal Certificate is OK
# Ref: https://www.hanselman.com/blog/SigningPowerShellScripts.aspx
# RefL https://github.com/djaus2/sign-me-up-scotty
# Ref: https://davidjones.sportronics.com.au
Get-ChildItem cert:\CurrentUser\My -codesign