*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Login Page
    Open Browser  ${LOGIN_URL}  chrome

Input Username
    [Arguments]  ${username}
    Input Text  name=username  ${username}

Input Password
    [Arguments]  ${password}
    Input Text  name=password  ${password}

Submit Login
    Click Button  //button[@class='btn']
    
Get Browser Options
    [Arguments]  ${driver_path}
    ${options}  Create Dictionary  executable_path=${driver_path}
    [Return]  ${options}
