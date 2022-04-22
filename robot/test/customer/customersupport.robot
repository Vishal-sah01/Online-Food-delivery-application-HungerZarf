*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${start_link}  http://127.0.0.1:5000/support
${browser}  chrome
*** Test Cases ***
Verifying Home page
    [Documentation]  verify customer support functionality
    Start Testcase
    Verify search result
#    Finish Testcase
*** Keywords ***
Start Testcase
    Open Browser  ${start_link}  ${browser}
    Maximize Browser Window
Verify search result
     Input Text  //input[@placeholder='Name']  sachin
     Input Text  //input[@placeholder='Contact Number']  9315533120
     Input Text  //input[@placeholder='City']  Delhi
     Input Text  //input[@placeholder='Email']  sachin29@gmail.com
     Input Text  //input[@placeholder='Enter your query !!']  Payment issue
     Press Keys  //button[@class='btn btn-success mt-5']  [Return]
#Finish Testcase
#    Close Browser