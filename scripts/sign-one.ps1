# Sign one PS file
# Ref: https://www.hanselman.com/blog/SigningPowerShellScripts.aspx
# RefL https://github.com/djaus2/sign-me-up-scotty
# Ref: https://davidjones.sportronics.com.au
Parameters(
    [Parameter(Mandatory)]
    [string]$Path
)
if (-not ( Test-Path -Path $Path)){
    write-host "File: $Path doesn't exist"
    return
}
Set-AuthenticodeSignature $Path @(Get-ChildItem cert:\CurrentUser\My -codesign)[0]