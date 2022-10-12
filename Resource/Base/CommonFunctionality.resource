*** Settings ***
Documentation       This file handles the configuration, reusable keywords

Library             SeleniumLibrary
Library             DriverSetup.py


*** Variables ***
${BROWSER_NAME}     chrome
${URL}              https://demo.openemr.io/b/openemr


*** Keywords ***
Launch Browser and Navigate To Openemr
    ${driver_path}    Get Driver Path    ${BROWSER_NAME}
    Open Browser    browser=${BROWSER_NAME}    executable_path=${driver_path}
    Maximize Browser Window
    Set Selenium Implicit Wait    0s
    Set Screenshot Directory    ${EXECDIR}${/}screenshot
    Go To    url=${URL}
