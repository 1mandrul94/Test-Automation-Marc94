*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/Common.robot
Resource    ../PageObject/KeywordDefinitionFiles/HomePage.robot

*** Variables ***
${site_url}    https://the-internet.herokuapp.com/
${browser}    Firefox

*** Test Cases ***
Opening The Internet
    [Tags]    Regression    Add/Remove    OpeningTheInternet
    Opening Browser    ${site_url}    ${browser}
    Close Browser

Add Elements
    [Tags]    Regression    Add/Remove    AddingElement
    Test Prerequisite    #Opening The Internet and subpage
    Click Button    ${AddElementButton}
    Page Should Contain Button    ${DeleteButton}
    Close Browser

Remove Elements
    [Tags]    Regression    Add/Remove    DeletingElement
    Test Prerequisite    #Opening The Internet and subpage
    Click Button    ${AddElementButton}
    Page Should Contain Button    ${DeleteButton}
    Click Button    ${DeleteButton}
    Page Should Not Contain Button    ${DeleteButton}
    Close Browser

Test Run
    [Tags]    TestRun
    Test Prerequisite
    Click Button    ${AddElementButton}
    Page Should Contain Button    ${DeleteButton}
    Click Button    ${DeleteButton}
    Page Should Not Contain Button    ${DeleteButton}

*** Keywords ***

Test Prerequisite
    Opening Browser   ${site_url}    ${browser}
    Opening Sub Page    ${AddRemoveElement}    ${AddRemoveHeading}