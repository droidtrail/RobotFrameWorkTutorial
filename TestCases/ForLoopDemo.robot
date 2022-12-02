*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://www.google.com.br/
${browser}    chrome


*** Test Cases ***
Test Case to demonstrate FOR Loop in Robot Framework
    [Documentation]    Test Case to demonstrate FOR Loop in Robot Framework - https://www.youtube.com/watch?v=yrT46ur_MKE
    Set Selenium Implicit Wait    5s

    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text       name:q        RCV Academy
    Click Element    name:btnK

    @{results_on_page}    Get WebElements    xpath://*[@id="rso"]/div
    FOR    ${element}    IN    @{results_on_page}
            ${text}=    Get Text    ${element}    
    END

    Close Browser
        
    