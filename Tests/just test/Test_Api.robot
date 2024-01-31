*** Settings ***
Library     RPA.HTTP
Library     RPA.JSON
Library     RPA.Browser.Selenium
Library     RPA.FileSystem
Resource    ../../Resources/Login/Keywords_Login_Test.robot


*** Variables ***
${base_url}             http://dapi.cd.local
${id}                   4634c085713842339f08b4cbd5002f18?connId=zWdQbq9dZb4PUgJaACZx
${cookies_file}         cookies.json
# ${cookies}    Get Cookie    name=KEYCLOAK_IDENTITY_LEGACY    domain=http://daccount.cd.local
${name}                 KEYCLOAK_IDENTITY_LEGACY
${domain}               http://daccount.cd.local
${get_cookies}          Get Cookies    domain=http://daccount.cd.local    path=/auth/realms/bo-puri/
${add_cookies}          Add Cookies    ${get_cookies}
${COOKIE_FILE_PATH}     cookies.txt


*** Test Cases ***
test get
    Create Session    my_session    ${base_url}
    ${response}=    GET On Session    my_session    /msqueue/api/v1/antrians/${id}
    Log    ${response.status_code}
    Log    ${response.content}
    Log    ${response.headers}
    GET On Session

test cookies
    Open Browser    http://dcaller.cd.local/    Chrome
    Maximize Browser Window
    Sleep    4
    ${cookies}=    Get Cookies
    Input Text    xpath=//*[@id="username"]    admin_caller
    Input Text    xpath=//*[@id="password"]    Mandaya123
    Click Element    xpath=//*[@id="kc-login"]
    Click Element When Visible    xpath=//*[@id="app"]/div/div/div[3]/button[1]
    Switch Window    title=caller
    Sleep    5
    Click Element When Visible    //*[@id="Counter"]
    Click Element    //*[@id="app"]/div/div/div/div[2]/div[1]/div/div[1]/div/ul/div[2]/li/button
    Click Element    //*[@id="Desks"]/div/div/div[2]/div/div/div[2]
    Click Element    //*[@id="null-25"]
    Click Element    //*[@id="null-26"]
    Click Element    //button[@class="caller-btn fs-14 fw-700"]
    Create File    cookies.txt    ${cookies}
    Log Many    ${cookies}
    Close Browser

test set
    Open Available Browser
    Read File    ${add_cookies}
    Go To    http://dcaller.cd.local/
    Maximize Browser Window
    Sleep    4
    Input Text    xpath=//*[@id="username"]    unit_caller
    Input Text    xpath=//*[@id="password"]    Mandaya123
    Click Element    xpath=//*[@id="kc-login"]
    Click Element When Visible    xpath=//*[@id="app"]/div/div/div[3]/button[1]
    Switch Window    title=caller

test login
    Open Available Browser
    Go To    http://dcaller.cd.local/
    Add Cookie
    ...    KEYCLOAK_SESSION_LEGACY
    ...    bo-puri/f361c6a9-f40a-4bbe-9bcd-b153320939de/bf5809d5-2309-4e93-ac54-f5db96adb168
    Add Cookie
    ...    KEYCLOAK_IDENTITY_LEGACY
    ...    eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI5NDdlNzUyMy1kMjkyLTQ0OGQtODFkMS1hMjJjMGQ3YjdlZWIifQ.eyJleHAiOjE3MDYxOTM5MDMsImlhdCI6MTcwNjE1NzkwMywianRpIjoiNDg5MTAxOTgtMzBhOC00ZmE1LTlhMTktOTJhMmE1NTllZWNjIiwiaXNzIjoiaHR0cDovL2RhY2NvdW50LmNkLmxvY2FsL3JlYWxtcy9iby1wdXJpIiwic3ViIjoiZjM2MWM2YTktZjQwYS00YmJlLTliY2QtYjE1MzMyMDkzOWRlIiwidHlwIjoiU2VyaWFsaXplZC1JRCIsInNlc3Npb25fc3RhdGUiOiJiZjU4MDlkNS0yMzA5LTRlOTMtYWM1NC1mNWRiOTZhZGIxNjgiLCJzaWQiOiJiZjU4MDlkNS0yMzA5LTRlOTMtYWM1NC1mNWRiOTZhZGIxNjgiLCJzdGF0ZV9jaGVja2VyIjoiNy0yMGtiZUFJMEUzdWZkYzg3aFM3YjdLcFFZZEV6bXF6cWlJWndrUFJKbyJ9.tdkMS8TCcdcgd9l9UOgMOX5F2kF6ZvzLVVInbHL3wEM
    Add Cookie
    ...    AUTH_SESSION_ID_LEGACY
    ...    bf5809d5-2309-4e93-ac54-f5db96adb168
    Go To    http://dcaller.cd.local/
    Sleep    90

Example Task
    Create Session    my_session    ${base_url}
    Create Session    auth    admin    Mandaya123

Get Cookies/Session
    Open Available Browser
    Go To    http://dcaller.cd.local/
    Login Admin Positive Case
    Sleep    5
    ${cookies}=    Get Cookies
    Log Many    ${cookies}
