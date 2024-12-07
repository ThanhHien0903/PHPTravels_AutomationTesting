*** Settings ***
Documentation    Login
Resource        ../environment/library.robot

Test Setup        Start Test
Suite Teardown       Close All Browsers
*** Variables ***
${empty_password}    # Để trống trường mật khẩu
${empty_email}
${error_password}    123456789
${error_email}        hienhau@gmail.com
*** Test Cases ***
Login
    [Documentation]
    ...       [Description]    
    ...        [TC_ID]    
    ...        [Author]
    ...        [Date]  
    Wait Until Element Is Visible    //div[@class='homepage']
    Sleep    3s
    Click Element                    ${Web_Homepage_Account_Button}
    Wait Until Element Is Visible    ${Web_Homepage_Account_Dropdown}
    sleep    3s
    Click Element    ${Web_Homepage_SelectType_Login} 
    Wait Until Element Is Visible    ${Web_Login_Login}

    Input Text    ${Web_Login_Email_Input}   ${email}
    Input Text    ${Web_Login_Password_Input}   ${password}

    Select Checkbox    ${Web_Login_RememberMe_Checkbox} 
    Click Element    ${Web_login_Login_Button}  
    Wait Until Element Is Visible    ${Web_Account_Dashboard}
    Sleep    5s
Test Login Without Password
    [Documentation]
    ...       [Description]    
    ...        [TC_ID]    
    ...        [Author]
    ...        [Date]  
    Wait Until Element Is Visible    //div[@class='homepage']
    Sleep    3s
    Click Element                    ${Web_Homepage_Account_Button}
    Wait Until Element Is Visible    ${Web_Homepage_Account_Dropdown}
    sleep    3s
    Click Element                    ${Web_Homepage_SelectType_Login} 
    Wait Until Element Is Visible    ${Web_Login_Login}
    Input Text                       ${Web_Login_Email_Input}   ${email}
    Input Text                       ${Web_Login_Password_Input}    ${empty_password}
    Select Checkbox                  ${Web_Login_RememberMe_Checkbox} 
    Click Element                    ${Web_login_Login_Button}  
    Wait Until Element Is Visible    xpath=//div[@class='text-group']//p    timeout=5s
    ${error_message}=  Get Text    xpath=//div[@class='text-group']//p
    Should Contain     ${error_message}    Please check your emal and password
    Sleep    3s
Test Login Without email
    [Documentation]
    ...       [Description]    
    ...        [TC_ID]    
    ...        [Author]
    ...        [Date]  
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                    ${Web_Homepage_Account_Button}
    Wait Until Element Is Visible    ${Web_Homepage_Account_Dropdown}
    sleep    3s
    Click Element    ${Web_Homepage_SelectType_Login} 
    Wait Until Element Is Visible    ${Web_Login_Login}
    Input Text    ${Web_Login_Email_Input}   ${empty_email}
    Input Text    ${Web_Login_Password_Input}    ${password}
    Select Checkbox    ${Web_Login_RememberMe_Checkbox} 
    Click Element    ${Web_login_Login_Button}  
    Wait Until Element Is Visible    xpath=//div[@class='text-group']//p    timeout=5s
    ${error_message}=  Get Text    xpath=//div[@class='text-group']//p
    Should Contain     ${error_message}    Please check your emal and password
    Sleep    3s
Test Login error_password
    [Documentation]
    ...       [Description]    
    ...        [TC_ID]    
    ...        [Author]
    ...        [Date]  
    Wait Until Element Is Visible    //div[@class='homepage']
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                    ${Web_Homepage_Account_Button}
    Wait Until Element Is Visible    ${Web_Homepage_Account_Dropdown}
    sleep    3s
    Click Element    ${Web_Homepage_SelectType_Login} 
    Wait Until Element Is Visible    ${Web_Login_Login}
    Input Text    ${Web_Login_Email_Input}   ${email}
    Input Text    ${Web_Login_Password_Input}    ${error_password}
    Select Checkbox    ${Web_Login_RememberMe_Checkbox} 
    Click Element    ${Web_login_Login_Button}  
    Wait Until Element Is Visible    xpath=//div[@class='text-group']//p    timeout=5s
    ${error_message}=  Get Text    xpath=//div[@class='text-group']//p
    Should Contain     ${error_message}    Please check your emal and password
    Sleep    3s
Test Login error_email
    [Documentation]
    ...       [Description]    
    ...        [TC_ID]    
    ...        [Author]
    ...        [Date]  
    Wait Until Element Is Visible    //div[@class='homepage']
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                    ${Web_Homepage_Account_Button}
    Wait Until Element Is Visible    ${Web_Homepage_Account_Dropdown}
    sleep    3s
    Click Element    ${Web_Homepage_SelectType_Login} 
    Wait Until Element Is Visible    ${Web_Login_Login}
    Input Text    ${Web_Login_Email_Input}   ${error_email}
    Input Text    ${Web_Login_Password_Input}    ${password}
    Select Checkbox    ${Web_Login_RememberMe_Checkbox} 
    Click Element    ${Web_login_Login_Button}  
    Wait Until Element Is Visible    xpath=//div[@class='text-group']//p    timeout=5s
    ${error_message}=  Get Text    xpath=//div[@class='text-group']//p
    Should Contain     ${error_message}    Please check your emal and password
    Sleep    3s

    
