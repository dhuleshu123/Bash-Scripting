#!/bin/bash
# Script 45: Professional CLI Flags (getopts) and Signal Cleanup (trap)
# Usage: ./45_getopts_and_trap.sh -e prod -u admin

LOCK_FILE="/tmp/deploy_script.lock"
TEMP_DIR=$(mktemp -d)

# Cleanup function triggered automatically on EXIT, INT (Ctrl+C), or TERM
cleanup() {
    echo ""
    echo "[CLEANUP] Removing temporary directory $TEMP_DIR and lockfile..."
    rm -rf "$TEMP_DIR" "$LOCK_FILE"
}
trap cleanup EXIT INT TERM

# Prevent duplicate concurrent runs using a lockfile
if [[ -f "$LOCK_FILE" ]]; then
    echo "Error: Another instance of this script is already running ($LOCK_FILE exists)."
    exit 1
fi
touch "$LOCK_FILE"

ENV=""
USER_NAME=""

while getopts "e:u:h" opt; do
    case "$opt" in
        e) ENV="$OPTARG" ;;
        u) USER_NAME="$OPTARG" ;;
        h)
            echo "Usage: $0 -e <environment> -u <username>"
            exit 0
            ;;
        *)
            echo "Invalid option. Use -h for help."
            exit 1
            ;;
    esac
done

if [[ -z "$ENV" || -z "$USER_NAME" ]]; then
    echo "Error: Both -e (environment) and -u (username) are required."
    echo "Example: $0 -e staging -u deploy"
    exit 1
fi

echo "Deploying to environment: $ENV as user: $USER_NAME"
echo "Working safely inside $TEMP_DIR..."
sleep 2
echo "Deployment complete!"
