*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${start_link}  http://127.0.0.1:5000/jobSeeker
${browser}  chrome
*** Test Cases ***
Verifying Home page
    [Documentation]  verify Jobseeker functionality
    Start Testcase
    Verify search result
#    Finish Testcase
*** Keywords ***
Start Testcase
    Open Browser  ${start_link}  ${browser}
    Maximize Browser Window
Verify search result
     Input Text  //input[@placeholder='Name']  kapil
     Input Text  //input[@placeholder='Contact Number']  9315533150
     Input Text  //input[@placeholder='Job Requirement']  Delivery boy
     Press Keys  //button[@class='btn btn-success mt-5']  [Return]
#Finish Testcase
#    Close Browser