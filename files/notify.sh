#!/bin/sh
#
# Example notification script
#

MAIL_FROM="admin@example.org"
MAIL_TO="alert@example.org"
NODE=`hostname -f`
SCRIPT_NAME=`basename "$0"`
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$#" = "2" ]; then
    mail_subject="Redis Sentinel Notification"
    mail_body=`cat << EOB
============================================
Redis Notification Script called by Sentinel
============================================

Event Type: ${1}
Event Description: ${2}
Node: ${NODE}
Script: ${SCRIPT_DIR}/${SCRIPT_NAME}

Check the redis status.

EOB`

    echo "${mail_body}" | mail -r "${MAIL_FROM}" -s "${mail_subject}" "${MAIL_TO}"

fi
