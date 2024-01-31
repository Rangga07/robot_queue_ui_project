*** Settings ***
Documentation       Keyword expected result show element scenario tiket

Resource            ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Variables           ${CURDIR}/../../Config/Environment.py
Library             RPA.Browser.Selenium


*** Keywords ***
Expected Result Create Ticket
    Sleep    1
    Element Should Be Visible    ${expected_checkin}
    Log    Expected result status 'Check in baru' is displayed
    Sleep    1

Expected Result Detail Patient
    Sleep    2
    Element Should Be Visible    ${expected_patient_detailticket}
    Log    Expected result show element patient '${personal_info}[0]' is displayed
    Element Should Be Visible    ${expected_patient_cardticket}
    Log    Expected result show element patient in card '${personal_info}[0]' is displayed

Expected Result On Hold Ticket
    Sleep    3
    Element Should Be Visible    ${expected_on_hold_status}
    Log    Expected result status ticket 'On Hold' is displayed
    Sleep    1
    Element Should Be Visible    ${expected_on_hold_activity}
    Log    Expected result in activity 'On Hold' is displayed

Expected Result Back To Waiting
    Sleep    3
    Element Should Be Visible    ${expected_back_to_waiting_status}
    Log    Expected result status ticket 'Waiting' is displayed
    Sleep    1
    Element Should Be Visible    ${expected_back_to_waiting_activity}
    Log    Expected result in activity 'Waiting' is displayed

Expected Result Skip Tiket
    Sleep    3
    Element Should Be Visible    ${expected_skip_status}
    Log    Expected result status ticket 'Skip' is displayed
    Element Should Be Visible    ${expected_skip_activity}
    Log    Expected result in activity 'Skip' is displayed

Expected Result Add Doctor
    Sleep    2
    Element Should Be Visible    ${expected_add_doctor}
    Log    Expected result status order 'Ordered' is displayed
    Element Should Be Visible    ${expected_add_doctor_activity}
    Log    Expected result status in activity 'Order' is displayed

Expected Result Add Treatment
    Sleep    2
    Element Should Be Visible    ${expected_add_treatment}
    Log    Expected result status 'Ordered' displayed
    Element Should Be Visible    ${expected_add_treatment_activity}
    Log    Expected result status in activity 'Order' is displayed

Expected Result Add Pasien Badge
    Sleep    1
    Element Should Be Visible    ${expected_patient_badge}
    Log    Expected result show element in patient badge '${data_pasien_badge}' is displayed
    Element Should Be Visible    ${expected_patient_badge_in_card}
    Log    Expected result show element in card ticket '${data_pasien_badge}' is displayed

Expected Result Add Visit Badge
    Sleep    1
    Element Should Be Visible    ${expected_visit_badge}
    Log    Expected result show element in visit badge '${data_visit_badge}' is displayed
    Element Should Be Visible    ${expected_visit_badge_in_card}
    Log    Expected result show element in card ticket '${data_visit_badge}' is displayed

Expected Result Add Internal Notes
    Sleep    1
    Element Should Be Visible    ${expected_add_internal_notes}
    Log    Expected result show element in internal notes '${data_notes}' is displayed

Expected Result Add Internal Notes Important
    Sleep    1
    Element Should Be Visible    ${expected_add_internal_notes_important}
    Log    Expected result show element in internal notes '${data_notes}' is displayed

Expected Result Calling
    Sleep    1
    Element Should Be Visible    ${expected_calling_in_activity}
    Element Should Be Visible    ${expected_calling_in_status}
    Element Should Be Visible    ${expected_calling_in_position}

Expected Result Calling Again
    Sleep    1
    Element Should Be Visible    ${expected_calling_again_in_activity}
    Element Should Be Visible    ${expected_calling_in_status}
    Element Should Be Visible    ${expected_calling_in_position}

Expected Result Serve
    Sleep    1
    Element Should Be Visible    ${expected_serve_in_activity}
    Element Should Be Visible    ${expected_serve_in_status}

Expected Result Move Patient
    Sleep    1
    Element Should Be Visible    ${expected_move}
