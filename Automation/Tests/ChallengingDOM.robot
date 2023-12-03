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

Blue Button Click
    [Tags]    Regression    ChallengingDom    BlueButton
    Test Prerequisite
    Wait Until Page Contains Element  ${BlueButton}
    ${id} =    Get Element Attribute    ${BlueButton}    id
    Page Should Contain Element    //*[@id="${id}"]
    #Click Element    id:${id}
    Sleep    2s
    Execute Javascript    document.getElementById("${id}").click()
    Sleep    2s
    Capture Element Screenshot    ${BlueButton}
    Close Browser

Red Button Click
    [Tags]    Regression    ChallengingDom    RedButton
    Test Prerequisite
    Wait Until Page Contains Element  ${RedButton}
    ${id} =    Get Element Attribute    ${RedButton}    id
    Page Should Contain Element    //*[@id="${id}"]
    Click Element    id:${id}
    Capture Element Screenshot    ${RedButton}
    Close Browser

Green Button Click
    [Tags]    Regression    ChalLengingDom    GreenButton
    Test Prerequisite
    Wait Until Page Contains Element  ${GreenButton}
    ${id} =    Get Element Attribute    ${GreenButton}    id
    Page Should Contain Element    //*[@id="${id}"]
    Click Element    id:${id}
    Capture Element Screenshot    ${GreenButton}
    Close Browser

*** Keywords ***

Test Prerequisite
    Opening Browser    ${site_url}    ${browser}
    Opening Sub Page    ${ChallengingDom}    ${ChallengingDomHeading}
