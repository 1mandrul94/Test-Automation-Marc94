*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/Common.robot
Resource    ../PageObject/KeywordDefinitionFiles/HomePage.robot

*** Variables ***
${site_url}    https://the-internet.herokuapp.com/
${browser}    Firefox

*** Test Cases ***

Opening Challenging DOM
    [Tags]    Regression    ChallengingDOM
    Opening Browser    ${site_url}    ${browser}
    Opening Sub Page    ${ChallengingDom}    ${ChallengingDomHeading}