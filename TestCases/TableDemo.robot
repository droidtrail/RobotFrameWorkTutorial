*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TableValidations
    [Documentation]    Part 17- How to Handle Web/HTML Table in Robot Framework | Selenium with Python - https://www.youtube.com/watch?v=iYXl3MrRHDI&list=PLUDwpEzHYYLsCHiiihnwl3L0xPspL7BPG&index=18
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    ${rows}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${cols}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${cols}

    ${data}=    Get Text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]

    Log To Console    ${data}

    Table Column Should Contain    xpath://table[@name='BookTable']    2            Author
    Table Row Should Contain       xpath://table[@name='BookTable']    4            Learn JS
    Table Cell Should Contain      xpath://table[@name='BookTable']    5            2            Mukesh
    Table Header Should Contain    xpath://table[@name='BookTable']    BookName

    Close Browser
                  
