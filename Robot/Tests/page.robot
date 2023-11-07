*** Settings ***
Library     SeleniumLibrary
Resource        ../Resource/Functions.robot

***Variables***
${browser}      chrome
${url}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases***
LoginTest
    Open Browser    ${url}       ${browser}
    Maximize Browser Window
    Set Browser Implicit Wait    10
    LogintoApplication
    CheckBrowser
    ClickPIM
    Logout
    Close Browser


