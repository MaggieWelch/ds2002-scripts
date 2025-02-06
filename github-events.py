#!/Library/Frameworks/Python.framework/Versions/3.11/bin/python3

import os
import json
import requests

GHUSER = os.getenv('GITHUB_USER')

#setting API to fetch recent activity from my account
url = "https://api.github.com/users/{0}/events".format(GHUSER)

#fetching recent Github actvitiy
r = json.loads(requests.get(url).text)

for x in r[:5]:
  event = x['type'] + ' :: ' + x['repo']['name']
  print(event)

