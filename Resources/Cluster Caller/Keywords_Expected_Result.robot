*** Settings ***
Documentation       Keyword expected result show element scenario tiket

Resource            ${CURDIR}/../../Variables/Global_Variables_Cluster.resource
Resource            ../Unit Caller/Keywords_Action_Ticket.robot
Variables           ${CURDIR}/../../Config/Environment.py
Library             RPA.Browser.Selenium


*** Keywords ***
Expected Result Order Dokter In Dokter Caller
    Go To    ${BASE_URL_DOKTER_CALLER}
    Sleep    3
    Element Should Be Visible    ${expected_patient_name_in_caller}
    Log    Expected result show element 'ordered' by patient name '${personal_info}[0]'
    Go To    ${BASE_URL_CALLER_UNIT}

Expected Result Order Service In Dokter Caller
    Go To    ${BASE_URL_DOKTER_CALLER}
    Sleep    3
    Element Should Be Visible    ${expected_patient_name_in_caller}
    Log    Expected result show element 'ordered' by patient name '${personal_info}[0]'
    Go To    ${BASE_URL_CALLER_UNIT}

Expected Result Add Patient Badge In Dokter Caller
    Sleep    2
    Element Should Be Visible    ${expected_patient_badge_in_caller}
    Log    Expected result show element patient badge '${data_pasien_badge}'

Expected Result Checkin Patient
    Sleep    2
    Element Should Be Visible    ${expected_checkin_in_caller_dr}
    Go To    ${BASE_URL_CALLER_UNIT}
    Sleep    1
    Choose Registered Ticket
    Element Should Be Visible    ${expected_checkin_in_card_dr}
    Element Should Be Visible    ${expected_checkin_in_list_line_dr}
    Go To    ${BASE_URL_DOKTER_CALLER}

Expected Result Checkin Service
    Sleep    2
    Element Should Be Visible    ${expected_checkin_in_caller_srv}
    Go To    ${BASE_URL_CALLER_UNIT}
    Sleep    1
    Choose Registered Ticket
    Element Should Be Visible    ${expected_checkin_in_card_srv}
    Element Should Be Visible    ${expected_checkin_in_list_line_srv}
    Go To    ${BASE_URL_DOKTER_CALLER}
