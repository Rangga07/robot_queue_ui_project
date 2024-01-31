*** Settings ***
Documentation       Keyword automation test manage counter & line

Resource            ${CURDIR}/../../Variables/Global_Variables_Unit.resource
Library             RPA.Browser.Selenium
Library             RPA.FileSystem


*** Keywords ***
Set Local Storage Config
    ${local_storage_value}    Read File    ${CURDIR}/../../Config/config.txt
    Execute JavaScript
    ...    localStorage.setItem('config', '${local_storage_value}');

Set Local Storage Config Cluster Doctor
    ${local_storage_value}    Read File    ${CURDIR}/../../Config/config_cluster_dr.txt
    Execute JavaScript
    ...    localStorage.setItem('config_cluster', '${local_storage_value}');

Set Local Storage Config Cluster Doctor 2
    ${local_storage_value}    Read File    ${CURDIR}/../../Config/config_cluster_dr2.txt
    Execute JavaScript
    ...    localStorage.setItem('config_cluster', '${local_storage_value}');

Set Local Storage Config Cluster Radiologi
    ${local_storage_value}    Read File    ${CURDIR}/../../Config/config_cluster_srv.txt
    Execute JavaScript
    ...    localStorage.setItem('config_cluster', '${local_storage_value}');

Set Local Storage Config Cluster Physiotherapy
    ${local_storage_value}    Read File    ${CURDIR}/../../Config/config_cluster_srv2.txt
    Execute JavaScript
    ...    localStorage.setItem('config_cluster', '${local_storage_value}');
