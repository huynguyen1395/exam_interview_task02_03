*** Settings ***
Library    AppiumLibrary
Resource    ../../locator/home_page_locator.resource

*** Keywords ***
Navigate To Chat Page
    Wait Until Page Contains Element    ${tab_chat}   timeout=10
    Click Element    ${tab_chat}
    Click Element    ${contact}
