*** Settings ***
Documentation       https://www.youtube.com/watch?v=ku6aw5n_a9Q&list=PLUDwpEzHYYLvMLbma_Rp-6jrrpxkeH0VJ&index=7
Library             RequestsLibrary
Library             Collections
Library             JSONLibrary
Library             OperatingSystem

*** Variables ***
${base_url}    https://restcountries.com/    

*** Test Cases ***

Get_countryInfo_Peru
    Create Session       mysession        ${base_url}
    ${response}          Get Request      mysession    /v2/alpha/pe
    ${json_object}       To Json          ${response.content}

    #Single data validation
    ${country_Name}    Get Value From Json    ${json_object}    $.name
    Log To Console     ${country_Name[0]}      
    Should Be Equal    ${country_Name[0]}    Peru  

    #Single data validation in array
    ${boarder}         Get Value From Json    ${json_object}    $.borders[0]
    Log To Console     ${boarder[0]}      
    Should Be Equal    ${boarder[0]}         BOL 

    #Multiple data validation in array
    ${boarders}         Get Value From Json    ${json_object}    $.borders
    Log To Console            ${boarders[0]}        
    Should Contain Any        ${boarders[0]}        BOL    BRA    CHL
    Should Not Contain Any    ${boarders[0]}        abc    xyz

    

