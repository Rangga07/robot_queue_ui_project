*** Settings ***
Documentation       Automation test untuk scenarion cetak tiket dari user admin

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../Resources/Admin/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../Resources/Admin/Keywords_Manage_Counter.robot
Resource            ${CURDIR}/../Resources/Admin/Keywords_Create_Ticket.robot
Resource            ${CURDIR}/../Resources/Login/Login.robot


*** Test Cases ***
add_counter
    [Documentation]    Test untuk tambah counter di sisi admin
    [Tags]    admin    create_line    dev
    Open Browser Begin
    Login Admin
    Setup Counter
    Setup Line
    Get Local Storage
    Close Browser

create_ticket
    [Documentation]    Test untuk cetak tiket baru
    [Tags]    admin    create_ticket    dev
    Open Browser Begin
    Login Admin
    # Set Local Storage
    Create Ticket
    Expected Result Create Ticket

create_patient
    [Documentation]    Test untuk tambah pasien
    [Tags]    admin    add_patient    dev
    Add Patient

add_doctor
    [Documentation]    Test untuk tambah pasien
    [Tags]    admin    add_doctor    dev
    Add New Doctor

add_treatment
    [Documentation]    Test untuk tambah treatment
    [Tags]    admin    add_treatment    dev
    Add Treatment List
    Sleep    2

add_visit_badge
    [Documentation]    Test untuk tambah visit badge
    [Tags]    admin    add_visit_badge    dev
    Add Visit Badge

add_internal_notes
    [Documentation]    Test untuk tambah visit badge
    [Tags]    admin    add_internal_notes    dev
    Add Internal Notes

calling_patient
    [Documentation]    Test untuk calling pasien
    [Tags]    admin    calling_patient    dev
    Calling Patient

serve_patient
    [Documentation]    Test untuk serve pasien
    [Tags]    admin    serve_patient    dev
    Serve Patient

expected_result
    [Documentation]    Expected Result
    [Tags]    admin    expected_result    dev
    Expected Result Add Doctor
    Expected Result Add Treatment

finish_patient
    [Documentation]    Test untuk finish pasien
    [Tags]    admin    finish_patient    dev
    Finish Patient
    Close Browser
