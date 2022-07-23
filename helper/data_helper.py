import request_helper


def get_list_repos_name(repos):
    list_repos_name = []
    for repo in repos:
        list_repos_name.append(repo['name'])
    return list_repos_name


def get_repo_most_watcher(url, repos_name):
    most_subscribers = 0
    most_repo_name = ''
    for repo_name in repos_name:
        url_str = url.format(repo_name)
        res = request_helper.get_request(url_str)
        temp = len(res.json())
        if temp > most_subscribers:
            most_subscribers = temp
            most_repo_name = repo_name
    return [most_repo_name, most_subscribers]
