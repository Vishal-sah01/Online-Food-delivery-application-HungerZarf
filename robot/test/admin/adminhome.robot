*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${start_link}  http://127.0.0.1:5000/adminlogin
${browser}  chrome
*** Test Cases ***
Verifying Home page
    [Documentation]  verify webiste link
    Start Testcase
#    Finish Testcase
*** Keywords ***
Start Testcase
    Open Browser  ${start_link}  ${browser}
    Maximize Browser Window
Finish Testcase
    Close Browser