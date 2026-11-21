# Arsitektur MediCore

TODO: tujuan, diagram topologi, IP final, alur komunikasi, dan alasan pemisahan APP-SERVER/INFRA-SERVER.

| Komponen | Server | Fungsi | Port | Status |
|---|---|---|---|---|
| BIND9 | INFRA | DNS | 53 TCP/UDP | TODO |
| Nginx/HTTPS | APP | Web/reverse proxy | 80/443 | TODO |
| Flask/Gunicorn | APP | Aplikasi | internal | TODO |
| PostgreSQL | APP | Database | sesuai desain; tidak perlu diekspos bila lokal | TODO |
| Samba | INFRA | File sharing | 445 TCP | TODO |
| Prometheus/Grafana | INFRA | Monitoring | 9090/3000 | TODO |
| Node Exporter | Keduanya | Metrik host | 9100 | TODO |
