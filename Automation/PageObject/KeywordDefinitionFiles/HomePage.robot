*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Variables    ../TestData/TestData.py

*** Keywords ***

Opening Browser
    [Arguments]    ${site_url}    ${browser}
    Open Browser    ${site_url}    ${browser}
    Wait until element is visible    ${HomePageHeading}    timeout=5