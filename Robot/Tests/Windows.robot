*** Settings ***
Resource    ../Resource/Functions.robot
Library     SeleniumLibrary
*** Variables ***
${url}       https://rahulshettyacademy.com/AutomationPractice/
${browser}      chrome
*** Test Cases ***
TestMultiple
    Open Browser      ${url}      ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait   10
    SwitchtoWindow
TestDropdown
    [Tags]      dropdown
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    dropdown
    ${speed}    Get Selenium Speed
    Log To Console    ${speed}

TestAlert
    Open Browser      ${url}      ${browser}
    Maximize Browser Window
    Alertswindow




