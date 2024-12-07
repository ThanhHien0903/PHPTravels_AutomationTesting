*** Settings ***
Documentation    Hotels
Resource        ../environment/library.robot

Test Setup      Start Test
Test Teardown        Close All Browsers
*** Test Cases ***
Hotels 
    Wait Until Element Is Visible    //div[@class='homepage']  
    Click Element                                ${Web_Homepage_Hotels_Select}                              
    Wait Until Element Is Visible                ${Web_Hotels_Hotels_Title} 

    Click Element                                ${Web_Hotels_City_Select}  
    Input Text                                   ${Web_Hotels_City_Input}     ${SearchCity}
    Wait Until Element Is Visible                ${Web_Hotels_City_Dropdown}    
    Click Element                                ${Web_Hotels_City_Button}

    Clear Element Text                           ${Web_Hotels_Checkin_Clear}
    ${date}    Get Current Date 
    ${add_date}    Add Time To Date              ${date}    0 days
    ${convert_date}=    Convert Date             ${add_date}    result_format=%d-%m-%Y
    Log To Console                               ${convert_date}
    Convert To String                            ${convert_date}
    Input Text                                   ${Web_Hotels_Checkin_Clear}        ${convert_date}

    Sleep    3s
    Clear Element Text                           ${Web_Hotels_Checkout_Clear}
    ${date}    Get Current Date 
    ${add_date}    Add Time To Date              ${date}    5 days
    ${convert_date}=    Convert Date             ${add_date}    result_format=%d-%m-%Y
    Log To Console                               ${convert_date}
    Convert To String                            ${convert_date}
    Input Text                                   ${Web_Hotels_Checkout_Clear}        ${convert_date}

    Sleep    3s
#Traveller+Room    
    Click Element                                ${Web_Hotels_Traveller_Select}
    Wait Until Element Is Visible                ${Web_Hotels_Traveller_Dropdown}

#Search
    Click Element                                ${Web_Hotels_Search_Button} 
    Wait Until Element Is Visible                ${Web_Hotels_Table}  
    Execute Javascript                           ${Web_Zoom75%}
    Sleep    3s
    Scroll Element Into View                     ${Web_Hotels_Scroll}
    Sleep    3s
    Click Element                                ${Web_Hotels_Viewmore_Button}
    Sleep    3s
    Click Element                                ${Web_Hotels_SelectRoom_Button}
    Sleep    3s
    Wait Until Element Is Visible                ${Web_Hotels_HotelRoom_Title}
    Click Element                                ${Web_Hotels_BookNow_Button}
    Wait Until Element Is Visible                ${Web_HotelBooking_Title}   
#Hotel booking
    Execute Javascript                           ${Web_Zoom75%}
    Input Text                                   ${Web_Booking_FirstName_Input}    ${Person_FirstName}
    Input Text                                   ${Web_Booking_LastName_Input}     ${Person_LastName}
    Input Text                                   ${Web_Booking_Email_Input}        ${Person_Email}
    Input Text                                   ${Web_Booking_Phone_Input}        ${Person_Phone}
    Input Text                                   ${Web_Booking_Address_Input}      ${Person_Address}
#Travellers Information
    Select From List By Value                    ${Web_Booking_Title1_Dropdown}    ${Traveller_Title}
    Input Text                                   ${Web_Booking_FirstName1_Input}   ${Traveller_FirstName1}
    Input Text                                   ${Web_Booking_LastName1_Input}    ${Traveller_LastName1}
    Select From List By Value                    ${Web_Booking_Title2_Dropdown}    ${Traveller_Title}
    Input Text                                   ${Web_Booking_FirstName2_Input}   ${Traveller_FirstName2}
    Input Text                                   ${Web_Booking_LastName2_Input}    ${Traveller_LastName2}
    
    Scroll Element Into View                     ${Web_Checkbox}
    Click Element                                ${Web_Checkbox}
    Scroll Element Into View                     ${Web_Booking_Submit_Button} 
    Click Element                                ${Web_Booking_Submit_Button} 
    Wait Until Element Is Visible                //div[@class='border p-3 mb-3']    
    Sleep    3s 









    