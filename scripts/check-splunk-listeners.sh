#!/usr/bin/env bash
set -euo pipefail

echo "[+] Checking Splunk service status"
sudo systemctl status Splunkd --no-pager || true

echo

echo "[+] Checking Splunk listening ports"
sudo ss -tulpen | grep -E '8000|8089|9997' || true

echo

echo "[+] Checking Splunk process"
ps aux | grep -i splunk | grep -v grep || true
