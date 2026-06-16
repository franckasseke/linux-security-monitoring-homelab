# Troubleshooting — Ollama and Local LLM Lab

## Objective

This document lists common incidents that can occur during the local LLM lab and explains how to diagnose and fix them.

---

## Incident 1 — Ollama command not found

### Symptom

```bash
ollama --version
# command not found
```

### Diagnostic

```bash
which ollama
systemctl status ollama --no-pager
```

### Fix

Install Ollama again using the installation script documented in the README.

---

## Incident 2 — Ollama service inactive

### Symptom

```bash
curl http://127.0.0.1:11434/api/tags
# connection refused
```

### Diagnostic

```bash
systemctl status ollama --no-pager
journalctl -u ollama -n 50 --no-pager
```

### Fix

```bash
sudo systemctl restart ollama
sudo systemctl enable ollama
```

---

## Incident 3 — Model not found

### Symptom

```text
model not found
```

### Diagnostic

```bash
ollama list
```

### Fix

```bash
ollama pull deepseek-r1:7b
```

---

## Incident 4 — Disk space problem

### Symptom

The model download fails or stops unexpectedly.

### Diagnostic

```bash
df -h
ollama list
```

### Fix

Remove unused models:

```bash
ollama rm <model-name>
```

Then retry:

```bash
ollama pull deepseek-r1:7b
```

---

## Incident 5 — High CPU load or noisy laptop

### Symptom

The workstation becomes noisy or slow while the model is answering.

### Diagnostic

```bash
top
htop
```

Optional GPU checks, depending on hardware:

```bash
nvidia-smi
```

### Fix

- Use a smaller model.
- Close unnecessary applications.
- Improve cooling.
- Avoid running several models at the same time.
- Use a machine with more RAM or GPU acceleration.

---

## Incident 6 — API unexpectedly reachable from another host

### Symptom

Another machine can reach the Ollama API on port 11434.

### Diagnostic

On the Ollama host:

```bash
ss -lntp | grep 11434
```

From another host:

```bash
curl http://<ollama-host-ip>:11434/api/tags
```

### Fix

- Review Ollama binding configuration.
- Restrict access using the host firewall.
- Avoid exposing the API to untrusted networks.
- Use VPN, reverse proxy and authentication controls if remote access is truly required.

---

## Incident 7 — Model answer is wrong or unsafe

### Symptom

The model suggests a command that does not match the operating system or may damage the environment.

### Diagnostic

Ask:

```text
Explain what this command does, what files it changes, and what the rollback would be.
```

### Fix

- Do not execute blindly.
- Check official documentation.
- Test in a lab VM.
- Prefer read-only diagnostic commands first.

---

## Final validation checklist

```bash
ollama --version
ollama list
systemctl status ollama --no-pager
curl http://127.0.0.1:11434/api/tags
ss -lntp | grep 11434
```

If all commands return the expected results, the lab is operational.
