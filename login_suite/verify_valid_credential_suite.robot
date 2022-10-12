*** Settings ***
Documentation       This suite file handles test cases related to valid
...                 credentials connected with OP_SC_02 and OP_TC_02

Resource            ../Resource/Base/CommonFunctionality.resource

Library    DataDriver    file=../test_data/openemr_data.xlsx    sheet_name=VerifyValidCredential

Test Setup          Launch Browser and Navigate To Openemr
Test Teardown       Close Browser

Test Template       Verify Valid Credential Template


*** Test Cases ***
Verify Valid Credential Test ${tc_name}

*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}
    
    
    