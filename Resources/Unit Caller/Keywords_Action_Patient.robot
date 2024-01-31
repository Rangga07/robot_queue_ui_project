*** Settings ***
Documentation       Keyword automation test create new ticket

Resource            ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Library             RPA.Browser.Selenium
Library             RPA.Desktop


*** Keywords ***
Add Patient
    Sleep    2
    Click Element When Visible    ${btn_ubah_data}
    Sleep    1
    Input Text    ${field_search_nama_pasien}    ${data_pasien_test}
    Sleep    2
    Select Checkbox    ${checkbox_pasien}
    Click Button    ${btn_pilih}
    Click Button    ${btn_save}
    Sleep    1
    Click Button    ${btn_save}

Add Patient Manual
    Sleep    2
    Click Element When Visible    ${btn_ubah_data}
    ${random_visit_number}=    Evaluate    random.randint(1000, 10000)
    Input Text    ${field_visit_number}    ${random_visit_number}
    ${random_patient_rn}=    Evaluate    random.randint(10000, 100000)
    Sleep    0.5
    Input Text    ${field_patient_rn}    ${random_patient_rn}
    Sleep    0.5
    Input Text    ${field_nama_pasien}    ${personal_info}[0]
    Sleep    0.5
    Input Text    ${field_tgl_lahir}    ${personal_info}[1]
    Sleep    0.5
    Input Text    ${field_no_ktp}    ${personal_info}[2]
    Sleep    0.5
    Input Text    ${field_no_paspor}    ${personal_info}[3]
    Sleep    0.5
    Input Text    ${field_no_telepon}    ${personal_info}[4]
    Sleep    0.5
    Input Text    ${field_email}    ${personal_info}[5]
    Sleep    2
    Click Button    ${btn_save}
    Sleep    2
    Click Button    ${btn_save}

Add Patient Badge
    Sleep    2
    Click Element When Clickable    ${element_tambah_pasien_badge}
    Sleep    1
    Click Element When Clickable    ${input_badge}
    Click Element    ${choose_pasien_badge}
    Click Button    ${btn_save}

Add Visit Badge
    Sleep    3
    Click Element When Clickable    ${element_tambah_visit_badge}
    Sleep    1
    Click Element When Clickable    ${input_badge}
    Click Element    ${choose_visit_badge}
    Click Button    ${btn_save}

Add Internal Notes
    Sleep    1
    Click Element When Visible    ${element_tambah_note}
    Input Text When Element Is Visible    ${input_notes}    ${data_notes}
    Click Button    ${btn_save}

Add Internal Notes Important
    Sleep    4
    Click Element When Visible    ${element_tambah_note}
    Input Text When Element Is Visible    ${input_notes}    ${data_notes}
    Select Checkbox    ${checkbox_important}
    Click Button    ${btn_save}
