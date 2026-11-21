# Catatan aturan UFW

| Server | Port/protokol | Sumber yang diizinkan | Tujuan | Hasil uji |
|---|---|---|---|---|
| APP | 80/443 TCP | jaringan yang diperlukan | Web | TODO |
| APP | 9100 TCP | INFRA saja | Node Exporter | TODO |
| INFRA | 53 TCP/UDP | jaringan yang diperlukan | DNS | TODO |
| INFRA | 445 TCP | jaringan yang diperlukan | Samba | TODO |
| INFRA | 3000/9090 TCP | admin/jaringan demo | Grafana/Prometheus | TODO |

Isi berdasarkan aturan yang benar-benar diterapkan; tabel ini bukan konfigurasi final.
