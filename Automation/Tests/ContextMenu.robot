*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/Common.robot
Resource    ../PageObject/KeywordDefinitionFiles/HomePage.robot

*** Variables ***
${site_url}    https://the-internet.herokuapp.com/
${browser}    Firefox

*** Test Cases ***

Opening Context Menu
    [Tags]    Regression    ContextMenu
    Opening Browser    ${site_url}    ${browser}
    Opening Sub Page    ${ContextMenu}    ${ContextMenuHeading}
    Open Context Menu    ${ContextMenuBox}
    Handle Alert
    Close Browser