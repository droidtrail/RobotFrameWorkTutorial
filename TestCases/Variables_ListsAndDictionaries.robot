*** Settings ***
Documentation   Robot Framework Tutorial Part 9 - Variables, Lists And Dictionaries - https://www.youtube.com/watch?v=HU0C9r2Ghwk&t=169s
Library    OperatingSystem

*** Keywords ***

*** Variables ***
${MY-VARIABLE}              my test variable
${MY-VARIABLE_2}            my second test variable
${GOOGLE-SEARCHE-FIELD}    //input[@name="q"]
@{LIST}    test1    teste2    teste3    teste4
&{DICTIONARY}    username=testuser    password=demo

*** Test Cases ***
Teste case 1
    [Tags]    demo1    demo2
    Log To Console      ${LIST}[0]
    Log To Console      ${LIST}[1]
    Log To Console      ${LIST}[2]

    Log To Console    ${DICTIONARY}[username]
    Log To Console    ${DICTIONARY}[password]

Teste case 2
    Log To Console    ${DICTIONARY}[username]
    Log To Console    ${DICTIONARY}[password]


