#!/bin/bash
# Script 42: Service Health Check & Auto-Healing
# Description: Checks if critical services are running and restarts them if down.

SERVICES=("sshd" "cron" "nginx")
LOG_FILE="/var/log/service_monitor.log"

for SERVICE in "${SERVICES[@]}"; do
    if systemctl is-active --quiet "$SERVICE"; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') [OK] $SERVICE is running."
    else
        echo "$(date '+%Y-%m-%d %H:%M:%S') [ALERT] $SERVICE is DOWN! Attempting restart..." | tee -a "$LOG_FILE"
        systemctl restart "$SERVICE"

        if systemctl is-active --quiet "$SERVICE"; then
            echo "$(date '+%Y-%m-%d %H:%M:%S') [RECOVERED] $SERVICE restarted successfully." | tee -a "$LOG_FILE"
        else
            echo "$(date '+%Y-%m-%d %H:%M:%S') [CRITICAL] Failed to restart $SERVICE!" | tee -a "$LOG_FILE"
        fi
    fi
done
