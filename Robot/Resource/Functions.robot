*** Settings ***
Library        SeleniumLibrary

*** Keywords ***

LogintoApplication
    Input Text    css:input[name='username']    Admin
    Input Password    css:input[name='password']    admin123
    Click Button    css:button[type='submit']

CheckBrowser
    Title Should Be    OrangeHRM

ClickPIM
    ${pim}  Set Variable    xpath:(//li[@class='oxd-main-menu-item-wrapper'])[2]
    Element Should Be Visible    ${pim}
    Click Element    ${pim}

Logout
    Click Element    css:.oxd-userdropdown-tab
    Click Element    xpath://a[text()='Logout']
    
SwitchtoWindow
    Click Element    opentab
    @{window}=       Get Window Handles
    @{title}=       Get Window Titles
    Log To Console    ${title}[0]
    Switch Window     title=${title}[1]
    Close Browser

dropdown
    Click Element    dropdown-class-example
    ${values}       Get List Items    dropdown-class-example
    Log To Console    ${values}
    Select From List By Index    dropdown-class-example     2

Alertswindow
    Sleep    10
    Click Element    confirmbtn

    Alert Should Be Present     Hello , Are you sure you want to confirm?
#    Sleep    10
#    Handle Alert        Accept

#    Select From List By Index  //select[@id='dropdown-class-example']//option[2]    2






