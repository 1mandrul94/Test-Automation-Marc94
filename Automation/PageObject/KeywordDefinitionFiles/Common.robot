*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/locators.py
Variables    ../TestData/TestData.py

*** Keywords ***

Opening Sub Page
    [Arguments]    ${sub_page_url}    ${sub_page_element}
    Click element    ${sub_page_url}
    Wait until element is visible    ${sub_page_element}



