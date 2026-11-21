# MediCore Server Administration

Repository kelompok untuk kode aplikasi, konfigurasi layanan, script administrasi, dan dokumentasi proyek MediCore.

**Gunakan data dummy. Jangan commit data pasien asli, password, token, private key, atau backup sensitif.**

| Folder | Penanggung jawab | Isi yang di-push |
|---|---|---|
| application/ | B | Kode Flask, templates, static, requirements.txt, .env.example |
| database/ | B | schema.sql, dummy_data.sql (data simulasi), petunjuk import |
| dns/ | A | named.conf.local, file zona, petunjuk validasi BIND9 |
| samba/ | C | smb.conf.example, petunjuk share dan permission |
| security/ | C | dokumentasi UFW, SSH hardening, Fail2ban |
| monitoring/ | D | prometheus.yml, alert rules, provisioning Grafana bila dipakai |
| scripts/ | D koordinator | health-check, backup, restore-test dan helper |
| backup/ | D koordinator | kebijakan, retensi, prosedur restore; bukan file backup sensitif |
| docs/ | Semua | arsitektur, instalasi, testing, DR, changelog, bukti |
| presentation/ | Semua | catatan demo dan pembagian presentasi |

## Aturan
1. Kerjakan folder sesuai tanggung jawab.
2. Sebelum mulai, `git pull origin main`.
3. Uji perubahan, perbarui dokumentasi, lalu `git status`.
4. `git add <folder>`, `git commit -m "Deskripsi perubahan"`, `git push`.
5. Koordinasikan perubahan file bersama.
6. Untuk kerja paralel, gunakan branch masing-masing dan Pull Request. Jika belum terbiasa, push ke main secara bergiliran.
7. Jangan unggah `.env`, password, token, private key, data pasien asli, file `.vdi`/`.ova`, atau backup sensitif.

## Rencana server integrasi
- APP-SERVER: 192.168.56.20 — aplikasi, PostgreSQL, Nginx/HTTPS, Node Exporter.
- INFRA-SERVER: 192.168.56.30 — DNS, Samba, Prometheus, Grafana, Node Exporter.

Alamat di atas adalah rancangan; sesuaikan jika konfigurasi final berubah.
