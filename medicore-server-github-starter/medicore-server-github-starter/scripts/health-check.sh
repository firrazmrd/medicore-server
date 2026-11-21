#!/usr/bin/env bash
set -euo pipefail
echo "=== MediCore health check ==="
date
hostname
hostname -I
df -h /
free -h
for service in ssh bind9 nginx postgresql smbd prometheus grafana-server; do
  if systemctl list-unit-files "${service}.service" >/dev/null 2>&1; then
    printf '%-18s' "${service}"
    systemctl is-active "${service}" || true
  fi
done
