*** Settings ***
Documentation    This suite file handles test cases related to valid 
...    credentials connected with OP_SC_02 and OP_TC_02

Library    SeleniumLibrary

Test Teardown    Close Browser

*** Test Cases ***
Verify valid credential test 
    Open Browser    browser=chrome    executable_path=D:${/}Software${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    url=https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    css=#clearPass    pass 
    Select From List By Label    name=languageChoice    English (Indian)
    Click Element    id=login-button
    Element Should Be Visible    xpath=//div[text()='Calendar']
    Title Should Be    OpenEMR
   
    
    
    
    