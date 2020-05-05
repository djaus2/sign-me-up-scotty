# Sign one PS file
# Ref: https://www.hanselman.com/blog/SigningPowerShellScripts.aspx
# RefL https://github.com/djaus2/sign-me-up-scotty
# Ref: https://davidjones.sportronics.com.au
Param(
    [Parameter(Mandatory)]
    [string]$Path
)
if (-not ( Test-Path -Path $Path)){
    write-host "File: $Path doesn't exist"
    return
}
Set-AuthenticodeSignature $Path @(Get-ChildItem cert:\CurrentUser\My -codesign)[0]
# SIG # Begin signature block
# MIIFuQYJKoZIhvcNAQcCoIIFqjCCBaYCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUrZFaxZ652xrkvl5tDydAxU1q
# Gf2gggNCMIIDPjCCAiqgAwIBAgIQgFl8uBAgZplAK4AEW6N9vTAJBgUrDgMCHQUA
# MCwxKjAoBgNVBAMTIVBvd2VyU2hlbGwgTG9jYWwgQ2VydGlmaWNhdGUgUm9vdDAe
# Fw0yMDA1MDQwNDIyNDlaFw0zOTEyMzEyMzU5NTlaMBoxGDAWBgNVBAMTD1Bvd2Vy
# U2hlbGwgVXNlcjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKhPNCV9
# 9rlt/tUS7xvYO6QRZmbx3aMHhIYZk4qzyq0utjeTSwzZ98UoWOf3vFMWjKc9vXzx
# aVrNqDQEPlL8tXJbzL3Am3ZQZ+X3pQOLpg8jh7SQHFWKBoZU1G4ei3M70AzXiO50
# 85+NVCvhXZHBBKlQDDQ19xWEcimv4GiRmoZnEdu9R7YypdmGKc0TtQswYTlCkeGW
# ynvKVISW5HC61WF+ltGJ5NVfrF8Y5kJExeCoTYZl2L6vjzQLRqKgpfDRE45sLP+L
# 4eFb2SUWldP49pjP6MYWSovT5YOs2xXuZCB/IOsygWRt07lE66nHasyrUd4D/dn0
# 0xNxd7b4GfCRix0CAwEAAaN2MHQwEwYDVR0lBAwwCgYIKwYBBQUHAwMwXQYDVR0B
# BFYwVIAQpJFWB7VqPAYFlCzEGPQArqEuMCwxKjAoBgNVBAMTIVBvd2VyU2hlbGwg
# TG9jYWwgQ2VydGlmaWNhdGUgUm9vdIIQvx7i5SjR/oxI3PpBA2guEjAJBgUrDgMC
# HQUAA4IBAQBWHZ0th4TCGoVydWsrceQqtkdxMyBYQjxAxATP8cbmuEHkEQlxXaaS
# i1IftWCfvU179r+Na1EQa9B5GxtmEfmLkqQMX3WI7Hsse8BzRnqC3Gjjx7d/hLL5
# fDaKSAbDcNJDw3GX7mTgwOYjHPYOlg4kBkaybm+q2yfxeD1idwYHeSCPMZ1/fwWi
# gNLfEDmske5Fbub50Ut/TcgMYxMJg5OnXVtWKe+B30rqUAsE/klWzc6ZKF6fuba6
# DBk8bq2cDD9VWVml/R1bkXbHtpbuDYlSe/dMvzZ3L/eDXvYgaBuc5/MffEJ70M64
# MgRVC4O2/BNjq4JR9ds+gkXFxgSjSS1xMYIB4TCCAd0CAQEwQDAsMSowKAYDVQQD
# EyFQb3dlclNoZWxsIExvY2FsIENlcnRpZmljYXRlIFJvb3QCEIBZfLgQIGaZQCuA
# BFujfb0wCQYFKw4DAhoFAKB4MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJ
# KoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQB
# gjcCARUwIwYJKoZIhvcNAQkEMRYEFBbIzkVz6BIIyTwlXqWTdR9GDbfXMA0GCSqG
# SIb3DQEBAQUABIIBABse5/ZBAv9F99Tk0pDTqG6aEIKi9+9t4dqbcWywYpiVSYod
# E2a0zgsQlGfzAYL2ijSLWlsoftuRN2A+WIwtsc4ZCfHjls39GoEKhmw9VeQBqXvx
# +gzSM2e+//J5Jdiv8aF9LktGMQXzx/IgM59XohB3CzQlA0aqj06gNHjkbZUY0Qpg
# C2hI83m3C8LxrRCKwUrFEBW2f/8XiWJUYeaptnJeY36Ul4ygAIHehVkX8WuMDZUb
# 0oxIJsJWFXt8ern1xtG0tGx98a1NAAQSlYZ2TboqWVZ+b1HwOBF1+YnzMF8kmOh8
# shSU8WPmXnP23hdiUIVwNDFhVwBtyFrEYnzfhK4=
# SIG # End signature block
