*** Settings ***
Documentation       Keyword automation test create new ticket

Resource            ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Library             RPA.Browser.Selenium


*** Keywords ***
Create Ticket
    Sleep    2
    Click Element    ${btn_create_ticket}
    Click Element    ${choose_lines_ticket_pendaftaran}
    Click Element When Visible    ${btn_print_ticket}
    Sleep    3

Choose New Ticket
    Sleep    2
    Click Element When Visible    ${choose_new_ticket}

Choose Registered Ticket
    Sleep    2
    Click Element When Clickable    ${choose_registered_ticket}
    Sleep    1

On Hold Ticket
    Sleep    2
    Click Element When Visible    ${btn_opsi_ticket}
    Sleep    1
    Click Element    ${btn_onhold}
    Click Button    ${btn_save}

Back To Waiting Ticket
    Click Element When Visible    ${btn_opsi_ticket}
    Click Element    ${btn_back_to_waiting}
    Click Button    ${btn_save}

Skip Ticket
    Click Element When Visible    ${btn_opsi_ticket}
    Click Element    ${btn_skip}
    Click Element    ${choose_skip_option}
    Sleep    1
    Click Button    ${btn_save}

Delete Ticket
    Sleep    1
    Click Element When Visible    ${btn_opsi_ticket}
    Sleep    1
    Click Element    ${btn_delete_ticket}
    Sleep    1
    Input Text When Element Is Visible    ${input_notes}    ${data_notes}
    Click Button    ${btn_save}

Calling Patient
    Sleep    1
    Click Element When Visible    ${btn_calling}
    Sleep    6

Serve Patient
    Sleep    4
    Click Element When Clickable    ${btn_serve}

Finish Patient
    Sleep    4
    Click Button When Visible    ${btn_finish}
    Click Button When Visible    ${btn_confirm_finish}

Move Patient
    Click Element When Visible    ${btn_opsi_ticket}
    Click Element If Visible    ${btn_move}
    Sleep    1
    Click Element    ${btn_move_to}
    Sleep    1
    Click Element If Visible    ${btn_choose_move}
    Click Element If Visible    ${btn_save_move}
    Click Element If Visible    ${btn_save_move}

Screenshot process
    Capture Page Screenshot    test.png
