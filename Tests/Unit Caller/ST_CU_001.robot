*** Settings ***
Documentation       Automation test untuk scenario action login

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../../Resources/Login/Login.robot
Resource            ${CURDIR}/../../Resources/Login/Keywords_Login_Test.robot
Resource            ${CURDIR}/../../Resources/Login/Keywords_Expected_Result_Login.robot


*** Test Cases ***
login_admin_succesfully
    [Documentation]    Test Login dengan email dan password yang sesuai
    [Tags]    admin    login admin
    Open Browser Begin
    Login Admin Positive Case
    Expected Result Positive Login Admin
    Close Browser

login_staff_succesfully
    [Documentation]    Test Login dengan email dan password yang sesuai
    [Tags]    staff    login staff
    Open Browser Begin
    Login Staff Positive Case
    Expected Result Positive Login Staff
    Close Browser
