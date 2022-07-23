*** Settings ***
Resource    ../common.resource
Resource    ../../locator/chat_page_locator.resource

*** Keywords ***
# This keyword use to chat message
Chat With Contact
    ${text}     Random uuid String
    Input Text  ${chat_edit_text}   ${text}
    Click Element    ${btn_send_text}
    [Return]    ${text}

Check Send Message Success
    [Arguments]     ${random_text}
    ${message_text_locator}     Replace String    ${message_text}    {{text}}    ${random_text}
    Wait Until Element Is Visible    ${message_text_locator}

