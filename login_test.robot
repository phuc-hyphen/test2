*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${email}  //*[@id="ctl00_CPHContainer_txtUserLogin"]
${password}  //*[@id="ctl00_CPHContainer_txtPassword"]
${login_button}    //*[@id="ctl00_CPHContainer_btnLoginn"]
${login_box}    //*[@id="ctl00_CPHContainer_spUserLogin"]
${notification_box}     //*[@id="ctl00_CPHContainer_lblOutput"]
${valid_email}       cotiphuong001@gmail.com
${valid_password}       Demopon99
${url}          http://www.testyou.in/Login.aspx
*** Keywords ***

*** Test Cases ***
login test 1
    [Tags]  success
    Open Browser  ${url}    chrome
    input text  ${email}    ${valid_email}
    input text  ${password}  ${valid_password}
    click button  ${login_button}

    element text should be  ${login_box}    afr5478
    ${infor}=       get text   ${login_box}
    log to console  ${infor}
    close browser

login test 2
    [tags]  fail
    Open Browser  ${url}     chrome
    input text  ${email}    000000000
    input text  ${password}  11111111111
    click button  ${login_button}
    element text should be      ${notification_box}     Userid or Password did Not Match !!
    close browser


