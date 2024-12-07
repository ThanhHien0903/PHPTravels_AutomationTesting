*** Settings ***
Resource        ../environment/library.robot
Library    DateTime

*** Keywords ***
Start Test
    [Documentation]
    ...    [Description]
    ...    [Author]
    ...    [Date]
    Log To Console    Start Test
    Open Browser     ${url}       ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${Web_Homepage_Login_Image} 

*** Keywords ***
Date Setup
    ${date}    Get Current Date 
    ${add_date}    Add Time To Date          ${date}    0 days
    ${convert_date}=    Convert Date         ${add_date}    result_format=%d-%m-%Y
    Log To Console                           ${convert_date}
    Convert To String                        ${convert_date}
    Input Text                               ${Web_Flights_Date_Clear}     ${convert_date}

