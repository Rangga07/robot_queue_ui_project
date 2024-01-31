*** Settings ***
Documentation       Keyword automation test create new ticket

Resource            ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Library             RPA.Browser.Selenium
Library             RPA.Desktop


*** Keywords ***
Add New Treatment
    Sleep    1
    Click Element When Visible    ${element_tambah_treatment}
    Click Element    ${input_treatment}
    Click Element    ${choose_treatment}
    Click Element    ${choose_tipe_treatment}
    Click Button    ${btn_save}
    Sleep    2
    Click Button    ${btn_save}

Add Two Treatment
    Sleep    1
    Click Element When Visible    ${element_tambah_treatment}
    Click Element    ${input_treatment}
    Click Element    ${choose_treatment2}
    Click Element    ${choose_tipe_treatment}
    Click Button    ${btn_save}
    Sleep    2
    Click Button    ${btn_save}

Delete Treatment
    Sleep    1
    Click Element When Visible    ${edit_treatment}
    Sleep    1
    Click Element When Visible    ${btn_delete_order_srv}
    Click Button    ${btn_save_delete}
    Input Text When Element Is Visible    ${input_verification}    ${personal_info}[1]
    Click Button    ${btn_save_delete}
    Click Button    ${btn_save_delete}
    Sleep    2
    Click Button    ${btn_save_delete}
