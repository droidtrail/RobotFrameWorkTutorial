*** Settings ***
Library    SeleniumLibrary
Library    Collections

*** Test Cases ***
TableValidations
    [Documentation]    
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    
    @{table}    Get WebElements    xpath://table[@name='BookTable']/tbody/tr/th[1]
    
    FOR    ${element}    IN    @{table}
            ${dataTable}    Get Text    ${element} 
            Should Be Equal    ${dataTable}    BookName
    END
    
    Close Browser
                  
