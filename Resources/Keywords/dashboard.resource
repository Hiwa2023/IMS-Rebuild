*** Settings ***
Resource  ../../Libraries/common.resource
Resource   ../../Resources/Variables/domain_environment.resource


*** Keywords ***
User Try To login
    Open Browser    ${${ENVIRONMENT}_URL}    ${BROWSER}
    Maximize Browser Window
    Sleep  2s
    Close Browser
    