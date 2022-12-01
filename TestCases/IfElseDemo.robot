*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}        https://www.saucedemo.com/
${browser}    chrome


*** Test Cases ***
Test Case to demonstrate IF/ELSE in Robot Framework
    [Documentation]    Test Case to demonstrate IF/ELSE in Robot Framework - https://www.youtube.com/watch?v=tKTU6VT-Y88

    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text      id:user-name    standard_user
    Input Text      id:password     secret_sauce
    Click Button    id:login-button

    ${items_on_page}    Get Element Count    //*[@class="inventory_container"]/div
    Run Keyword If    ${items_on_page} == 10    Test Keyword 1     
    ...    ELSE IF    ${items_on_page} < 10 and ${items_on_page} > 6    Test Keyword 2    
    ...    ELSE       Test Keyword 3
    
*** Keywords ***
Test Keyword 1
    Log To Console    Executed Keyword1 - Found Items as expected
    Close Browser

Test Keyword 2
    Log To Console    Executed Keyword2 - Found less than expected Items
    Close Browser

Test Keyword 3
    Log To Console    Executed Keyword3 - Exception
    Close Browser
    
