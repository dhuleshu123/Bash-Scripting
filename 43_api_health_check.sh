#!/bin/bash
# Script 43: Web / API Endpoint Health Check
# Description: Checks HTTP status code and response time of a URL using curl.

URL="${1:-https://httpbin.org}"
EXPECTED_CODE="200"

# Fetch HTTP status code and total response time
RESPONSE=$(curl -s -o /dev/null -w "%{http_code} %{time_total}" --max-time 10 "$URL")
STATUS_CODE=$(echo "$RESPONSE" | awk '{print $1}')
RESPONSE_TIME=$(echo "$RESPONSE" | awk '{print $2}')

echo "Checking Endpoint: $URL"
echo "HTTP Status Code : $STATUS_CODE"
echo "Response Time    : ${RESPONSE_TIME}s"

if [[ "$STATUS_CODE" -eq "$EXPECTED_CODE" ]]; then
    echo "Status: HEALTHY"
    exit 0
else
    echo "Status: UNHEALTHY (Expected $EXPECTED_CODE, got $STATUS_CODE)"
    exit 1
fi
