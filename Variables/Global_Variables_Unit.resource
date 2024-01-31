*** Settings ***
Resource    ${CURDIR}/Data_Test_Variables.resource
Resource    ${CURDIR}/Expected_Variables.resource
Resource    ${CURDIR}/Login_Variables.resource


*** Variables ***
# variable counter
${btn_select_counter}                   xpath=//div[@class="btn-group"]
${btn_manage_counter}                   xpath=//button[@class="dropdown-item c-gray-D"]
${btn_choose_desk}                      xpath=//div[@class="multiselect__tags"]
${btn_save_desk}                        xpath=//button[@class="caller-btn fs-14 fw-700"]
${btn_confirm_choose_counter}           xpath=//div[@class='d-grid gap-2 col-6 mx-auto']//button[contains(@class, 'caller-btn')]
${btn_remove_counter}                   xpath=//*[@id="Desks"]/div/div/div[2]/div[2]/div
${choose_desk}                          xpath=//span[text()="${data_deskname_1}"]
${choose_desk2}                         xpath=//span[text()="${data_deskname_2}"]
${choose_desk3}                         xpath=//span[text()="${data_deskname_3}"]
${choose_counter}                       xpath=//li[text()="${data_deskname_2}"]

# variable line
${btn_select_line}                      xpath=(//button[@class="btn btn-dropdown-caller dropdown-toggle fs-14 fw-700 c-primary"])[3]
${btn_manage_line}                      xpath=(//button[@class="dropdown-item c-gray-D"])[2]
${btn_default_pharmacy}                 xpath=//*[@id="Lines"]/div/div/div[2]/div[1]/div/div[2]
${btn_choose_lines}                     xpath=//span[@class="multiselect__placeholder"]
${btn_submit}                           xpath=//button[@class="caller-btn fs-14 fw-700"]
${choose_pharmacy}                      xpath=//span[text()="${data_default_pharmacy}"]
${choose_line1}                         xpath=//span[text()="${data_lines1} "]
${choose_line2}                         xpath=//span[text()="${data_default_pharmacy}"]
${choose_line3}                         xpath=//span[text()="${data_lines3} "]

# variable ticket in caller unit
${btn_create_ticket}                    xpath=//button[@class="caller-btn text-uppercase fw-700 fs-14 mx-auto"]
${btn_print_ticket}                     xpath=//button[@class="btn btn-block caller-btn btn-sm"]
${btn_caller_unit}                      xpath=//button[@class="btn caller-btn text-uppercase fw-700 fs-14 d-block mx-auto mb-3"]
${btn_caller_cluster}                   xpath=(//button[@class="btn caller-btn text-uppercase fw-700 fs-14 d-block mx-auto mb-3"])[2]
${btn_ubah_data}                        xpath=//button[@class="btn btn-unit-secondary bg-transparent fs-14 fw-700 c-secondary"]
${choose_lines_ticket_pendaftaran}      xpath=//div[@class='text-start box-text-select-manage-2 fs-14 fw-600 c-primary' and contains(text(),'${data_lines1}')]
${choose_lines_ticket_farmasi}          xpath=//div[@class='text-start box-text-select-manage-2 fs-14 fw-600 c-primary' and contains(text(),'${data_lines2}')]
${choose_lines_ticket_kasir}            xpath=//div[@class='text-start box-text-select-manage-2 fs-14 fw-600 c-primary' and contains(text(),'${data_lines3}')]
${choose_registered_ticket}             xpath=//div[contains(@class, 'd-flex padding-ticket h-100') and .//label[contains(text(), '${personal_info}[0]')]]
${choose_new_ticket}                    xpath=(//div[@class='fs-10 fw-700 c-gray-C mt-auto' and text()=' 00menit'])[last()]

# variable data ticket
${btn_pilih}                            xpath=//button[@class="btn caller-btn fs-14 fw-700"]
${btn_save}                             xpath=//button[@class="caller-btn fs-14 fw-700"]
${btn_calling}                          xpath=//button[@class="btn btn-unit-emphasis fs-14 fw-700 mx-1"]
${btn_finish}                           xpath=(//button[@class='btn btn-unit-secondary fs-14 fw-700 mx-2 c-secondary'])[1]
${btn_serve}                            xpath=(//button[@class='btn btn-unit-secondary fs-14 fw-700 mx-2 c-secondary'])[2]
${btn_confirm_finish}                   xpath=//button[@class='caller-btn fs-14 fw-700']
${btn_opsi_ticket}                      xpath=//button[@class="btn-unit-secondary c-secondary px-2"]
${btn_onhold}                           xpath=//li[text()='On Hold']
${btn_skip}                             xpath=//li[text()='Skip']
${btn_move}                             xpath=//li[text()='Pindahkan pasien']
${btn_back_to_waiting}                  xpath=//li[text()='Kembali ke antrian']
${btn_move_to}                          xpath=(//span[@class="multiselect__single"])[last()]
${btn_choose_move}                      xpath=//span[contains(text(), '(AT) Farmasi Racikan')]
${btn_save_move}                        xpath=(//button[@class="caller-btn fs-14 fw-700"])[last()]
${btn_delete_ticket}                    xpath=//li[text()='Hapus tiket']
${choose_skip_option}                   xpath=(//label[@class="btn-checkbox-default padding-skip fs-14 fw-600 c-primary"])[1]
${element_tambah_note}                  xpath=//span[@class="position-bottom-absolute c-secondary fs-14 fw-600 pointer-hover"]
${dropdown_dokter}                      xpath=//input[@class="input-search-pasien"]
${server_response}                      Set Variable    Status Ticket Oredered
${input_notes}                          xpath=//textarea[@class="form-control text-internal-note"]
${checkbox_important}                   xpath=(//input[@type="checkbox"])[1]

# variable add doctor
${element_tambah_dokter_baru}           xpath=//div[@class="pair-bg-doctor d-flex justify-content-center align-content-center"]
${input_dokter}                         xpath=(//div[contains(@id, 'Dokter')]//input[@class="input-search-pasien"])[last()]
${choose_dokter}                        xpath=//label[text()="${data_dokter_test}"]
${choose_dokter_2}                      xpath=//label[text()="${data_dokter_test2}"]
${choose_tipe}                          xpath=(//div[contains(@id, 'Dokter')]//option[text()="${data_tipe_test}"])[last()]
${edit_dokter}                          xpath=((//div[@class="form-card-unit mb-2"])[1]//button[@class="btn btn-pencil mt-auto"])[last()]
${btn_save_delete}                      xpath=(//button[@class="caller-btn fs-14 fw-700"])[last()]
${btn_delete_order_dr}                  xpath=(//div[contains(@id, 'Dokter')]//p[@class="mb-0 c-merah-api pointer"])[last()]
${input_verification}                   xpath=(//input[@class="form-control"])[last()]

# variable add patient
${field_search_nama_pasien}             xpath=//input[@id="nameSearch"]
${field_visit_number}                   xpath=(//input[@class="form-control input-edit-pasien fw-600 fs-14"])[2]
${field_patient_rn}                     xpath=(//input[@class="form-control input-edit-pasien fw-600 fs-14"])[3]
${field_nama_pasien}                    xpath=(//input[@class="form-control input-edit-pasien fw-600 fs-14"])[4]
${field_tgl_lahir}                      xpath=(//input[@class="form-control input-edit-pasien fw-600 fs-14"])[5]
${field_no_ktp}                         xpath=(//input[@class="form-control input-edit-pasien fw-600 fs-14"])[6]
${field_no_paspor}                      xpath=(//input[@class="form-control input-edit-pasien fw-600 fs-14"])[7]
${field_no_telepon}                     xpath=(//input[@class="form-control input-edit-pasien fw-600 fs-14"])[8]
${field_email}                          xpath=(//input[@class="form-control input-edit-pasien fw-600 fs-14"])[9]
${checkbox_pasien}                      xpath=(//input[@type="checkbox"])[2]

# variable add treatment
${element_tambah_treatment}             xpath=(//div[@class="pair-bg-doctor d-flex justify-content-center align-content-center"])[2]
${input_treatment}                      xpath=(//div[contains(@id, 'Treatment')]//input[@class="input-search-pasien"])[last()]
${edit_treatment}                       xpath=((//div[@class="form-card-unit mb-2"])[2]//button[@class="btn btn-pencil mt-auto"])[last()]
${choose_treatment}                     xpath=//label[text()="${data_treatment_test}"]
${choose_treatment2}                    xpath=//label[text()="${data_treatment_test2}"]
${btn_delete_order_srv}                 xpath=(//div[contains(@id, 'Treatment')]//p[@class="mb-0 c-merah-api pointer"])[last()]
${choose_tipe_treatment}                xpath=(//div[contains(@id, 'Treatment')]//option[text()="${data_tipe_test}"])[last()]

# variable visit badge & patient badge
${element_tambah_pasien_badge}          xpath=//button[@class="btn btn-pencil"]
${element_tambah_visit_badge}           xpath=//span[@class="position-bottom-absolute fs-14 fw-600 c-secondary pointer-hover"]
${input_badge}                          xpath=//div[@class="multiselect__tags"]
${choose_pasien_badge}                  xpath=//span[text()="${data_pasien_badge}"]
${choose_visit_badge}                   xpath=//span[text()="${data_visit_badge}"]
