*** Settings ***
Documentation       Keyword automation test create new ticket

Resource            ${CURDIR}/../../Variables/Global_Variables_Cluster.resource
Library             RPA.Browser.Selenium


*** Keywords ***
Choose Registered Ticket Cluster
    Sleep    1
    Click Element When Visible    ${choose_registered_ticket_doctor}

Checkin Ticket
    Click Element When Visible    ${btn_checkin}
    Sleep    1
    Click Button    ${btn_yes}

Calling Patient In Cluster
    Sleep    3
    Click Element When Visible    ${btn_calling_cluster}

On Consul In Cluster
    Sleep    3
    Click Element When Visible    ${btn_on_consul_cluster}

Finish In Cluster
    Sleep    3
    Click Element When Visible    ${btn_finish_cluster}
    Sleep    1
    Click Element When Visible    ${btn_submit}
    Sleep    1
    Click Element When Visible    ${btn_batalkan}
