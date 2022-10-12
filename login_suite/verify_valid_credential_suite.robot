*** Settings ***
Documentation       This suite file handles test cases related to valid
...                 credentials connected with OP_SC_02 and OP_TC_02

Resource            ../Resource/Base/CommonFunctionality.resource

Test Setup          Launch Browser and Navigate To Openemr
Test Teardown       Close Browser


*** Test Cases ***
Verify valid credential test
    Input Text    id=authUser    admin
    Input Password    css=#clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Element Should Be Visible    xpath=//div[text()='Calendar']
    Title Should Be    OpenEMR
