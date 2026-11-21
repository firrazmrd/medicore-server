# Panduan kontribusi

- A: `dns/`
- B: `application/`, `database/`
- C: `samba/`, `security/`
- D: `monitoring/`, `backup/`, koordinasi `scripts/`
- Semua: `docs/`, `presentation/`

Alur sederhana:
1. `git pull origin main`
2. Ubah file sesuai tanggung jawab.
3. Uji dan dokumentasikan hasilnya.
4. `git status`
5. `git add <folder-atau-file>`
6. `git commit -m "Deskripsi perubahan"`
7. `git push`

Untuk kerja paralel: gunakan branch seperti `feature/dns-a`, `feature/app-b`, `feature/security-c`, `feature/monitoring-d`, lalu Pull Request ke `main`.

Jangan commit credential. Jika secret terlanjur ter-push, segera cabut/rotasi secret tersebut; menghapusnya pada commit berikutnya saja tidak cukup.
