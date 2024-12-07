*** Settings ***
Documentation    Homepage
Resource        ../environment/library.robot

Test Setup       Start Test
Test Teardown        Close All Browsers
*** Test Cases ***
Homepage
    [Documentation]
    ...    [Description]
    ...    [Author]
    ...    [Date]
#Click chọn ngôn ngữ
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                        ${Web_Homepage_Language_Button}
    Wait Until Element Is Visible        ${Web_Homepage_Language_Dropdown} 
    Sleep    3s
    Click Element                        ${Web_Homepage_Language_Select}
    Wait Until Element Is Not Visible    ${Web_Homepage_Language_Display} 
#USD
    Sleep    3s
    Click Element                        ${Web_Homepage_USD_Button} 
    Wait Until Element Is Visible        ${Web_Homepage_USD_Dropdown} 
    Sleep    3s
    Click Element                        ${Web_Homepage_USD_Select}  
    Wait Until Element Is Not Visible    ${Web_Homepage_USD_Display} 
    Sleep    3s
#Verify title displayed
    Wait Until Element Is Visible        ${Web_FeaturedHotel_Title}  
    Scroll Element Into View             ${Web_FeaturedFlightTitle} 
    Wait Until Element Is Visible        ${Web_FeaturedFlightTitle} 
     Sleep    3s
    Scroll Element Into View             ${Web_FeaturedTour_Title}
    Wait Until Element Is Visible        ${Web_FeaturedTour_Title}
    Sleep    3s
    Scroll Element Into View             ${Web_FeaturedCar_Title}  
    Wait Until Element Is Visible        ${Web_FeaturedCar_Title}  
    Sleep    3s
