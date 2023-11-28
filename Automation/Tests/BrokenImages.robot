*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObject/KeywordDefinitionFiles/Common.robot
Resource    ../PageObject/KeywordDefinitionFiles/HomePage.robot

*** Variables ***
${site_url}    https://the-internet.herokuapp.com/
${browser}    Firefox

*** Test Cases ***

Finding Avatar Image
    [Tags]    Regression    BrokenImages
    Opening Browser    ${site_url}    ${browser}
    Opening Sub Page    ${BrokenImages}    ${BrokenImagesHeading}
    Page Should Contain Image    ${AvatarImage}
    Capture Element Screenshot    ${AvatarImage}