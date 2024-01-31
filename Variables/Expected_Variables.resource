*** Settings ***
Resource        ${CURDIR}/Data_Test_Variables.resource
Variables       ${CURDIR}/../Config/Environment.py


*** Variables ***
${expected_checkin}                         xpath=//div[@class="fs-12 fw-600 c-emphasis mt-auto"]
${expected_add_doctor}                      xpath=(//span[@class="fst-italic"])[1]
${expected_add_doctor_activity}             xpath=//p[text()='${data_dokter_test}']/preceding-sibling::p[contains(text(), 'Order')]
${expected_add_treatment}                   xpath=(//span[@class="fst-italic"])[last()]
${expected_add_treatment_activity}          xpath=//p[text()='${data_treatment_test}']/preceding-sibling::p[contains(text(), 'Order')]
${expected_on_hold_status}                  xpath=//label[contains(text(), '${personal_info}[0]')]/following-sibling::label[contains(text(), 'On Hold')]
${expected_on_hold_activity}                xpath=//p[@class='fs-14 fw-700 description-activity' and contains(text(), 'On Hold')]
${expected_back_to_waiting_status}          xpath=//label[contains(text(), '${personal_info}[0]')]/following-sibling::label[contains(text(), 'Waiting')]
${expected_back_to_waiting_activity}        xpath=(//p[@class='fs-14 fw-700 description-activity' and contains(text(), 'Waiting')])[1]
${expected_skip_status}                     xpath=//label[contains(text(), '${personal_info}[0]')]/following-sibling::label[contains(text(), 'Skip')]
${expected_skip_activity}                   xpath=(//p[@class='fs-14 fw-700 description-activity' and contains(text(), 'Skip')])[1]
${expected_move}                            xpath=//p[text()='Waiting ']/following-sibling::p[contains(text(), '${data_default_pharmacy}')]
${expected_success_login_admin}             xpath=//label[contains(text(), '${USERNAME_ADMIN}')]
${expected_success_login_staff}             xpath=//label[contains(text(), '${staff_username_valid}')]
${expected_patient_detailticket}            xpath=//p[contains(text(), '${personal_info}[0]')]
${expected_patient_cardticket}              xpath=//label[contains(text(), '${personal_info}[0]')]
${expected_patient_badge}                   xpath=//p[contains(text(), '${personal_info}[0]')]//label[@class='labelVisit fs-10 fw-700 me-1 position-relative default-label' and contains(text(), '${data_pasien_badge}')]
${expected_patient_badge_in_card}           xpath=//div[@class="card-ticket active"]//label[contains(text(),'${data_pasien_badge}')]
${expected_patient_badge_in_caller}         xpath=(//label[text()='${data_pasien_badge} '])[last()]
${expected_patient_name_in_caller}          xpath=//span[text()=' ${personal_info}[0] ']
${expected_ordered_in_caller}               xpath=(//span[@class="fs-12 fw-600 c-gray-D"])[last()]
${expected_visit_badge}                     xpath=(//label[contains(text(), '${data_visit_badge}')])[last()]
${expected_visit_badge_in_card}             xpath=//div[@class="card-ticket active"]//label[contains(text(),'${data_visit_badge}')]
${expected_add_internal_notes}              xpath=(//p[@class="mb-0 fs-12 fw-600 c-gray" and contains(text(), '${data_notes}')])[last()]
${expected_add_internal_notes}              xpath=(//p[@class="mb-0 fs-12 fw-600 c-gray" and contains(text(), '${data_notes}')])[last()]
${expected_add_internal_notes_important}    xpath=(//p[@class="mb-0 fs-12 fw-600 c-gray c-merah-api" and contains(text(), '${data_notes}')])[last()]

# Expected in calling
${expected_calling_in_activity}             xpath=//p[contains(text(), 'Calling')]/sub[contains(text(), '(1)')]
${expected_calling_again_in_activity}       xpath=//p[contains(text(), 'Calling')]/sub[contains(text(), '(2)')]
${expected_calling_in_status}               xpath=//label[contains(text(), '${personal_info}[0]')]/following-sibling::label[contains(text(), 'Calling')]
${expected_calling_in_position}             xpath=//div[@class='container-card-unit width-30 container-overflow']//label[@class='fw-700 fs-14 strong-unit-text d-block'][contains(text(), '${personal_info}[0]')]

# Expected in serve
${expected_serve_in_activity}               xpath=(//p[@class='fs-14 fw-700 description-activity' and contains(text(), 'Serving')])[1]
${expected_serve_in_status}                 xpath=//label[contains(text(), '${personal_info}[0]')]/following-sibling::label[contains(text(), 'Serve')]

# Expected checkin in cluster
${expected_checkin_in_card_dr}              xpath=//div[p[contains(text(), '${data_dokter_test}')]]/p[contains(@class, 'fs-14 fw-700 description-activity') and text()='Waiting ']
${expected_checkin_in_caller_dr}            xpath=(//span[text()='Waiting '])[last()]
${expected_checkin_in_list_line_dr}         xpath=//li[@class="fs-16 fw-700 c-primary w-100 d-flex"]//div[contains(text(), '${data_dokter_test}')]

${expected_checkin_in_card_srv}             xpath=//div[p[contains(text(), '${data_treatment_test}')]]/p[contains(@class, 'fs-14 fw-700 description-activity') and text()='Waiting ']
${expected_checkin_in_caller_srv}           xpath=(//span[text()='Waiting '])[last()]
${expected_checkin_in_list_line_srv}        xpath=//li[@class="fs-16 fw-700 c-primary w-100 d-flex"]//div[contains(text(), '${data_treatment_test}')]

${expected_calling_caller}                  xpath=(//span[contains(text(), 'Calling')])[last()]
${expected_on_consul_caller}                xpath=(//span[contains(text(), 'On Consul')])[last()]
