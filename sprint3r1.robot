*** Settings ***
Library   Selenium2Library
Resource  keywords.robot

*** Test Cases ***
Login with valid credential should succeeded
    Login Succeeded with Valid Credential
    Close Browser

Login with invalid credential should failed
    [template]  Login Failed with Invalid Credential
    ${Empty}    WorkingSoftware
    sprint3r1   ${Empty}
    abcd        abcd

Login with empty credential should failed
    Login Failed with Empty Credential

Post Entry
    Login Succeeded with Valid Credential
    Click Element   //*[@id="menu-posts"]/a/div[2]
    Click Link      //*[@id="wpbody-content"]/div[3]/h1/a
    Input Text      //*[@id="title"]    Hello Robot
#    Input Text      //*[@id="content"]  <img src="https://sprint3r1.files.wordpress.com/2016/02/download.png" alt="download" width="293" height="172" class="alignnone size-full wp-image-22" />
    Input Text      //*[@id="content"]  How are you, robot ?
#    Unselect Frame
#    Wait Until Element Is Visible   //*[@id="publish"]
#    Wait Until Keyword Succeeds    1    .1    Element Should Be Disabled    publish
#    Wait Until Element Is Disabled    publish
#    Wait Until Element Is Enabled    publish
    Click Button    //*[@id="publish"]
    Close Browser


#Remember me
#    Open Web
#    Open Sidebar
#    Click Link Log In
#    Fill Valid Credential
#    Login Succeeded
#    Close Web
#    Login Succeeded
