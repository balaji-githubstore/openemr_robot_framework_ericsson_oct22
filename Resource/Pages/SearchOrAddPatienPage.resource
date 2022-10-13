*** Settings ***
Documentation       This file handles all the elements in the login page of openemr

Resource            ../Base/CommonFunctionality.resource


*** Variables ***
${FIRSTNAME_LOCATOR}         id=form_fname



*** Keywords ***
Enter FirstName
    [Arguments]    ${firstname}
    Input Text    ${FIRSTNAME_LOCATOR}    ${firstname}