# Linux Security Monitoring Homelab

Enterprise-style security monitoring lab using **Splunk**, **pfSense**, **Ubuntu Server**, **Rocky Linux**, and **Windows Server**.

This repository documents the design, deployment, configuration, and validation of a small enterprise security monitoring environment. The objective is to centralize logs from Linux, Windows, and network security components into Splunk, then use those logs for operational monitoring, troubleshooting, and security analysis.

## Project objectives

- Build a realistic security monitoring homelab.
- Deploy Splunk Enterprise as a central SIEM/log platform.
- Forward logs from Ubuntu Server, Rocky Linux, Windows Server, and pfSense.
- Document the architecture like a professional consulting engagement.
- Produce reusable technical documentation for recruiters, clients, and future projects.

## Target architecture

```text
+-------------------+        +-----------------------+
| pfSense Firewall  | -----> |                       |
| Network Logs      |        |                       |
+-------------------+        |                       |
                             |   Splunk Enterprise   |
+-------------------+        |   Ubuntu Server       |
| Rocky Linux       | -----> |   TCP 9997 / Web 8000 |
| Universal Forwarder|       |                       |
+-------------------+        |                       |
                             |                       |
+-------------------+        |                       |
| Windows Server    | -----> |                       |
| Universal Forwarder|       +-----------------------+
+-------------------+
```

## Technology stack

| Area | Technologies |
|---|---|
| SIEM / Logs | Splunk Enterprise, Splunk Universal Forwarder |
| Firewall / Network | pfSense |
| Linux Systems | Ubuntu Server, Rocky Linux |
| Windows Systems | Windows Server |
| Virtualization | KVM / Virt-Manager |
| Documentation | Markdown, architecture notes, implementation guides |

## Repository structure

```text
docs/       Technical documentation and architecture notes
labs/       Step-by-step implementation labs
scripts/    Useful commands and automation helpers
assets/     Diagrams, screenshots, and visual evidence
```

## Current lab scope

- Splunk Enterprise installation on Ubuntu Server.
- Splunk boot-start and systemd service configuration.
- Splunk Universal Forwarder installation on Rocky Linux.
- Splunk Universal Forwarder installation on Windows Server.
- pfSense preparation for log forwarding.
- Validation of Splunk receiving host logs.

## Skills demonstrated

- Linux administration
- Windows Server administration
- SIEM deployment
- Log forwarding
- Network troubleshooting
- Firewall log collection
- Enterprise documentation
- Security monitoring foundations

## Documentation roadmap

- [ ] Architecture design
- [ ] Splunk installation guide
- [ ] Rocky Linux forwarder guide
- [ ] Windows Server forwarder guide
- [ ] pfSense log forwarding guide
- [ ] Troubleshooting notes
- [ ] Security monitoring use cases
- [ ] Screenshots and diagrams

## Author

**Franck Ake**  
Cloud & Infrastructure Security Architect in progress  
Focus: Linux, Cloud Security, SIEM, Networking, Kubernetes, and Infrastructure Security.
