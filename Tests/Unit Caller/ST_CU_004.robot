*** Settings ***
Documentation       Automation testing for create ticket, add patient

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Manage_Counter.robot
Resource            ${CURDIR}/../../Resources/Login/Login.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Patient.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Ticket.robot
Resource            ${CURDIR}/../../Resources/Config/Keywords_Config.robot


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

add_patient_manual
    [Documentation]    Test add patient manual
    [Tags]    admin    add patient manual
    Choose New Ticket
    Add Patient Manual

expected_result_unit_caller
    [Documentation]    Expected result unit caller
    [Tags]    admin    expected result
    Expected Result Detail Patient

print_new_ticket_2
    [Documentation]    Test print tiket 2
    [Tags]    admin    cetak tiket
    Create Ticket
    Expected Result Create Ticket

add_patient_search
    [Documentation]    Test add patient search
    [Tags]    admin    cetak tiket
    Choose New Ticket
    Add Patient
