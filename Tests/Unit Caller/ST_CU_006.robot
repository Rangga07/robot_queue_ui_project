*** Settings ***
Documentation       Automation testing for order treatment

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Login/Login.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Service.robot
Resource            ${CURDIR}/../../Resources/Config/Keywords_Config.robot
Resource            ${CURDIR}/../../Resources/Cluster Caller/Keywords_Expected_Result.robot


*** Test Cases ***
login_admin
    [Documentation]    Login Test
    [Tags]    admin    login admin
    Open Browser Begin
    Login Admin
    Set Local Storage Config
    Set Local Storage Config Cluster Radiologi

choose_ticket
    [Documentation]    Pilih tiket Test
    [Tags]    admin    choose tiket
    Choose Registered Ticket

order_service
    [Documentation]    Test order dokter
    [Tags]    admin    order dokter
    Click Element When Visible    ${btn_ubah_data}
    Add New Treatment
    Expected Result Add Treatment
    Expected Result Order Dokter In Dokter Caller

order_service_again
    [Documentation]    Test order service two
    [Tags]    admin    order dokter two
    Sleep    2
    Choose Registered Ticket
    Click Element When Visible    ${btn_ubah_data}
    Add Two Treatment
    Set Local Storage Config Cluster Physiotherapy
    Expected Result Add Treatment
    Expected Result Order Dokter In Dokter Caller

delete_service
    [Documentation]    Test delete dokter
    [Tags]    admin    delete dokter
    Choose Registered Ticket
    Delete Treatment
