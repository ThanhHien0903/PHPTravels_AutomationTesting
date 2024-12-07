*** Settings ***
Documentation    Flights
Resource        ../environment/library.robot

Test Setup      Start Test
Test Teardown        Close All Browsers
*** Variables ***
${select_flight}        //ul[@id='flight--list-targets']//button[contains(@class,'btn btn-primary')]
*** Test Cases ***
Flights
    
    Wait Until Element Is Visible    //div[@class='homepage']
    Click Element                            ${Web_Homepage_Flights_Select}
    Wait Until Element Is Visible            ${Web_Flights_Flights_Title}

    Click Element                            ${Web_Flights_TypeTrip_Select}            #Chọn TypeTrip: One way/ Round trip
    Select From List By Value                ${Web_Flights_FlightType}          ${FlightType}
    Click Element                            ${Web_Flights_FlyingFrom_Select}   
    Input Text                               ${Web_Flights_FlyingFrom_Input}    ${FlyingFrom}
    Wait Until Element Is Visible            ${Web_Flights_FlyingFrom_Dropdown}    
    Click Element                            ${Web_Flights_FlyingFrom_Button}


    Click Element                            ${Web_Flights_FlyingTo_Select}
    Input Text                               ${Web_Flights_FlyingTo_Input}      ${FlyingTo}
    Wait Until Element Is Visible            ${Web_Flights_FlyingTo_Dropdown}
    Click Element                            ${Web_Flights_FlyingTo_Button}


    Clear Element Text                       ${Web_Flights_Date_Clear}

    ${date}    Get Current Date 
    ${add_date}    Add Time To Date          ${date}    0 days
    ${convert_date}=    Convert Date         ${add_date}    result_format=%d-%m-%Y
    Log To Console                           ${convert_date}
    Convert To String                        ${convert_date}
    Input Text                               ${Web_Flights_Date_Clear}     ${convert_date}

    # Click mở dropdown Traveller
    Click Element                            ${Web_Flights_Traveller_Select} 
    Wait Until Element Is Visible            ${Web_Flights_Traveller_Dropdown}    
    ${số_lượng_ban_đầu}=    Get Value        ${Web_Flights_Traveller_Input}
    Log To Console    Số lượng ban đầu:      ${số_lượng_ban_đầu}
    # Click vào nút "+" để tăng số lượng
    # Click Element                          ${Web_Flights_Traveller_Plus}
    # số lượng cập nhật trong ô input
    Wait Until Element Is Visible            ${Web_Flights_Traveller_Input} 
    ${số_lượng_mới}=    Get Value            ${Web_Flights_Traveller_Input}
    Log To Console    Số lượng sau khi tăng: ${số_lượng_mới}
    #Kiểm tra số lượng hiển thị bên cạnh "Travellers"     
    ${số_traveller_hiển_thị}=    Get Text    ${Web_Flights_Traveller_Count} 
    Log To Console                           ${số_traveller_hiển_thị}
    Should Contain                           ${số_traveller_hiển_thị}    1


#Click search
    
    Click Element                            ${Web_Flights_Find_Button}
    Wait Until Element Is Visible            ${Web_Flights_Search_Title} 
    # Scroll Element Into View    ${select_flight}
    Execute Javascript                       ${Web_Zoom75%}
    Click Element                            ${select_flight}

#Flight booking
    Execute Javascript                       ${Web_Zoom75%}
    Wait Until Element Is Visible            ${Web_FlightBooking_Title}
    Input Text                               ${Web_Booking_FirstName_Input}              ${Person_FirstName}
    Input Text                               ${Web_Booking_LastName_Input}               ${Person_LastName}
    Input Text                               ${Web_Booking_Email_Input}                  ${Person_Email}
    Input Text                               ${Web_Booking_Phone_Input}                  ${Person_Phone}
    Input Text                               ${Web_Booking_Address_Input}                ${Person_Address}
    Click Element                            ${Web_Booking_Nationality_Button}
    Wait Until Element Is Visible            ${Web_Booking_Nationality_Dropdown}
    Input Text                               ${Web_Booking_Nationality_Input}            ${Person_Nationality}
    Click Element                            ${Web_Booking_Nationality_Select}

    Click Element                            ${Web_Booking_CurrentCountry_Button}
    Wait Until Element Is Visible            ${Web_Booking_CurrentCountry_Dropdown} 
    Input Text                               ${Web_Booking_CurrentCountry_Input}         ${Person_Country}
    Click Element                            ${Web_Booking_CurrentCountry_Select}

#Travellers Information
    Select From List By Value                ${Web_Booking_Title1_Dropdown}              ${Traveller_Title}
    Input Text                               ${Web_BookingFlight_FirstName_Input}        ${Traveller_FirstName1}
    Input Text                               ${Web_BookingFlight_LastName_Input}         ${Traveller_LastName1}
    Select From List By Value                ${Web_BookingFlight_Nationality_Select}     ${Traveller_Nationality1}
    Select From List By Value                ${Web_BookingFlight_DateOfBirth_Select}     ${Traveller_DOB}
    Select From List By Value                ${Web_BookingFlight_DOB_Day1_Select}        ${Traveller_DOB_Day1} 
    Select From List By Value                ${Web_BookingFlight_DOB_Year1_Select}       ${Traveller_DOB_year1}
    Input Text                               ${Web_BookingFlight_Passport_Input}         ${Traveller_Passport1}
    Select From List By Value                ${Web_BookingFlight_IssuanceDate1_Select}   ${Traveller_IssuanceDate1}
    Select From List By Value                ${Web_BookingFlight_IssuanceDay1_Select}    ${Traveller_IssuanceDay1}
    Select From List By Value                ${Web_BookingFlight_IssuanceYear1_Select}   ${Traveller_IssuanceYear1}
    Select From List By Value                ${Web_BookingFlight_ExpiryDate1_Select}     ${Traveller_ExpiryDate1}
    Select From List By Value                ${Web_BookingFlight_ExpiryDay1_Select}      ${Traveller_ExpiryDay1}
    Select From List By Value                ${Web_BookingFlight_ExpiryYear1_Select}     ${Traveller_ExpiryYear1}
    
    Scroll Element Into View                     ${Web_Checkbox}
    Click Element                                ${Web_Checkbox}
    Scroll Element Into View                     ${Web_Booking_Submit_Button} 
    Click Element                                ${Web_Booking_Submit_Button}  
    Wait Until Element Is Visible                //div[@class='border p-3 mb-3']    
    Sleep    3s    
