*** Settings ***
Documentation    Tours
Resource        ../environment/library.robot

Test Setup      Start Test
Test Teardown        Close All Browsers
*** Test Cases ***
Tours
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                                ${Web_Homepage_Tour_Select}
    Sleep    10s
    Wait Until Element Is Visible                ${Web_Tour_Tour_Title}     
    #Search by city
    Click Element                                ${Web_Tour_Country_Select}
    Input Text                                   ${Web_Tour_Country_Input}     ${Country} 
    Wait Until Element Is Visible                ${Web_Tour_Country_Dropdown}
    Click Element                                ${Web_Tour_Country_Dropdown}
    #Date
    Click Element                                ${Web_Tour_Date_Select} 
    ${date}    Get Current Date 
    ${add_date}    Add Time To Date              ${date}    0 days
    ${convert_date}=    Convert Date             ${add_date}    result_format=%d-%m-%Y
    Log To Console                               ${convert_date}
    Convert To String                            ${convert_date}
    #Search
    Click Button                                 ${Web_Tour_Search_Button}
    Wait Until Element Is Visible                ${Web_Tour_Result_Table} 
    Sleep    3s
    Execute Javascript                           ${Web_Zoom75%}
    Sleep    3s
#    Scroll Element Into View                     ${Web_Tour_Scroll}
#    Sleep    5s
    Click Element                                ${Web_Tour_ViewMore_Button}
    # Lấy danh sách các tab đang mở
    ${all_windows}=    Get Window Handles
    # Chuyển sang tab mới
    ${all_tabs}=    Get Window Handles
    Switch Window                                ${all_tabs}[-1] 
    Execute Javascript                           ${Web_Zoom75%}
    Click Element                                ${Web_Tour_Submit_Button} 
    #Tour booking
    Execute Javascript                           ${Web_Zoom75%}
    Wait Until Element Is Visible                ${Web_TourBooking_Title}
    Input Text                                   ${Web_Booking_FirstName_Input}                ${Person_FirstName}                
    Input Text                                   ${Web_Booking_LastName_Input}                 ${Person_LastName}
    Input Text                                   ${Web_Booking_Email_Input}                    ${Person_Email}
    Input Text                                   ${Web_Booking_Phone_Input}                    ${Person_Phone}  
    Input Text                                   ${Web_Booking_Address_Input}                  ${Person_Address}
    Click Element                                ${Web_Booking_Nationality_Button}        
    Wait Until Element Is Visible                ${Web_Booking_Nationality_Dropdown}
    Input Text                                   ${Web_Booking_Nationality_Input}              ${Person_Nationality}
    Click Element                                ${Web_Booking_Nationality_Select}

    Click Element                                ${Web_Booking_CurrentCountry_Button}
    Wait Until Element Is Visible                ${Web_Booking_CurrentCountry_Dropdown} 
    Input Text                                   ${Web_Booking_CurrentCountry_Input}           ${Person_Country}
    Click Element                                ${Web_Booking_CurrentCountry_Select}
    Select From List By Value                    ${Web_Booking_Title1_Dropdown}                ${Traveller_Title}
    Input Text                                   ${Web_Booking_FirstName1_Input}               ${Traveller_FirstName1}
    Input Text                                   ${Web_Booking_LastName1_Input}                ${Traveller_LastName1}
    
    Scroll Element Into View                     ${Web_Checkbox}
    Click Element                                ${Web_Checkbox}
    Scroll Element Into View                     ${Web_Booking_Submit_Button} 
    Click Element                                ${Web_Booking_Submit_Button} 
    Wait Until Element Is Visible    xpath=//div[@class='card p-3 mx-auto']
    Sleep    3s 
    



    
    
