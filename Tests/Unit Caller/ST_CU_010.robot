*** Settings ***
Documentation       Automation testing for ticket action testing in patient

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

pidahkan_pasien
    [Documentation]    Move patient
    [Tags]    admin    choose tiket
    Move Patient
