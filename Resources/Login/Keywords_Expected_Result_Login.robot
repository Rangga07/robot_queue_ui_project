*** Settings ***
Documentation       Keyword expected result show element scenario login

Resource            ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Variables           ${CURDIR}/../../Config/Environment.py
Library             RPA.Browser.Selenium


*** Keywords ***
Expected Result Positive Login Admin
    Sleep    1
    Element Should Be Visible    ${expected_success_login_admin}
    Log    Expected result show element 'Welcome' is displayed

Expected Result Positive Login Staff
    Sleep    1
    Element Should Be Visible    ${expected_success_login_staff}
    Log    Expected result show element 'Welcome' is displayed
