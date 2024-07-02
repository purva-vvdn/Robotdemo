*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/variables.robot
Resource  ../resources/keywords.robot

*** Test Cases ***
Valid Login
    [Documentation]  Test valid login with correct username and password
    Open Login Page
    Input Username  ${VALID_USERNAME}
    Input Password  ${VALID_PASSWORD}
    Submit Login

Invalid Login
    [Documentation]  Test invalid login with incorrect username and password
    Open Login Page
    Input Username  ${INVALID_USERNAME}
    Input Password  ${INVALID_PASSWORD}
    Submit Login
