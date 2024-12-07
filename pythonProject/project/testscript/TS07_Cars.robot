*** Settings ***
Documentation    Cars
Resource        ../environment/library.robot

Test Setup      Start Test
Test Teardown        Close All Browsers
*** Variables ***
${test}        //button[contains(@class,'justify-content-center btn btn-primary')]
*** Test Cases ***

Cars
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                    ${Web_Homepage_Car_Select}
    Wait Until Element Is Visible    ${Web_Car_Car_Title}
    #From Airport
    Click Element                    ${Web_Car_FromAirport_Select} 
    Input Text                       ${Web_Car_FromAirport_Input}    ${Airport}
    Wait Until Element Is Visible    ${Web_Car_From/ToAirport_Dropdown} 
    Click Element                    ${Web_Car_From/ToAirport_Dropdown} 
    #To Location
    Click Element                    ${Web_Car_ToAirport_Select}
    Input Text                       ${Web_Car_ToAirport_Input}        ${Country} 
    Wait Until Element Is Visible    ${Web_Car_From/ToAirport_Dropdown} 
    Click Element                    ${Web_Car_From/ToAirport_Dropdown} 
    #Pick-up Date
    #Pick-up Time
    #Drop-off Date    
    #Drop-off Time
    #Travelers

    #Search
    Click Element    //div[@class='col-lg-1']
    Wait Until Element Is Visible    //div[@class='row g-2 append_template justify-content-md-center']

    #Select Car
    Wait Until Element Is Visible    ${test}  
    Scroll Element Into View    ${test}
    Execute Javascript                ${Web_Zoom75%}
    Click Element    ${test}
    Wait Until Element Is Visible    //div[@class='section-heading']

    #Car booking
    Execute Javascript                ${Web_Zoom75%}
    Wait Until Element Is Visible     ${Web_CarBooking_Title} 
    Input Text                        ${Web_Booking_FirstName_Input}        ${Person_FirstName}
    Input Text                        ${Web_Booking_LastName_Input}         ${Person_LastName}
    Input Text                        ${Web_Booking_Email_Input}            ${Person_Email}
    Input Text                        ${Web_Booking_Phone_Input}            ${Person_Phone}
    Input Text                        ${Web_Booking_Address_Input}          ${Person_Address}
    Click Element                     ${Web_Booking_Nationality_Button}
    Wait Until Element Is Visible     ${Web_Booking_Nationality_Dropdown}
    Input Text                        ${Web_Booking_Nationality_Input}      ${Person_Nationality}
    Click Element                     ${Web_Booking_Nationality_Select}

    Click Element                     ${Web_Booking_CurrentCountry_Button}
    Wait Until Element Is Visible     ${Web_Booking_CurrentCountry_Dropdown} 
    Input Text                        ${Web_Booking_CurrentCountry_Input}   ${Person_Country}
    Click Element                     ${Web_Booking_CurrentCountry_Select}

    #Travellers Information
    Select From List By Value         ${Web_Booking_Title1_Dropdown}        ${Traveller_Title}
    Input Text                        ${Web_Booking_FirstName1_Input}       ${Traveller_FirstName1}
    Input Text                        ${Web_Booking_LastName1_Input}        ${Traveller_LastName1}
    Sleep    3s
    
    Scroll Element Into View                     ${Web_Checkbox}
    Click Element                                ${Web_Checkbox}
    Scroll Element Into View                     ${Web_Booking_Submit_Button} 
    Click Element                                ${Web_Booking_Submit_Button} 
    Wait Until Element Is Visible                //div[@class='border p-3 mb-3']    
    Sleep    3s  