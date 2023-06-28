*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://www.olx.pl/
${BROWSER}    Firefox

*** Test Cases ***
Open Page Test
    Open page

Open Search Box TEst
    Open Search


*** Keywords ***
Open page
    Open Browser
    maximize browser window
    Go To    ${LOGIN URL}
    Wait Until Page Contains Element      id:onetrust-accept-btn-handler
    Click Element      id:onetrust-accept-btn-handler           #accepts cookies changed 2

Open Search
    wait until page contains element      id:submit-searchmain
    Double Click Element      id:submit-searchmain
    wait until page contains element      class:css-1m2f27v
    Input Text      name:range-from-input      300000
    Input Text      name:range-to-input      600000