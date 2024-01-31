*** Settings ***
Documentation       Automation testing for create ticket, add patient

Library             RPA.Browser.Selenium    auto_close=${True}
Resource            ${CURDIR}/../Resources/Unit Caller/Keywords_Expected_Result.robot
Resource            ${CURDIR}/../Resources/Unit Caller/Keywords_Manage_Counter.robot
Resource            ${CURDIR}/../Resources/Login/Login.robot
Resource            ${CURDIR}/../Resources/Unit Caller/Keywords_Action_Patient.robot
Resource            ${CURDIR}/../Resources/Unit Caller/Keywords_Action_Ticket.robot
Resource            ${CURDIR}/../Resources/Config/Keywords_Config.robot
