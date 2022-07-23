*** Settings ***
Resource    ../common.resource
Library     ../../helper/request_helper.py
Library     ../../helper/data_helper.py

*** Keywords ***
Count Total Issues Open All Repositories
    ${url}   Set Variable    ${api_host}${issues_repos_endpoint}
    ${res}    Get Request     ${url}
    [Return]    ${res.json()['total_count']}

Sort Repositories By Date Updated In Desc Order
    ${url}   Set Variable    ${api_host}${list_repositories_sort_endpoin}
    ${res}    Get Request     ${url}
    [Return]    ${res.json()}
    
Get All Repositories
    ${url}  Set Variable    ${api_host}${list_repositories_endpoint}
    ${res}  Get Request    ${url}
    [Return]    ${res.json()}
    
Get All Repositories Name
    [Arguments]     ${repos}
    ${repos_name}   Get List Repos Name    ${repos}
    [Return]    ${repos_name}
    
Get Repo Has The Most Watcher
    [Arguments]     ${repos_name}
    ${url}      Set Variable    ${api_host}${subscribers_endpoint}
    ${repo}     Get Repo Most Watcher    ${url}    ${repos_name}
    [Return]    ${repo}
