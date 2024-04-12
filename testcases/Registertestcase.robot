*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/RegisterKeywords.robot
Resource    ../keywords/HomePageKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Suite Setup        Open Browser    ${url}    ${browser}
Suite Teardown     Close Browser

*** Test Cases ***
As a user, I want to regiter new account
    When CLick to Register Page with button
    Then user Register to Register from on Futureskills with ${url} and ${browser} and ${email} and ${firstname} and ${lastname} and ${phone} and ${password}
    Then user click to submit register form
    Then Verify OTP text with ${expected_message}
    [Teardown]




