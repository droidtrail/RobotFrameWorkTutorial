*** Settings ***
Resource    ../Resources/lib.robot
Resource    ../Resources/login_resources.robot

Suite Setup        Open my Browser
Suite Teardown     Close Browsers 
Test Template      Invalid login

*** Test Cases ***        username              password   
Right user empty pass     admin@yourstore.com    ${EMPTY}
Right user wrong pass     admin@yourstore.com    xyz
wrong user right pass     adm@yourstore.com      admin
wrong user empty pass     adm@yourstore.com      ${EMPTY}
wrong user wrong pass     adm@yourstore.com      xyz     


*** Keywords ***
Invalid login
    [Arguments]                       ${username}    ${password}
    Input username                    ${username}
    Input pwd                         ${password}
    Click login button
    Error message should be visible
