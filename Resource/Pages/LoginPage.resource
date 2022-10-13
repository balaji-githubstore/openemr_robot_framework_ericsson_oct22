*** Settings ***
Documentation       This file handles all the elements in the login page of openemr

Resource            ../Base/CommonFunctionality.resource


*** Variables ***
${USERNAME_LOCATOR}         id=authUser
${PASSWORD_LOCATOR}         css=#clearPass
${LANGUAGE_LOCATOR}         name=languageChoice
${LOGIN_LOCATOR}            id=login-button
${ERROR_LOCATOR}            xpath=//div[contains(text(),'Invalid')]
${ACKLICCERT_LOCATOR}       partial link=Acknowledgments


*** Keywords ***
Enter Username
    [Documentation]    Types the given username in the field \n\n
    ...    Examples: \n\n
    ...    | Enter Username | admin |
    ...    | Enter Username | peter |
    [Arguments]    ${username}
    Input Text    ${USERNAME_LOCATOR}    ${username}

Enter Password
    [Documentation]    Types the given password in the field \n\n
    ...    Examples: \n\n
    ...    | Enter Password | admin |
    ...    | Enter Password | peter |
    [Arguments]    ${password}
    Input Password    ${PASSWORD_LOCATOR}    ${password}

Select Language By Label
    [Documentation]    Select the given language in the field \n\n
    ...    Examples: \n\n
    ...    | Select Language By Label | Dutch |
    ...    | Select Language By Label | Danish |
    [Arguments]    ${language}
    Select From List By Label    ${LANGUAGE_LOCATOR}    ${language}

Click Login
    [Documentation]    Click On login \n\n
    ...    Examples: \n\n
    ...    | Click Login |
    Click Element    ${LOGIN_LOCATOR}

Validate Invalid Error Message
    [Arguments]    ${expected_message}
    Element Should Contain    ${ERROR_LOCATOR}    ${expected_message}

Click AckLicCert
    Click Element    ${ACKLICCERT_LOCATOR}

Get AckLicCert LinkText
    ${linktext}    Get Text    ${ACKLICCERT_LOCATOR}
    RETURN    ${linktext}

Validate AckLicCert LinkText
    [Arguments]    ${expected_linktext}
    Element Text Should Be    ${ACKLICCERT_LOCATOR}    ${expected_linktext}
