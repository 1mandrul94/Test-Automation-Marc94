*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/Common.robot
Resource    ../PageObject/KeywordDefinitionFiles/HomePage.robot

*** Variables ***
${site_url}    https://the-internet.herokuapp.com/
${browser}    Firefox

*** Test Cases ***

Opening Checkboxes
    [Tags]    Regression    Checkboxes
    Opening Browser    ${site_url}    ${browser}
    Opening Sub Page    ${Checkboxes}    ${CheckboxesHeading}

Checking Checkboxes
    [Tags]    Regression    Checkboxes    Checking1
    Test Prerequisite
    Checkbox Should Not Be Selected    ${Checkbox1}
    Select Checkbox    ${Checkbox1}
    Checkbox Should Be Selected    ${Checkbox1}
    Checkbox Should Be Selected    ${Checkbox2}
    Unselect Checkbox    ${Checkbox2}
    Checkbox Should Not Be Selected    ${Checkbox2}
    Capture Page Screenshot
    Close Browser

*** Keywords ***

Test Prerequisite
    Opening Browser    ${site_url}    ${browser}
    Opening Sub Page    ${Checkboxes}    ${CheckboxesHeading}