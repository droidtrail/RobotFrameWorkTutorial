*** Settings ***
Resource    ../Resources/lib.robot

*** Variables ***
${LOGIN_URL}    https://admin-demo.nopcommerce.com/login
${BROWSER}      chrome    

*** Keywords ***
Open my Browser
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window        

Close Browsers
    Close All Browsers

Open Login Page
    Go To    ${LOGIN_URL}

Input username
    [Arguments]    ${username}
    Input Text    id:Email       ${username}

Input pwd
    [Arguments]    ${password}
    Input Text    id:Password    ${password}

Click login button
    Click Element    xpath://button[@type='submit']

Click logout link
    Click Link    logout

Error message should be visible
    Page Should Contain    Login was unsuccessful.

Dashboard page should be visible
    Page Should Contain    Dashboard
    