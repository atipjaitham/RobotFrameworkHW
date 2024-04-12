*** Settings ***
Library    SeleniumLibrary
Resource    CommonKeywords.robot

*** Keywords ***
Homepage should have a register button as ${button}
    CommonKeywords.Wait until page contains button then verify text    //button[contains(text(),'สมัครสมาชิก')]

CLick to Register Page with ${button}
    CommonKeywords.Wait until element is ready then click element    //button[contains(text(),'สมัครสมาชิก')]