*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/Common.robot
Resource    ../PageObject/KeywordDefinitionFiles/HomePage.robot

*** Variables ***
${site_url}    https://the-internet.herokuapp.com/
${browser}    Firefox

*** Test Cases ***
Opening The Internet
    [Tags]    Marcin
    Opening Browser    ${site_url}    ${browser}