*** Settings ***
Documentation       Keyword automation test manage counter & line

Resource            ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Library             RPA.Browser.Selenium
Library             RPA.FileSystem


*** Keywords ***
Setup Counter
    Click Element When Visible    ${btn_select_counter}
    Sleep    2
    Click Element    ${btn_manage_counter}
    Click Element    ${btn_choose_desk}
    Click Element If Visible    ${choose_desk}
    Click Element If Visible    ${choose_desk2}
    Click Element If Visible    ${choose_desk3}
    Click Element    ${btn_save_desk}
    Sleep    2

Expected Result Setup Counter
    Click Element When Visible    ${btn_select_counter}
    Element Should Be Visible    //li[text()='${data_deskname_1}']
    Element Should Be Visible    //li[text()='${data_deskname_2}']
    Element Should Be Visible    //li[text()='${data_deskname_3}']

Setup Line
    Sleep    2
    Click Element When Clickable    //button[@id="No line selected"]
    Click Element When Clickable    ${btn_manage_line}
    Wait Until Element Is Visible    ${btn_default_pharmacy}
    Click Element    ${btn_default_pharmacy}
    Sleep    1
    Click Element If Visible    ${choose_pharmacy}
    Click Element    ${btn_choose_lines}
    Sleep    1
    Click Element If Visible    ${choose_line1}
    Click Element If Visible    ${choose_line3}
    Wait And Click Button    ${btn_submit}
    Sleep    2

Expected Result Setup Line
    Click Element When Visible    ${btn_select_line}
    Element Should Be Visible    //li[text()=' ${data_lines1} ']
    Element Should Be Visible    //li[text()=' ${data_lines3} ']

Get Local Storage
    ${local_storage_value}    Execute JavaScript    return localStorage.getItem('config');
    Log    Local Storage Value: ${local_storage_value}
    Create File    local_storage2.txt    content=${local_storage_value}
