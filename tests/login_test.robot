*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/variables.robot
Resource  ../resources/keywords.robot


*** Test Cases ***
Open Browser and Check Title
    Open Browser  ${URL}  browser=${BROWSER}  executable_path=${DRIVER_PATH}
    Title Should Be  Test Login | Practice Test Automation
    [Teardown]  Close Browser



