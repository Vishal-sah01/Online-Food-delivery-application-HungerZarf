*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${start_link}  http://127.0.0.1:5000/signup
${browser}  chrome
*** Test Cases ***
Verifying Home page
    [Documentation]  verify Signuphome functionality
    Start Testcase
    Verify search result
#    Finish Testcase
*** Keywords ***
Start Testcase
    Open Browser  ${start_link}  ${browser}
    Maximize Browser Window
Verify search result
     Input Text  //input[@placeholder='Your Name']  kapil
     Input Text  //input[@placeholder='Your Gender']  male
     Input Text  //input[@placeholder='Email']  kapil12@gmail.com
     Input Text  //input[@placeholder='Your Phone number']  9315533150
     Input Text  //input[@placeholder='Password']  kapil12
     Press Keys  //input[@class='form-submit']  [Return]
#Finish Testcase
#    Close Browser