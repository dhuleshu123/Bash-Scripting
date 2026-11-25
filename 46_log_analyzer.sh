#!/bin/bash
# Script 46: Security & Access Log Analyzer
# Description: Parses SSH auth logs for failed login attempts and summarizes top offending IPs.

LOG_FILE="${1:-/var/log/auth.log}"

if [[ ! -f "$LOG_FILE" ]]; then
    echo "Log file $LOG_FILE not found. Creating sample log data in /tmp/sample_auth.log..."
    LOG_FILE="/tmp/sample_auth.log"
    cat <<EOF > "$LOG_FILE"
Nov 25 10:12:01 server sshd[1021]: Failed password for invalid user admin from 192.168.1.50 port 54321 ssh2
Nov 25 10:12:05 server sshd[1021]: Failed password for invalid user root from 192.168.1.50 port 54322 ssh2
Nov 25 10:13:10 server sshd[1025]: Failed password for paul from 10.0.0.15 port 44120 ssh2
Nov 25 10:14:22 server sshd[1030]: Failed password for invalid user test from 192.168.1.50 port 54399 ssh2
Nov 25 10:15:00 server sshd[1035]: Accepted publickey for ubuntu from 172.16.0.5 port 51200 ssh2
EOF
fi

echo "=== Failed SSH Login Summary ($LOG_FILE) ==="
TOTAL_FAILED=$(grep -c "Failed password" "$LOG_FILE")
echo "Total Failed Attempts: $TOTAL_FAILED"
echo ""
echo "Top Offending IP Addresses:"
grep "Failed password" "$LOG_FILE" | awk '{for(i=1;i<=NF;i++) if($i=="from") print $(i+1)}' | sort | uniq -c | sort -nr
