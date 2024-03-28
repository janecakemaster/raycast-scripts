#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title isodate without tz
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ⏲︎
# @raycast.packageName isodate-without-tz

# Documentation:
# @raycast.description get the current time in ISO format in UTC without timezone information (like "2024-03-28 21:54:03") and copy it to clipboard 
# @raycast.author janecakemaster
# @raycast.authorURL https://raycast.com/janecakemaster

date -u -I'seconds' | tr T ' ' | awk -F '+' '{print $1}' | pbcopy
