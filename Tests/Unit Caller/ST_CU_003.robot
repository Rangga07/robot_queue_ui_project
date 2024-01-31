*** Settings ***
Documentation       Automation testing for action ticket

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Manage_Counter.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Ticket.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Patient.robot
Resource            ${CURDIR}/../../Resources/Config/Keywords_Config.robot
Resource            ${CURDIR}/../../Resources/Login/Login.robot
Resource            ../../Resources/Login/Keywords_Login_Test.robot


*** Test Cases ***
login_admin
    [Documentation]    Login Test
    [Tags]    admin    login admin
    Open Browser Begin
    Login Admin
    Set Local Storage Config

print_new_ticket
    [Documentation]    Test print tiket baru
    [Tags]    admin    cetak tiket
    Create Ticket
    Expected Result Create Ticket

add_patient
    [Documentation]    Test tambah pasien
    [Tags]    admin    tambah pasien
    Choose New Ticket
    Add Patient

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
