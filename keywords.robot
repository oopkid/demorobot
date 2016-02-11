*** Variables ***
${loginPage}  https://sprint3r1.wordpress.com
${usernameField}    user_login
${passwordField}    user_pass

*** Keywords ***
Open Web
    Open Browser   ${loginPage}
Open Sidebar
    Click Element   //*[@id="masthead"]/button
    Wait Until Page Contains    Log in
Click Link Log In
    Click Link      //*[@id="meta-2"]/ul/li[2]/a
Fill Credential
    [Arguments]     ${username}      ${password}
    Input Text      ${usernameField}  ${username}
    Input Password  ${passwordField}  ${password}
    Click Element    //*[@id="wp-submit"]
Login Succeeded
    Wait Until Page Contains   avatar
Close Web
    Close Browser

Login Failed with Invalid Credential
    [Arguments]     ${username}     ${password}
    Open Browser   ${loginPage}
    Click Element   //*[@id="masthead"]/button
    Wait Until Page Contains    Log in
    Click Link      //*[@id="meta-2"]/ul/li[2]/a
    Fill Credential     ${username}     ${password}
    Wait Until Page Contains    ERROR
    Close Browser

Login Failed with Empty Credential
    Open Browser   ${loginPage}
    Click Element   //*[@id="masthead"]/button
    Wait Until Page Contains    Log in
    Click Link      //*[@id="meta-2"]/ul/li[2]/a
    Fill Credential     ${Empty}     ${Empty}
    Focus    //*[@id="user_login"]
    Close Browser