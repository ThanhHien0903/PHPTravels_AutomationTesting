*** Settings ***
Documentation    Visa
Resource        ../environment/library.robot

Test Setup      Start Test
Test Teardown        Close All Browsers
*** Test Cases ***
Visa
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                            ${Web_Homepage_Visa_Select} 
    Wait Until Element Is Visible            ${Web_Visa_Visa_Title}
    #From Country
    Sleep    3s
    Click Element                            ${Web_Visa_FromCountry_Select}
    Input Text                               ${Web_Visa_From/ToCountry_Input}       ${Visa_FromCountry}
    Wait Until Element Is Visible            ${Web_Visa_From/ToCountry_Dropdown}
    Click Element                            ${Web_Visa_From/ToCountry_Button} 
    #To country
    Click Element                            ${Web_Visa_ToCountry_Select}
    Input Text                               ${Web_Visa_From/ToCountry_Input}       ${Visa_ToCountry}
    Wait Until Element Is Visible            ${Web_Visa_From/ToCountry_Dropdown}
    Click Element                            ${Web_Visa_From/ToCountry_Button} 

    #Date(CHƯA CHẠY DATE ĐƯỢC )
    Click Element    //input[@id='date']
    #Search
    Click Element                            ${Web_Visa_Search_Button}
    #Show 
    Execute Javascript                       ${Web_Zoom75%}
    Wait Until Element Is Visible            ${Web_Visa_Result_Title}
    Input Text                               ${Web_Form_FirstName_Input}            ${Person_FirstName}
    Input Text                               ${Web_Form_LastName_Input}             ${Person_LastName}
    Input Text                               ${Web_Form_Email_Input}                ${Person_Email}
    Input Text                               ${Web_Form_Phone_Input}                ${Person_Phone}
    Input Text                               ${Web_Form_NumberOfDay_Input}          ${Personal_NumberOfDay}
    #Date trong form (DONE)
    Clear Element Text   ${Web_Form_Date_Input}
    ${date}    Get Current Date 
    ${add_date}    Add Time To Date          ${date}    5 days
    ${convert_date}=    Convert Date         ${add_date}    result_format=%d-%m-%Y
    Log To Console                           ${convert_date}
    Convert To String                        ${convert_date}
    Input Text                               ${Web_Form_Date_Input}                  ${convert_date}
    #EntryType + VisaType chưa bắt đc locator
    Select From List By Value                ${Web_Visa_EntryType_Select}            ${EntryType} 
    Select From List By Value                ${Web_Visa_VisaType_Select}             ${VisaType}
    #Notes
    Input Text                               ${Web_Form_Note_Input}                  ${VisaNote}  
    #Submit
    Scroll Element Into View                 ${Web_Form_Submit_Button}
    Click Element                            ${Web_Form_Submit_Button}
    #Success displayed
    Wait Until Element Is Visible            ${Web_Form_Succed_Title} 
    Sleep    3s
