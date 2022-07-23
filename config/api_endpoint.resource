*** Variables ***
# list repositories enpoint
${list_repositories_endpoint}    /orgs/SeleniumHQ/repos
# subscriber repo endpoint
${subscribers_endpoint}     /repos/SeleniumHQ/{}/subscribers
# total issues repos endpoint
${issues_repos_endpoint}      /search/issues?q=SeleniumHQ+type:issue+state:open
# sort repos by date updated, desc
${list_repositories_sort_endpoin}   /search/repositories?q=SeleniumHQ+sort:updated-desc

