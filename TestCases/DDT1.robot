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
    [Documentation]    Part 18- Data Driven Testing Using Script in Robot Framework | Selenium with Python
    ...                https://www.youtube.com/watch?v=xoZ36eh8V2A&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=19
    ...                Part 19- Data Driven Testing Using Excel & CSV Files in Robot Framework
    ...                https://www.youtube.com/watch?v=V9GMaX-y4pQ&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=19
Invalid login
    [Arguments]                       ${username}    ${password}
    Input username                    ${username}
    Input pwd                         ${password}
    Click login button
    Error message should be visible
