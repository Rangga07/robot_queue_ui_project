*** Settings ***
Documentation       Automation testing for dokter check in

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Cluster Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Login/Login.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Ticket.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Doctor.robot
Resource            ${CURDIR}/../../Resources/Config/Keywords_Config.robot
Resource            ../../Resources/Cluster Caller/Keywords_Action_Ticket_Cluster.robot


*** Test Cases ***
login_admin
    [Documentation]    Login Test
    [Tags]    admin    login admin
    Open Browser Begin
    Login Admin
    Set Local Storage Config
    Set Local Storage Config Cluster Doctor
    Go To    ${BASE_URL_DOKTER_CALLER}

choose_ticket
    [Documentation]    Pilih tiket
    [Tags]    admin    choose ticket
    Choose Registered Ticket Cluster

check_in
    [Documentation]    Check-in ticket
    [Tags]    admin    check-in ticket
    Checkin Ticket
    Expected Result Checkin Patient
