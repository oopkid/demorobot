*** Variables ***
${loginPage}  https://sprint3r1.wordpress.com
${usernameField}    user_login
${passwordField}    user_pass

*** Keywords ***
Open Web
    Open Browser   ${loginPage}
Open Sidebar
    Click Element   //*[@id="masthead"]/button
Click Link Log In
    Click Link      https://sprint3r1.wordpress.com/wp-login.php
Fill Valid Credential
    Input Text  ${usernameField}  sprint3r1
    Input Password  ${passwordField}  WorkingSoftware
Login Succeeded
    Wait Until Page Contains   avatar
Close Web
    Close Browser
