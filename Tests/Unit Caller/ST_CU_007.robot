*** Settings ***
Documentation       Automation testing for action ticket

Library             RPA.Browser.Selenium    auto_close=${True}
Library             RPA.HTTP
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Cluster Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Manage_Counter.robot
Resource            ${CURDIR}/../../Resources/Login/Login.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Patient.robot
Resource            ${CURDIR}/../../Resources/Config/Keywords_Config.robot


*** Test Cases ***
login_staff
    [Documentation]    Login Test
    [Tags]    admin    login staff
    Open Browser Begin
    Login Admin
    Set Local Storage Config
    Set Local Storage Config Cluster Doctor

choose_ticket
    [Documentation]    Pilih tiket Test
    [Tags]    admin    choose tiket
    Choose Registered Ticket
    Expected Result Detail Patient

add_patient_badge
    [Documentation]    Tambah pasien badge test
    [Tags]    admin    add pasien badge
    Add Patient Badge

add_visit_badge
    [Documentation]    Tambah visit badge test
    [Tags]    staff    add visit badge
    Add Visit Badge

expected_result_unit_caller
    [Documentation]    Expected result unit caller
    [Tags]    admin    expected result
    Expected Result Add Pasien Badge
    Expected Result Add Visit Badge

expected_result_doctor_caller
    [Documentation]    Expected result doctor caller
    [Tags]    admin    expected result
    Go To    ${BASE_URL_DOKTER_CALLER}
    Sleep    2
    Expected Result Add Patient Badge In Dokter Caller
