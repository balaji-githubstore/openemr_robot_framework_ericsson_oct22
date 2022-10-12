*** Settings ***
Documentation       This suite file handles test cases related to valid
...                 credentials connected with OP_SC_02 and OP_TC_02

Resource            ../Resource/Base/CommonFunctionality.resource

Test Setup          Launch Browser and Navigate To Openemr
Test Teardown       Close Browser

Test Template       Verify Valid Credential Template

Library    DatabaseLibrary

*** Test Cases ***
TC1    admin    pass    English (Indian)    OpenEMR
TC2    physician    physician    English (Indian)    OpenEMR

TC3 DB
    [Template]     Print Word
    [Setup]    
    [Teardown]        
    hello

TC4
    [Template]      
    [Setup]    Connect To Database
    [Teardown]     Disconnect From Database


TC4
    [Template]      Verify Valid Credential Template
    admin    pass    Dutch    OpenEMR

*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Element    id=login-button
    Title Should Be    ${expected_title}

Print Word
    [Arguments]     ${word}
    Log To Console    ${word}