*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://www.google.com

*** Test Cases ***
Google Search for Robot Framework
    [Documentation]  Open Google and search for "Robot Framework"
    Open Browser  ${URL}  chrome
    Input Text  name=q  Robot Framework
    Press Keys  name=q  13
    Click Button  //div[@class='FPdoLc lJ9FBc']//input[@name='btnK']


