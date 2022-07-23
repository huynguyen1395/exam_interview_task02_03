import requests


def get_request(url, params=None):
    headers = {
        'Authorization': 'Bearer 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',
    }
    response = requests.get(url, params=params, headers=headers)
    return response
