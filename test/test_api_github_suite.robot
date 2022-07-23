*** Settings ***
Resource    ../page/api/github_api.resource


*** Test Cases ***
TC001_Test_Count_All_Issues_From_All_Repositories
    ${total_count}      Count Total Issues Open All Repositories

TC002_Test_Sort_Repositories_By_Last_Updated
    ${list_repos}   Sort Repositories By Date Updated In Desc Order

TC003_Test_Repo_Has_The_Most_Watcher
    ${repos}    Get All Repositories
    ${repos_name}   Get List Repos Name    ${repos}
    ${repo}     Get Repo Has The Most Watcher    ${repos_name}

