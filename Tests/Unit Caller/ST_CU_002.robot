*** Settings ***
Documentation       Automation testing for manage counter & line

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Manage_Counter.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Ticket.robot
Resource            ${CURDIR}/../../Resources/Login/Login.robot


*** Test Cases ***
login_admin
    [Documentation]    Login Test
    [Tags]    admin    login admin
    Open Browser Begin
    Login Admin

setup_counter
    [Documentation]    Setup tambah counter baru
    [Tags]    admin    setup counter
    Setup Counter
    Expected Result Setup Counter

setup_line
    [Documentation]    Setup tambah line
    [Tags]    admin    setup line
    Setup Line
    Expected Result Setup Line
