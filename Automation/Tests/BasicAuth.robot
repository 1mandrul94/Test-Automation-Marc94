*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/Common.robot
Resource    ../PageObject/KeywordDefinitionFiles/HomePage.robot

*** Variables ***
${site_url}    https://the-internet.herokuapp.com/
${browser}    Firefox

*** Test Cases ***

Basic Auth Login
    [Tags]    Regression    BasicAuth
    Opening Browser    ${site_url}    ${browser}
    Go To    ${BasicAuthLink}
    Page Should Contain Element    ${BasicAuthHeading2}
    Close Browser