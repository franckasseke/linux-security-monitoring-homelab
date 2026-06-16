# Model Selection — DeepSeek-R1 and Companion Models

## Objective

This document explains why **DeepSeek-R1** was selected as the experimental model for this local LLM lab and how it compares with other local models used in the workstation.

---

## Selected experimental model

```bash
ollama pull deepseek-r1:7b
```

DeepSeek-R1 was selected because it is a reasoning-oriented model family and is useful for structured technical analysis.

In this lab, the 7B variant is used because it is realistic for a local workstation while still being useful for Linux and infrastructure reasoning tasks.

---

## Companion models

```bash
ollama pull qwen2.5:7b
ollama pull qwen2.5-coder:7b
ollama pull llama3.2:3b
ollama pull deepseek-r1:7b
```

| Model | Lab purpose |
|---|---|
| `deepseek-r1:7b` | Experimental reasoning, diagnostics, structured troubleshooting |
| `qwen2.5:7b` | General technical writing and explanation |
| `qwen2.5-coder:7b` | Code, shell scripts, Ansible snippets, debugging assistance |
| `llama3.2:3b` | Lightweight local assistant for fast prompts |

---

## Selection criteria

The model selection is based on:

- local execution feasibility;
- hardware constraints;
- usefulness for Linux administration;
- reasoning quality;
- scripting assistance;
- documentation quality;
- privacy and offline usage;
- disk and memory footprint.

---

## Operational warning

A local model is not automatically more secure just because it runs offline.

Security still depends on:

- where the model comes from;
- how it is installed;
- whether the API is exposed;
- what data is pasted into prompts;
- how outputs are verified;
- whether the workstation is patched and monitored.

---

## Recommended usage by mission type

| Mission type | Recommended model |
|---|---|
| Linux troubleshooting | `deepseek-r1:7b` |
| Script generation or review | `qwen2.5-coder:7b` |
| Documentation drafting | `qwen2.5:7b` |
| Quick offline assistant | `llama3.2:3b` |
| Security reasoning | `deepseek-r1:7b` plus human validation |

---

## Validation prompts

Use these test prompts to compare behavior:

```text
Explain how to diagnose an SSH service that is active locally but unreachable remotely.
```

```text
Review this bash backup script and identify operational risks.
```

```text
Write a consultant-style incident report for a failed Prometheus startup caused by a port conflict.
```

```text
Explain why exposing a local LLM API on 0.0.0.0 can be dangerous.
```

---

## Decision

For this lab, `deepseek-r1:7b` is the main model because it gives a good balance between reasoning capability and local workstation feasibility.

For real consulting work, the model output must always be validated by the engineer before being used in a client environment.
