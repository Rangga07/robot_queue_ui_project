*** Settings ***
Resource    ${CURDIR}/Data_Test_Variables.resource
Resource    ${CURDIR}/Expected_Variables.resource
Resource    ${CURDIR}/Login_Variables.resource


*** Variables ***
# variable ticket in caller cluster
${choose_registered_ticket_doctor}      xpath=(//span[text()=' ${personal_info}[0] '])[last()]
${btn_checkin}                          xpath=(//div[@class="height-bottom-caller-2 bg-white"])[last()]
${btn_yes}                              xpath=//button[@class="caller-btn fs-14 fw-700"]
${btn_on_consul_cluster}                xpath=(//div[@class="col-4 set-center-column"])[1]
${btn_calling_cluster}                  xpath=(//p[@class="fs-10 fw-400 m-0 c-shade"])[2]
${btn_finish_cluster}                   xpath=(//div[@class="col-4 set-center-column"])[3]
${btn_submit}                           xpath=//button[@class="caller-btn fs-14 fw-700"]
${btn_batalkan}                         xpath=//button[@class="caller-btn-white fs-14 fw-700"]
