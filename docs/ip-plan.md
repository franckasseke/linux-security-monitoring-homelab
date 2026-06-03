# IP Plan and VM Inventory

This document tracks the lab machines, their roles, and the expected network flows.

> Replace the placeholder IP addresses with the real addresses used in the lab.

## 1. VM inventory

| Hostname | Role | OS | Example IP | Critical ports |
|---|---|---|---|---|
| vm-splunk-ubuntu-01 | Splunk Enterprise server | Ubuntu Server | 192.168.122.226 | TCP 8000, 8089, 9997 |
| vm-rocky-forwarder-01 | Linux monitored endpoint | Rocky Linux | 192.168.122.x | Forwarder to 9997 |
| vm-windows-server-01 | Windows monitored endpoint | Windows Server | 192.168.122.x | Forwarder to 9997 |
| vm-pfsense-fw-01 | Firewall / router / syslog source | pfSense | 192.168.122.x | Syslog to Splunk |

## 2. Network flows

| Source | Destination | Port | Protocol | Purpose |
|---|---|---:|---|---|
| Admin workstation | Splunk server | 8000 | TCP | Access Splunk Web |
| Universal Forwarder | Splunk server | 9997 | TCP | Forward logs |
| Splunk forwarders | Splunk server | 8089 | TCP | Splunk management traffic |
| pfSense | Splunk server | 514 or custom syslog port | UDP/TCP | Forward firewall logs |

## 3. Validation commands

From Linux endpoints:

```bash
ping <splunk-ip>
nc -vz <splunk-ip> 9997
```

On Splunk server:

```bash
sudo ss -tulpen | grep -E '8000|8089|9997|514'
sudo /opt/splunk/bin/splunk status
```

## 4. Operational rule

No lab should be considered complete until the following are documented:

- VM name
- VM role
- IP address
- Open ports
- Screenshot or command output proving connectivity
- Splunk search proving log ingestion
