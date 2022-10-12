*** Settings ***
Documentation       This suite file handles test cases related to valid
...                 credentials connected with OP_SC_02 and OP_TC_07

Resource            ../Resource/Base/CommonFunctionality.resource

Test Setup          Launch Browser and Navigate To Openemr
Test Teardown       Close Browser
Test Template       Verify Invalid Credential Template


*** Test Cases ***
TC1    john    john12    English (Indian)    Invalid username or password
TC2    peter    peter123    Danish    Invalid username or password


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${username}    ${language}    ${expected_error}

    Input Text    id=authUser    ${username}
    Input Password    css=#clearPass    ${username}
    Select From List By Label    name=languageChoice    ${language}
    Click Element    id=login-button
    Element Should Contain    xpath=//div[contains(text(),'Invalid')]    ${expected_error}
