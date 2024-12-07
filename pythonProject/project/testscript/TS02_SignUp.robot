# *** Settings ***
# Documentation    SignUp
# Resource        ../environment/library.robot

# Test Setup        Start Test
# Test Teardown        Close All Browsers
# *** Test Cases ***
# SignUp
#     [Documentation]
#     ...       [Description]    
#     ...        [TC_ID]    
#     ...        [Author]
#     ...        [Date]  
#     Click Element                    ${Web_Homepage_Account_Button}
#     Wait Until Element Is Visible    ${Web_Homepage_Account_Dropdown}
#     sleep    3s
#     Click Element                    ${Web_Homepage_SelectType_SignUp}  

#     Wait Until Element Is Visible    ${Web_SignUp_SignUp}     #Title page SignUp
#     Sleep    3s
#     Input Text                       ${Web_SignUp_FirstName_Input}    ${firstname}
#     Input Text                       ${Web_SignUp_LastName_Input}     ${lastname}
    
#     Input Text                       ${Web_SignUp_Phone_Input}        ${phone}
#     Input Text                       ${Web_SignUp_Email_Input}        ${email}
#     Input Password                   ${Web_SignUp_Password_Input}     ${password}
#     Execute Javascript                ${Web_Zoom75%}
    
# #    Click Button                     ${Web_SignUp_SignUp_Button}

    