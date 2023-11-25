*** Settings ***
Library    SeleniumLibrary    plugins=SeleniumTestability;True;30 Seconds;True
Resource    ../PageObject/KeywordDefinitionFiles/Common.robot
Resource    ../PageObject/KeywordDefinitionFiles/HomePage.robot

*** Variables ***
${site_url}    https://the-internet.herokuapp.com/
${browser}    Firefox

*** Test Cases ***

Drag And Drop
    [Documentation]    pip install robotframework-seleniumtestability for drag and drop keyword
    [Tags]    Regression    DragAndDrop
    Opening Browser    ${site_url}    ${browser}
    Opening Sub Page    ${DragAndDrop}    ${DragAndDropHeading}
    Capture Element Screenshot    ${ColumnB}
    Drag And Drop    ${ColumnA}    ${ColumnB}    html5=True
    Capture Element Screenshot    ${ColumnB}
    Execute Javascript    document.getElementById('column-b').click()