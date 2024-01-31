*** Settings ***
Documentation       Automation testing for action ticket in patient

Library             RPA.Browser.Selenium    auto_close=${True}
Library             RPA.HTTP
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Cluster Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Manage_Counter.robot
Resource            ${CURDIR}/../../Resources/Login/Login.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Patient.robot
Resource            ${CURDIR}/../../Resources/Cluster Caller/Keywords_Action_Ticket_Cluster.robot
Resource            ${CURDIR}/../../Resources/Config/Keywords_Config.robot


*** Test Cases ***
login_admin
    [Documentation]    Login Test
    [Tags]    admin    login admin
    Open Browser Begin
    Login Admin
    Set Local Storage Config
    Set Local Storage Config Cluster Doctor

choose_ticket
    [Documentation]    Pilih tiket Test
    [Tags]    admin    choose tiket
    Choose Registered Ticket
    Expected Result Detail Patient

on_hold_ticket
    [Documentation]    Test tiket on hold
    [Tags]    admin    on-hold tiket
    On Hold Ticket
    Expected Result On Hold Ticket

back_to_waiting
    [Documentation]    Test tiket kembali ke antrian
    [Tags]    admin    kembali ke antrian
    Back To Waiting Ticket
    Expected Result Back To Waiting

skip_tiket
    [Documentation]    Test tiket di skip
    [Tags]    admin    skip tiket
    Skip Ticket
    Expected Result Skip Tiket

delete_ticket
    [Documentation]    Test delete
    [Tags]    admin    delete tiket
    Delete Ticket
