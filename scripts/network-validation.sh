#!/usr/bin/env bash
set -euo pipefail

if [ "${1:-}" = "" ]; then
  echo "Usage: $0 <splunk-ip>"
  exit 1
fi

SPLUNK_IP="$1"

echo "[+] Testing ICMP connectivity to Splunk: ${SPLUNK_IP}"
ping -c 4 "${SPLUNK_IP}" || true

echo

echo "[+] Testing Splunk receiving port TCP 9997"
nc -vz "${SPLUNK_IP}" 9997 || true

echo

echo "[+] Testing Splunk Web port TCP 8000"
nc -vz "${SPLUNK_IP}" 8000 || true

echo

echo "[+] Testing Splunk management port TCP 8089"
nc -vz "${SPLUNK_IP}" 8089 || true
