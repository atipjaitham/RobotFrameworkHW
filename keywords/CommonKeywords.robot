*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    5x    2s    Input Text    ${locator}    ${text}

Wait until page contains element then verify text
    [Arguments]    ${locator}    ${expected_message}
    Wait Until Keyword Succeeds    5x    2s    Page Should Contain    ${expected_message}

Wait until page contains button then verify text
    [Arguments]    ${button}
    Wait Until Keyword Succeeds    5x    2s    Page Should Contain    ${button}

Wait until page contains checkbox then click element
    [Arguments]    ${checkbox}
    Wait Until Keyword Succeeds    5x    2s    Select Checkbox         ${checkbox}