#!/usr/bin/env bash
set -euo pipefail

# ollama-healthcheck.sh
# Purpose: validate that Ollama is installed, running and reachable locally.

echo "[CHECK] Ollama binary"
command -v ollama >/dev/null 2>&1 || { echo "[FAIL] ollama command not found"; exit 1; }
ollama --version || true

echo "[CHECK] Ollama service"
systemctl is-active ollama || true

echo "[CHECK] Local API"
curl -s http://127.0.0.1:11434/api/tags >/dev/null && echo "[OK] API responded" || echo "[WARN] API did not respond"

echo "[CHECK] Listening port"
ss -lntp | grep 11434 || true

echo "[CHECK] Local models"
ollama list || true

echo "[DONE] Healthcheck completed."
