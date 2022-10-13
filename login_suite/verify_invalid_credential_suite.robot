*** Settings ***
Documentation       This suite file handles test cases related to valid
...                 credentials connected with OP_SC_02 and OP_TC_07

Resource            ../Resource/Base/CommonFunctionality.resource
Resource            ../Resource/Pages/LoginPage.resource

Test Setup          Launch Browser and Navigate To Openemr
Test Teardown       Close Browser
Test Template       Verify Invalid Credential Template


*** Test Cases ***
TC1    john    john12    English (Indian)    Invalid username or password123
TC2    peter    peter123    Danish    Invalid username or password
# TC3    mark    mark123    Danish    Invalid username or password


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_error}

    Enter Username    ${username}
    Enter Password    ${password}
    Select Language By Label    ${language}
    Click Login
    Validate Invalid Error Message    ${expected_error}
