*** Settings ***
Library         RPA.Browser.Selenium    auto_close=${True}
Resource        ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Variables       ${CURDIR}/../../Config/Environment.py


*** Keywords ***
Open Browser Begin
    Open Available Browser
    Go To    ${BASE_URL}
    Maximize Browser Window

Login Admin
    Sleep    2
    Wait Until Element Is Enabled    ${username_field}
    Input Text    ${username_field}    ${USERNAME_ADMIN}
    Input Text    ${password_field}    ${PASSWORD_ADMIN}
    Click Element    ${btn_login}
    Sleep    2
    Switch Window    title=caller
    Wait And Click Button    ${btn_caller_unit}

Login Staff
    Sleep    2
    Wait Until Element Is Enabled    ${username_field}
    Input Text    ${username_field}    ${USERNAME_CALLER}
    Input Text    ${password_field}    ${PASSWORD_CALLER}
    Click Button When Visible    ${btn_login}
    Sleep    2
    Switch Window    title=caller
    Wait And Click Button    ${btn_caller_unit}

Logout Action
    Go Back
    Click Element When Clickable    ${btn_user}
    Click Element If Visible    ${btn_sign_out}
    Switch Window    title=Caredokter
    Kill Session

Logout Admin Is Logged
    Open Browser Begin
    Sleep    3
    Switch Window    title=caller
    Logout Action
    Switch Window    title=Sign in to Mandaya - Puri
    Input Text    ${username_field}    ${USERNAME_ADMIN}
    Input Text    ${password_field}    ${PASSWORD_CALLER}
    Click Element    ${btn_login}
    Kill Session

Kill Session
    Click Element    ${nav_sessions}
    Click Button When Visible    ${btn_logout_session}
