<p align="center"><img src="icon-512.png" width="120" alt="Ikon Catatan Keuangan"></p>

# ⚡ Catatan Keuangan

Aplikasi pencatat keuangan sederhana untuk **kontraktor listrik**. Berjalan offline, data tersimpan di perangkat, ramah HP Android.

## Fitur
- Dashboard saldo, pemasukan, dan pengeluaran
- Grafik donut per kategori dengan filter harian, bulanan, tahunan
- Tambah, ubah, hapus transaksi
- Riwayat dengan pencarian dan filter
- Backup JSON, ekspor CSV, pulihkan data
- Penyimpanan offline, mode gelap otomatis

## Cara upload ke GitHub (tanpa folder)
1. Buat repo baru, lalu **Add file → Upload files** dan pilih semua file hasil ekstrak zip. Commit ke branch `main`.
2. **Add file → Create new file**. Pada kolom nama, ketik `.github/workflows/build-apk.yml` (GitHub otomatis membuat foldernya). Salin seluruh isi file `build-apk.yml` ke editor, lalu commit.
3. Buka tab **Actions → Build APK**. Setelah selesai, unduh **CatatanKeuangan-debug-apk** di bagian Artifacts, ekstrak, lalu pasang `.apk` di HP.

## Versi web (GitHub Pages)
Settings → Pages → Branch `main`, folder `/ (root)`. `index.html` akan tampil sebagai aplikasi web.

## Build lewat Android Studio
Jalankan `bash setup-android-project.sh` untuk menyusun folder `android/`, lalu buka folder itu di Android Studio dan pilih **Build → Build APK(s)**.

## Catatan
- Data tersimpan di penyimpanan lokal aplikasi, jadi lakukan backup berkala.
- APK yang dihasilkan adalah versi debug. Untuk rilis resmi, tambahkan penandatanganan (signing) sendiri.

## Lisensi
MIT, lihat [LICENSE](LICENSE).
