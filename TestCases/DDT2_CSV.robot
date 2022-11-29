*** Settings ***
Library     SeleniumLibrary
Library     DataDriver    ../TestData/LoginData.csv
Resource    ../Resources/login_resources.robot

Suite Setup        Open my Browser
Suite Teardown     Close Browsers
Test Template      Invalid login  

*** Test Cases ***
LoginTestWithCsv using ${username} and ${password}


*** Keywords ***
Invalid login
    [Arguments]       ${username}    ${password}
    Input username    ${username}
    Input pwd         ${password}
    Click login button
    Error message should be visible
