*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${start_link}  http://127.0.0.1:5000/adminlogin
${browser}  chrome
*** Test Cases ***
Verifying Home page
    [Documentation]  verify admin-in  functionality
    Start Testcase
    Verify search result
    Verify search result
#    Finish Testcase
*** Keywords ***
Start Testcase
    Open Browser  ${start_link}  ${browser}
    Maximize Browser Window
Verify search result
     Input Text  //input[@placeholder='Username']  admin
     Input Password  //input[@placeholder='Password']  12345
     Press Keys  //button[@class='submit']  [Return]
Verify logout result
     Press Keys  Xpath:/html/body/section[1]/div/a  [Return]

Finish Testcase
    Close Browser