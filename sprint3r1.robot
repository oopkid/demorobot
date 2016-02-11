*** Settings ***
Library   Selenium2Library
Resource  keywords.robot

*** Test Cases ***
Login with valid credential should succeeded
    Open Web
    Open Sidebar
    Click Link Log In
    Fill Credential   sprint3r1   WorkingSoftware
    Login Succeeded
    Close Web

Login with invalid credential should failed
    [template]  Login Failed with Invalid Credential
    ${Empty}    WorkingSoftware
    sprint3r1   ${Empty}
    abcd        abcd

Login with empty credential should failed
    Login Failed with Empty Credential

#Remember me
#    Open Web
#    Open Sidebar
#    Click Link Log In
#    Fill Valid Credential
#    Login Succeeded
#    Close Web
#    Login Succeeded
