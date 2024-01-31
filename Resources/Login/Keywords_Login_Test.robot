*** Settings ***
Documentation       Keyword automation login test

Resource            ${CURDIR}/../../Variables/Login_Variables.resource
Resource            ${CURDIR}/../../Variables/Data_Test_Variables.resource
Variables           ${CURDIR}/../../Config/Environment.py
Library             RPA.Browser.Selenium


*** Keywords ***
Login Admin Positive Case
    Wait Until Element Is Enabled    ${username_field}
    Sleep    1
    Input Text    ${username_field}    ${USERNAME_ADMIN}
    Input Text    ${password_field}    ${PASSWORD_ADMIN}
    Sleep    1
    Click Element    ${btn_login}
    Switch Window    title=caller

Login Staff Positive Case
    Wait Until Element Is Enabled    ${username_field}
    Sleep    1
    Input Text    ${username_field}    ${staff_username_valid}
    Input Text    ${password_field}    ${password_valid}
    Sleep    1
    Click Element    ${btn_login}
    Switch Window    title=caller

Login Successfully Unit Caller
    Open Available Browser
    Go To    ${BASE_URL_CALLER_UNIT}
    Add Cookie    ${KEYCLOAK_SESSION_LEGACY}    ${value_keycloak_session}
    Add Cookie    ${KEYCLOAK_IDENTITY_LEGACY}    ${value_keycloak_identity}
    Add Cookie    ${AUTH_SESSION_ID_LEGACY}    ${value_session_id}
    Go To    ${BASE_URL_CALLER_UNIT}
    Sleep    100

After
    Close Browser
