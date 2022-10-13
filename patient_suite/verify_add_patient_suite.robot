*** Settings ***
Documentation       This suite file handles test cases related to valid
...                 credentials connected with OP_SC_02 and OP_TC_02

Resource            ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource
Resource    ../Resource/Pages/SearchOrAddPatienPage.resource

Library    DataDriver    file=../test_data/openemr_data.xlsx    sheet_name=VerifyValidCredential

Test Setup          Launch Browser and Navigate To Openemr
Test Teardown       Close Browser

*** Test Cases ***
Verify Add Patient Test 
    Enter Username    admin
    Enter Password    pass
    Select Language By Label    English (Indian)
    Click Login
    Click Patients
    Click NewSearch
    Enter FirstName    john
    #check steps in comment section

*** Comments ***
1.	Navigate onto http://demo.openemr.io/b/openemr/
2.	Update username as admin
3.	Update password as pass
4.	Select language as English (Indian)
5.	Click on the login button
6.	Click on Patient  Click New Search
7.	Add the first name, last name
8.	Update DOB as today's date driver.findElement(By.id("form_DOB")).sendKeys("2021-12-06");
9.	Update the gender
10.	Click on the create new patient button above the form
11.	Click on confirm create new patient button.
12.	Print the text from alert box (if any error before handling alert add 5 sec wait)
13.	Handle alert
14.	Close the Happy Birthday popup
15.	Verify the added patient name and print in the console.
