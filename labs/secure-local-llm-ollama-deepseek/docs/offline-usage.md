# Offline Usage — Local LLM Workstation

## Objective

This document explains how to use the local LLM environment after the model has been downloaded.

The main advantage is that local inference can continue from the workstation model cache.

---

## Preparation phase

Network access is needed for:

- installing Ollama;
- downloading model files;
- updating Ollama;
- downloading additional models.

Example:

```bash
ollama pull deepseek-r1:7b
```

---

## Local usage phase

After the model is downloaded, run:

```bash
ollama list
ollama run deepseek-r1:7b
```

Test prompt:

```text
Explain how to diagnose a Linux service that is running locally but cannot be reached by a client host.
```

Expected result:

```text
The model answers from the local machine.
```

---

## Important limitation

A local model does not automatically retrieve current external documentation.

This means:

- it may not know recent software changes;
- it may produce outdated commands;
- it cannot verify external service status;
- its output must be checked before operational use.

---

## Recommended workflow

```text
1. Prepare local mission notes.
2. Replace sensitive values with placeholders.
3. Ask the local model for a diagnostic structure.
4. Validate commands manually.
5. Test in a lab VM.
6. Document the final result.
```

---

## Useful cases

- command explanation;
- incident report drafting;
- bash script review;
- Ansible task review;
- checklist generation;
- troubleshooting plan creation;
- README drafting;
- architecture note drafting.

---

## Validation evidence

Run:

```bash
ollama list
ollama run deepseek-r1:7b
```

Document:

```text
Date:
Host:
Model:
Prompt tested:
Result:
Observations:
```
