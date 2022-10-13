*** Settings ***
Documentation       This file handles all the elements in the main page of openemr

Resource            ../Base/CommonFunctionality.resource


*** Variables ***
${CALENDAR_LOCATOR}     xpath=//*[text()='Calendar']
${MESSAGES_LOCATOR}     xpath=//*[text()='Messages']
${PATIENTS_LOCATOR}     xpath=//*[text()='Patient']
${NEWSEARCH_LOCATOR}    xpath=//*[text()='New/Search']


*** Keywords ***
Click Calendar
    Click Element    ${CALENDAR_LOCATOR}

Click Messages
    Click Element    ${MESSAGES_LOCATOR}

Main Page Title Should Be
    [Arguments]    ${expected_title}
    Title Should Be    ${expected_title}

Click Patients
    Click Element    ${PATIENTS_LOCATOR}

Click NewSearch
    Click Element    ${NEWSEARCH_LOCATOR}
