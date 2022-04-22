*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${start_link}  http://127.0.0.1:5000/
${browser}  chrome
*** Test Cases ***
Verifying Home page
    [Documentation]  verify home-sign  functionality
    Start Testcase
    Verify search result

#    Finish Testcase
*** Keywords ***
Start Testcase
    Open Browser  ${start_link}  ${browser}
    Maximize Browser Window
Verify search result
     Input Text  //input[@placeholder='Email']  kp@gmail.com
     Input Password  //input[@placeholder='Password']  kp
     Press Keys  //button[@class='submit']  [Return]

Finish Testcase
    Close Browser