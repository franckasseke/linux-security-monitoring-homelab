# Evidence Checklist

Use this checklist to prove that the lab is real, working, and professionally documented.

## 1. Splunk Enterprise evidence

- [ ] Screenshot: Splunk Web login page
- [ ] Screenshot: Splunk home page after login
- [ ] Screenshot: Forwarder receiving enabled on port 9997
- [ ] Command output: Splunk service status
- [ ] Command output: listening ports 8000, 8089, 9997

Suggested file names:

```text
assets/screenshots/splunk-web-login.png
assets/screenshots/splunk-receiving-9997.png
assets/screenshots/splunk-service-status.png
```

## 2. Rocky Linux forwarder evidence

- [ ] Screenshot or output: forwarder service running
- [ ] Screenshot or output: forward-server configured
- [ ] Screenshot: Rocky host visible in Splunk
- [ ] Screenshot: `/var/log/secure` or `/var/log/messages` visible in Splunk

Suggested file names:

```text
assets/screenshots/rocky-forwarder-status.png
assets/screenshots/rocky-host-visible-splunk.png
```

## 3. Windows Server forwarder evidence

- [ ] Screenshot: SplunkForwarder service running
- [ ] Screenshot: Windows host visible in Splunk
- [ ] Screenshot: Windows Security events visible in Splunk
- [ ] Screenshot: EventCode 4624 or 4625 search result

Suggested file names:

```text
assets/screenshots/windows-forwarder-service.png
assets/screenshots/windows-security-events.png
```

## 4. pfSense evidence

- [ ] Screenshot: pfSense interface access
- [ ] Screenshot: remote logging configuration
- [ ] Screenshot: firewall logs visible in Splunk
- [ ] Screenshot: blocked or allowed traffic search result

Suggested file names:

```text
assets/screenshots/pfsense-remote-logging.png
assets/screenshots/pfsense-logs-splunk.png
```

## 5. Architecture evidence

- [ ] Diagram: high-level architecture
- [ ] Diagram: network flow to Splunk
- [ ] Table: IP plan completed
- [ ] Table: VM inventory completed

Suggested file names:

```text
assets/diagrams/high-level-architecture.png
assets/diagrams/log-flow-architecture.png
```

## 6. Final recruiter-ready validation

Before sharing the repository, confirm:

- [ ] README explains the project clearly
- [ ] Architecture file is completed
- [ ] IP plan is completed
- [ ] At least 5 screenshots are present
- [ ] Labs contain validation sections
- [ ] Troubleshooting runbook exists
- [ ] Use cases are documented
