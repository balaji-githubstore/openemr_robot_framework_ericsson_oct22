*** Settings ***
Documentation    This file handles the configuration, reusable keywords 

Library    SeleniumLibrary


*** Keywords ***
Launch Browser and Navigate To Openemr
    Open Browser    browser=chrome    executable_path=D:${/}Software${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://demo.openemr.io/b/openemr