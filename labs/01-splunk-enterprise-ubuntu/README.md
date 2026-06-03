# Lab 01 - Install Splunk Enterprise on Ubuntu Server

## Objective

Install Splunk Enterprise on Ubuntu Server and prepare it to receive logs from remote systems.

## Prerequisites

- Ubuntu Server VM
- Internet access or Splunk package available locally
- sudo privileges
- Minimum recommended resources: 2 vCPU, 4 GB RAM, 30 GB disk

## Implementation checklist

- [ ] Download Splunk Enterprise package
- [ ] Install Splunk under `/opt/splunk`
- [ ] Accept license
- [ ] Create admin credentials
- [ ] Configure service ownership
- [ ] Enable boot-start with systemd
- [ ] Enable receiving on TCP 9997
- [ ] Validate Splunk Web on port 8000

## Useful commands

```bash
sudo systemctl status Splunkd
sudo ss -tulpen | grep -E '8000|8089|9997'
sudo /opt/splunk/bin/splunk status
sudo /opt/splunk/bin/splunk list forward-server
```

## Validation

Splunk is correctly installed when:

- The web interface is reachable on `http://<splunk-ip>:8000`
- The service is running
- TCP port 9997 is listening
- The admin user can log in

## Troubleshooting

Common checks:

```bash
sudo systemctl status Splunkd
sudo journalctl -u Splunkd --no-pager -n 50
sudo chown -R splunk:splunk /opt/splunk
sudo ss -tulpen | grep 9997
```

## Cleanup

If this lab must be removed:

```bash
sudo systemctl stop Splunkd
sudo /opt/splunk/bin/splunk disable boot-start || true
sudo rm -rf /opt/splunk
```

Do not run cleanup on a production or important lab VM unless you intentionally want to remove Splunk.
