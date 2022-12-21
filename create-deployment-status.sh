#!/bin/bash

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer $GH_TOKEN"\
  https://api.github.com/repos/$REPO/deployments/$DEPLOYMENT_ID/statuses \
  -d '{"environment":"production","state":"success","log_url":"https://google.de","description":"Deployment finished successfully."}'
