*** Settings ***
Documentation    Blog
Resource        ../environment/library.robot

Test Setup      Start Test
Test Teardown        Close All Browsers
*** Test Cases ***
Blog
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                    ${Web_Homepage_Blog_Select}
    Wait Until Element Is Visible    ${Web_Blog_Blog_Header}
    Wait Until Element Is Visible    ${Web_Blog_Blog_Title}
    Sleep    3s
    Click Element                    ${Web_Blog_Title_Select}  
    Wait Until Element Is Visible    ${Web_Blog_MainHeader}
    Sleep    3s