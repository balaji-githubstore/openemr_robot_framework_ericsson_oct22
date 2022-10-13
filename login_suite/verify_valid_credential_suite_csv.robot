*** Settings ***
Documentation       This suite file handles test cases related to valid
...                 credentials connected with OP_SC_02 and OP_TC_02

Resource            ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource

Library    DataDriver    file=../test_data/valid_credential_data.csv    

Test Setup          Launch Browser and Navigate To Openemr
Test Teardown       Close Browser

Test Template       Verify Valid Credential Template


*** Test Cases ***
Verify Valid Credential Test_${tc_name}

*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_title}
    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login
    Main Page Title Should Be    ${expected_title}
        
    
    