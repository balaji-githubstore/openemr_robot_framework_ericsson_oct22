*** Settings ***
Documentation       This file handles the configuration, reusable keywords

Library             SeleniumLibrary
Library             DriverSetup.py


*** Variables ***
${BROWSER_NAME}     chrome
${URL}              https://demo.openemr.io/b/openemr


*** Keywords ***
Launch Browser and Navigate To Openemr
    # ${driver_path}    Get Driver Path    ${BROWSER_NAME}
    IF    '${BROWSER_NAME}' == 'chrome'
        Open Browser    browser=${BROWSER_NAME}    executable_path=${EXECDIR}${/}chromedriver.exe
    ELSE IF    '${BROWSER_NAME}' == 'edge'
        Open Browser    browser=${BROWSER_NAME}    executable_path=${EXECDIR}${/}msedgedriver.exe
    ELSE
        Open Browser    browser=${BROWSER_NAME}    executable_path=${EXECDIR}${/}geckodriver.exe
    END

    Maximize Browser Window
    Set Selenium Implicit Wait    0s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}
