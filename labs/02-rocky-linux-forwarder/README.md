# Lab 02 - Install Splunk Universal Forwarder on Rocky Linux

## Objective

Install and configure Splunk Universal Forwarder on Rocky Linux to send system logs to Splunk Enterprise.

## Prerequisites

- Rocky Linux VM
- Network connectivity to Splunk Enterprise
- Splunk Enterprise receiving enabled on TCP 9997
- sudo privileges

## Implementation checklist

- [ ] Download or transfer the Universal Forwarder package
- [ ] Install the package
- [ ] Start the forwarder
- [ ] Configure the Splunk indexer as destination
- [ ] Add Linux log inputs
- [ ] Validate host visibility in Splunk

## Useful commands

```bash
sudo /opt/splunkforwarder/bin/splunk status
sudo /opt/splunkforwarder/bin/splunk list forward-server
sudo /opt/splunkforwarder/bin/splunk list monitor
sudo ss -tulpen | grep splunk
```

## Example monitored logs

```text
/var/log/messages
/var/log/secure
/var/log/audit/audit.log
```

## Validation in Splunk

Example Splunk searches:

```spl
index=* host=<rocky-hostname>
index=* source=/var/log/secure
index=* sourcetype=linux_secure
```

## Troubleshooting

Check:

- DNS resolution
- IP connectivity to Splunk
- Firewall rules
- Splunk receiving port 9997
- Forwarder service status
- Correct outputs.conf configuration

## Cleanup

```bash
sudo /opt/splunkforwarder/bin/splunk stop
sudo /opt/splunkforwarder/bin/splunk disable boot-start || true
sudo rm -rf /opt/splunkforwarder
```
