*** Settings ***
Documentation       Automation testing for order doctor

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Cluster Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../../Resources/Login/Login.robot
Resource            ${CURDIR}/../../Resources/Unit Caller/Keywords_Action_Doctor.robot
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

order_dokter
    [Documentation]    Test order dokter
    [Tags]    admin    order dokter
    Click Element When Visible    ${btn_ubah_data}
    Add New Doctor
    Expected Result Add Doctor
    Expected Result Order Dokter In Dokter Caller

order_dokter_again
    [Documentation]    Test order dokter two
    [Tags]    admin    order dokter two
    Sleep    2
    Choose Registered Ticket
    Click Element When Visible    ${btn_ubah_data}
    Add Two Doctor
    Set Local Storage Config Cluster Doctor 2
    Expected Result Add Doctor
    Expected Result Order Dokter In Dokter Caller

delete_dokter
    [Documentation]    Test delete dokter
    [Tags]    admin    delete dokter
    Choose Registered Ticket
    Delete Doctor
