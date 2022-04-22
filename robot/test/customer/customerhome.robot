*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${start_link}  http://127.0.0.1:5000/support
${browser}  chrome
*** Test Cases ***
Verifying Home page
    [Documentation]  verify customer support functionality
    Start Testcase

#    Finish Testcase
*** Keywords ***
Start Testcase
    Open Browser  ${start_link}  ${browser}
    Maximize Browser Window
#Finish Testcase
#    Close Browser