*** Settings ***
Resource    ../common.resource
Resource    ../../locator/login_page_locator.resource

*** Keywords ***
# This keyword use to login
Login To Application
    Open Mobile Application
    Wait Until Page Contains Element    ${email_edit_text}
    Input Text    ${email_edit_text}   ${email}
    Input Text    ${password_edit_text}     ${password}
    Click Element    ${btn_login}

