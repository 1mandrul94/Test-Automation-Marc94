*** Settings ***
Library  RequestsLibrary
Library    SeleniumLibrary
Library    JSONLibrary

*** Variables ***
${BASE_URL}    https://jsonplaceholder.typicode.com

*** Test Cases ***
Get Users
    [Tags]    API
    [Documentation]    Get a list of users
    Create Session  users  ${BASE_URL}
    ${response}  GET On Session  users  /users
    Should Be Equal As Numbers  ${response.status_code}  200
    ${users}  Convert To Json  ${response.content}
    Log Many  ${users}

Create User
    [Tags]    API
    [Documentation]    Create a new user
    Create Session  users  ${BASE_URL}
    ${data}  Create Dictionary  name=JohnDoe  username=johndoe
    ${response}  Post Request  users  /users  data=${data}
    Should Be Equal As Numbers  ${response.status_code}  201
    #${user}  Convert To Json  ${response.content}
    Log Many  ${user}

*** Keywords ***
Log Many
    [Arguments]  @{items}
    :FOR  ${item}  IN  @{items}
    \  Log  ${item}