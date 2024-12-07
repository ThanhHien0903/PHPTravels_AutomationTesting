*** Variables ***
${Web_Homepage_Login_Image}                  xpath=//div[@class='homepage']


${Web_Homepage_Account_Button}               xpath=//strong[@class='m-0 text-dark text-uppercase']
${Web_Homepage_Account_Dropdown}             xpath=//ul[@class='dropdown-menu bg-white rounded-3 p-2 show']
${Web_Homepage_SelectType_SignUp}            xpath=//strong[text()='Signup ']
${Web_Homepage_SelectType_Login}             xpath=//strong[text()='Login ']

${Web_Homepage_Language_Button}              xpath=//li[@class='nav-item dropdown'][1]
${Web_Homepage_Language_Dropdown}            xpath=//ul[@class='dropdown-menu bg-white rounded-3 p-2 show']
${Web_Homepage_Language_Select}              xpath=//span[contains(text(),'English')]
${Web_Homepage_Language_Display}             xpath=//ul[@class='dropdown-menu bg-white rounded-3 p-2 show']

${Web_Homepage_USD_Button}                   xpath=//li[@class='nav-item dropdown multi_currency']
${Web_Homepage_USD_Dropdown}                 xpath=//ul[@class='dropdown-menu bg-white rounded-3 p-2 show']
${Web_Homepage_USD_Select}                   xpath=//small[contains(text(),'United States')]
${Web_Homepage_USD_Display}                  xpath=//ul[@class='dropdown-menu bg-white rounded-3 p-2 show']

${Web_FeaturedHotel_Title}                   xpath=//strong[text()='Featured Hotels']
${Web_FeaturedFlightTitle}                   xpath=//strong[text()='Featured Flights']
${Web_FeaturedTour_Title}                    xpath=//strong[text()='Popular Tours']
${Web_FeaturedCar_Title}                     xpath=//strong[text()='Recommended Transfer Cars']

#SignUp
${Web_SignUp_SignUp}                         xpath=//strong[text()='Signup']
${Web_SignUp_FirstName_Input}                xpath=//input[@id='firstname']
${Web_SignUp_LastName_Input}                 xpath=//input[@id='last_name']
${Web_SignUp_Country_Select}
${Web_SignUp_Phone_Input}                    xpath=//input[@id='phone']
${Web_SignUp_Email_Input}                    xpath=//input[@id='user_email']
${Web_SignUp_Password_Input}                 xpath=//input[@id='password']
${Web_SignUp_IamNotARobot_Select} 
${Web_SignUp_SignUp_Button}                  xpath=//button[@id='submitBTN']

#màn hình sau khi signup thành công
${Web_AccountCreated_Titles}                 xpath=//div[@class='rounded border p-3 text-center pt-5 pb-5 bg-light']
${Web_LoginActive_Titles}                    xpath=//div[@class='rounded border p-3 text-center pt-5 pb-5 bg-light']
${Web_LoginActive_Button}                    xpath=//div[@class='rounded border p-3 text-center pt-5 pb-5 bg-light']

#Login
${Web_Login_Login}                           xpath=//strong[text()='Login']
${Web_Login_Email_Input}                     xpath=//input[@id='email']
${Web_Login_Password_Input}                  xpath=//input[@id='password']
${Web_Login_RememberMe_Checkbox}             xpath=//input[@id='rememberchb']
${Web_login_Login_Button}                    xpath=//button[@id='submitBTN']
${Web_Account_Dashboard}                     xpath=//a[@class='py-2 active btn btn-primary w-100 d-block fadeout waves-effect']


#Flight
${Web_Homepage_Flights_Select}               xpath=//a[contains(text(),'Flights')]
${Web_Flights_Flights_Title}                 xpath=//strong[text()='Search for best Flights']

${Web_Flights_TypeTrip_Select}               xpath=//div[@class ='one-way form-check d-flex align-items-center gap-0 p-0 m-0']

${Web_Flights_FlyingFrom_Select}             xpath=//div[@class='input-items from_flights'] 
${Web_Flights_FlyingFrom_Input}              xpath=//span[@class='select2-search select2-search--dropdown']//input[@class='select2-search__field']    
${Web_Flights_FlyingFrom_Dropdown}           xpath=//li[contains(@class,'select2-results__option--highlighted')] 
${Web_Flights_FlyingFrom_Button}             xpath=//li[contains(@class,'select2-results__option--highlighted')]//button
 
${Web_Flights_FlyingTo_Select}               xpath=//div[@class='input-items flights_arrival to_flights']
${Web_Flights_FlyingTo_Input}                xpath=//span[@class='select2-search select2-search--dropdown']//input[@class='select2-search__field']
${Web_Flights_FlyingTo_Dropdown}             xpath=//li[contains(@class,'select2-results__option select2-results__option--highlighted')]
${Web_Flights_FlyingTo_Button}               xpath=//li[contains(@class,'select2-results__option select2-results__option--highlighted')]//button
${Web_Flights_FlightType}                    xpath=//select[@id='flight_type']      


${Web_Flights_Date_Clear}                    xpath=//input[@id='departure']

${Web_Flights_Traveller_Select}              xpath=//div[@class='dropdown dropdown-contain']            
${Web_Flights_Traveller_Dropdown}            xpath=//div[@class='dropdown-menu dropdown-menu-wrap w-100 shadow-sm rounded-3 mt-1 p-3']
${Web_Flights_Traveller_Input}               xpath=//input[@name='adults']
${Web_Flights_Traveller_Plus}                xpath=//div[@class='dropdown-item adult_qty']//div[@class='qtyInc']
${Web_Flights_Find_Button}                   xpath=//div[@class='col-lg-1']
${Web_Flights_Traveller_Count}               xpath=//span[@class='guest_flights']

${Web_Flights_Search_Title}                  xpath=//div[@class='stacked-color']
${Web_BookingFlight_FirstName_Input}         xpath=//input[@name='first_name_1']
${Web_BookingFlight_LastName_Input}          xpath=//input[@name='last_name_1'] 
${Web_BookingFlight_Nationality_Select}      xpath=//select[@name='nationality_1']
${Web_BookingFlight_DateOfBirth_Select}      xpath=//select[@name='dob_month_1']
${Web_BookingFlight_DOB_Day1_Select}         xpath=//select[@name='dob_day_1']
${Web_BookingFlight_DOB_Year1_Select}        xpath=//select[@name='dob_year_1']
${Web_BookingFlight_Passport_Input}          xpath=//input[@name='passport_1']
${Web_BookingFlight_IssuanceDate1_Select}    xpath=//select[@name='passport_issuance_month_1']
${Web_BookingFlight_IssuanceDay1_Select}     xpath=//select[@name='passport_issuance_day_1']
${Web_BookingFlight_IssuanceYear1_Select}    xpath=//select[@name='passport_issuance_year_1'] 
${Web_BookingFlight_ExpiryDate1_Select}      xpath=//select[@name='passport_month_expiry_1']
${Web_BookingFlight_ExpiryDay1_Select}       xpath=//select[@name='passport_day_expiry_1']
${Web_BookingFlight_ExpiryYear1_Select}      xpath=//select[@name='passport_year_expiry_1']


#Hotels
${Web_Homepage_Hotels_Select}                xpath=//a[contains(text(),'Hotels')]
${Web_Hotels_Hotels_Title}                   xpath=//strong[text()='Search for best hotels']
${Web_Hotels_City_Select}                    xpath=//div[@class='input-items']
${Web_Hotels_City_Input}                     xpath=//span[@class='select2-search select2-search--dropdown']//input[@class='select2-search__field']
${Web_Hotels_City_Dropdown}                  xpath=//li[@class='select2-results__option select2-results__option--highlighted']
${Web_Hotels_City_Button}                    xpath=//li[@class='select2-results__option select2-results__option--highlighted']//i
${Web_Hotels_Checkin_Clear}                  xpath=//input[@id='checkin']
${Web_Hotels_Checkout_Clear}                 xpath=//input[@id='checkout']
${Web_Hotels_Traveller_Select}               xpath=//div[@class='dropdown dropdown-contain']
${Web_Hotels_Traveller_Dropdown}             xpath=//div[@class='dropdown-menu dropdown-menu-wrap w-100 p-3 rounded-3']
${Web_Hotels_Search_Button}                  xpath=//div[@class='col-lg-1']
${Web_Hotels_Table}                          xpath=//div[@class='pb-5']
${Web_Hotels_Scroll}                         xpath=//strong[text()='Four Points by Sheraton Bur Dubai']
${Web_Hotels_Viewmore_Button}                xpath=(//a[@class='w-100 fadeout py-2 d-flex align-items-center justify-content-center btn btn-primary d-block text-center waves-effect'])[34]
${Web_Hotels_SelectRoom_Button}              xpath=//a[@class='d-none d-lg-flex d-md-flex w-50 btn btn-primary rounded-2 py-3 fw-bold d-flex align-items-center justify-content-center gap-2 waves-effect']
${Web_Hotels_HotelRoom_Title}                xpath=//strong[text()='Hotel Rooms']
${Web_Hotels_BookNow_Button}               xpath=(//button[@type='submit'])[1]

#BLOGS
${Web_Homepage_Blog_Select}                  xpath=//a[contains(text(),'Blogs')]
${Web_Blog_Blog_Header}                      xpath=//h2[text()='PHPTRAVELS Blogs']
${Web_Blog_Blog_Title}                       xpath=//h3[contains(text(),'New Blogs')]
${Web_Blog_Title_Select}                     xpath=//a[contains(text(),'The Tiber River s Last Eel Fishermen')]
${Web_Blog_MainHeader}                       xpath=//strong[text()='The Tiber River’s Last Eel Fishermen']

#VISA
${Web_Homepage_Visa_Select}                  xpath=//a[contains(text(),'Visa')]
${Web_Visa_Visa_Title}                       xpath=//strong[text()='Submit Your Visa Today']
${Web_Visa_FromCountry_Select}               xpath=(//div[@class='input-items'])[1]    
${Web_Visa_ToCountry_Select}                 xpath=(//div[@class='input-items'])[2]
${Web_Visa_From/ToCountry_Input}             xpath=//span[@class='select2-search select2-search--dropdown']//input[@class='select2-search__field']
${Web_Visa_From/ToCountry_Dropdown}          xpath=//li[@class='select2-results__option select2-results__option--highlighted']
${Web_Visa_From/ToCountry_Button}            xpath=//li[@class='select2-results__option select2-results__option--highlighted']
${Web_Visa_Search_Button}                    xpath=//div[@class='col-md-1']
${Web_Visa_Result_Title}                     xpath=//h2[@class='sec__title_list text-center my-2 text-white mt-5']
${Web_Visa_EntryType_Select}                 xpath=//select[@name='entry_type'] 
${Web_Visa_VisaType_Select}                  xpath=//select[@name='visa_type']
#Submission Form
${Web_Form_FirstName_Input}                  xpath=//input[@name='first_name']
${Web_Form_LastName_Input}                   xpath=//input[@name='last_name']
${Web_Form_Email_Input}                      xpath=//div[@class='mb-3']//input[@name='email']
${Web_Form_Phone_Input}                      xpath=//input[@name='phone']
${Web_Form_NumberOfDay_Input}                xpath=//input[@name='number_of_days']
${Web_Form_Date_Input}                       xpath=//input[@name='date']
${Web_Form_Note_Input}                       xpath=//textarea[@placeholder='Notes']  
${Web_Form_Submit_Button}                    xpath=//div[@class='col-lg-12 responsive-column mt-2']
${Web_Form_Succed_Title}                     xpath=//div[@class='section-heading']
    

#CARS + FLIGHTS
${Web_Homepage_Car_Select}                   xpath=//a[contains(text(),'Cars')]
${Web_Car_Car_Title}                         xpath=//section[@class='feature cars']//strong[text()='Recommended Transfer Cars']
${Web_Car_FromAirport_Select}                xpath=//div[@class='input-items']
${Web_Car_FromAirport_Input}                 xpath=//input[@class='select2-search__field']
${Web_Car_From/ToAirport_Dropdown}           xpath=//li[@class='select2-results__option select2-results__option--highlighted']
${Web_Car_ToAirport_Select}                  xpath=//div[@class='input-items cars_location']
${Web_Car_ToAirport_Input}                   xpath=//input[@class='select2-search__field']
${Web_CarBooking_Title}                      xpath=//h3[text()=' Personal Information ']

${Web_Booking_FirstName_Input}               xpath=//input[@name='user[first_name]']
${Web_Booking_LastName_Input}                xpath=//input[@name='user[last_name]']
${Web_Booking_Email_Input}                   xpath=//input[@name='user[email]']
${Web_Booking_Phone_Input}                   xpath=//input[@name='user[phone]']
${Web_Booking_Address_Input}                 xpath=//input[@name='user[address]']
${Web_Booking_Nationality_Button}            xpath=//div[@class='dropdown bootstrap-select nationality w-100']
${Web_Booking_Nationality_Dropdown}          xpath=//div[@class='dropdown-menu show']
${Web_Booking_Nationality_Input}             xpath=//div[@class='dropdown-menu show']//input[@class='form-control']
${Web_Booking_Nationality_Select}            xpath=//div[@id='bs-select-1']

${Web_Booking_CurrentCountry_Button}         xpath=//div[@class='dropdown bootstrap-select country w-100']
${Web_Booking_CurrentCountry_Dropdown}       xpath=//div[@class='dropdown-menu show']
${Web_Booking_CurrentCountry_Input}          xpath= //div[@class='dropdown-menu show']//input[@class='form-control']
${Web_Booking_CurrentCountry_Select}         xpath=//a[@id='bs-select-2-232']

${Web_Booking_Title1_Dropdown}               xpath=//select[@name='title_1'] 
${Web_Booking_FirstName1_Input}              xpath=//input[@name='firstname_1']
${Web_Booking_LastName1_Input}               xpath=//input[@name='lastname_1']
${Web_Booking_Title2_Dropdown}               xpath=//select[@name='title_2'] 
${Web_Booking_FirstName2_Input}              xpath=//input[@name='firstname_2']
${Web_Booking_LastName2_Input}               xpath=//input[@name='lastname_2']

${Web_FlightBooking_Title}                   xpath=//p[text()='Flights Booking']
${Web_TourBooking_Title}                     xpath=//p[text()='Tour Booking']
${Web_HotelBooking_Title}                    xpath=//p[text()='Hotel Booking']
${Web_Homepage_Tour_Select}                  xpath=//a[contains(text(),'Tours')]
${Web_Tour_Tour_Title}                       xpath=//strong[text()='Find Best Tours']
${Web_Tour_Country_Select}                   xpath=//div[@class='input-items']
${Web_Tour_Country_Input}                    xpath=//input[@class='select2-search__field']
${Web_Tour_Country_Dropdown}                 xpath=//li[@class='select2-results__option select2-results__option--highlighted']
${Web_Tour_Date_Select}                      xpath=//input[@id='date']
${Web_Tour_Search_Button}                    xpath=//button[@class='search_button w-100 btn btn-primary btn-m rounded-sm font-700 text-uppercase btn-full waves-effect']
${Web_Tour_Result_Table}                     xpath= //div[@class='bg-light pb-5']
${Web_Tour_Scroll}                           xpath=//strong[text()='Safari Dubai']
# ${Web_Tour_ViewMore_Button}                  xpath=(//a[@class='fadeout py-2 d-flex align-items-center justify-content-center btn btn-primary rounded-1 d-block text-center waves-effect'])[18]
${Web_Tour_ViewMore_Button}                  xpath=(//a[@class='fadeout py-2 d-flex align-items-center justify-content-center btn btn-primary rounded-1 d-block text-center waves-effect'])[1]
${Web_Tour_Submit_Button}                    xpath=//button[@type='submit']

${Web_Zoom75%}                               xpath=document.body.style.zoom='75%'
${Web_Checkbox}                                //input[@id='agreechb']
${Web_Booking_Submit_Button}                 xpath=//button[@id='booking']
