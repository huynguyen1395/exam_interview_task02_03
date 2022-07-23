*** Settings ***
Resource    ../page/ui/login_page.resource
Resource    ../page/ui/home_page.resource
Resource    ../page/ui/chat_page.resource

Test Setup  Login To Application
Test Teardown  Close Mobile Application

*** Test Cases ***
TC001_Test_Send_Message_Successfully
    Navigate To Chat Page
    ${random_test}  Chat With Contact
    Check Send Message Success  ${random_test}
