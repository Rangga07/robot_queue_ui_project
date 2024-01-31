*** Settings ***
Documentation       Keyword automation test create new ticket

Resource            ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Library             RPA.Browser.Selenium
Library             RPA.Desktop


*** Keywords ***
Add New Doctor
    Sleep    1
    Click Element When Visible    ${element_tambah_dokter_baru}
    Click Element    ${input_dokter}
    Click Element    ${choose_dokter}
    Click Element    ${choose_tipe}
    Click Button    ${btn_save}
    Sleep    2
    Click Button    ${btn_save}

Add Two Doctor
    Sleep    1
    Click Element When Visible    ${element_tambah_dokter_baru}
    Click Element    ${input_dokter}
    Click Element    ${choose_dokter_2}
    Click Element    ${choose_tipe}
    Click Button    ${btn_save}
    Sleep    2
    Click Button    ${btn_save}

Delete Doctor
    Sleep    1
    Click Element When Visible    ${edit_dokter}
    Sleep    1
    Click Element When Visible    ${btn_delete_order_dr}
    Click Button    ${btn_save_delete}
    Input Text When Element Is Visible    ${input_verification}    ${personal_info}[1]
    Click Button    ${btn_save_delete}
    Click Button    ${btn_save_delete}
    Sleep    2
    Click Button    ${btn_save_delete}
