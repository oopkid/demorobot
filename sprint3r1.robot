*** Settings ***
Library   Selenium2Library
Resource  keywords.robot

*** Test Cases ***
Login with valid credential should succeeded
    Login Failed with Valid Credential
    Close Browser

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
