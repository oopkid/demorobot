*** Settings ***
Library   Selenium2Library
Resource  keywords.robot

*** Test Cases ***
Login with valid credential should succeeded
    Open Web
    Open Sidebar
    Click Link Log In
    Fill Valid Credential
    Login Succeeded

#Remember me
#    Open Web
#    Open Sidebar
#    Click Link Log In
#    Fill Valid Credential
#    Login Succeeded
#    Close Web
#    Login Succeeded
