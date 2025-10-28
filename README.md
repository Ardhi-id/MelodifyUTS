# Melodify - Aplikasi Streaming Musik (UTS Mobile Programming)

Ini adalah proyek Ujian Tengah Semester (UTS) untuk mata kuliah Mobile Programming. Proyek ini bertujuan untuk merancang dan mengimplementasikan antarmuka (GUI) sebuah aplikasi *streaming* musik menggunakan Flutter, dengan fokus pada *layout*, *widget*, dan navigasi.

## Tema dan Tujuan Aplikasi.

**Tema:** Aplikasi Streaming Musik ("Melodify")
**Tujuan:** Menerapkan konsep dasar Flutter untuk membangun antarmuka pengguna yang bersih, elegan, dan responsif. Aplikasi ini menggunakan data *dummy*  dan dirancang agar siap untuk diintegrasikan dengan API di masa depan (misalnya Spotify API).

## Daftar Halaman dan Fungsinya

Aplikasi ini memiliki 3 halaman utama sesuai spesifikasi UTS:

1.  **Halaman Beranda (`HomePage`)**
    * **Fungsi:** Menampilkan daftar album "Baru Rilis" dan "Populer Hari Ini" kepada pengguna.
    * **Navigasi:** Merupakan halaman utama (indeks 0) pada `BottomNavigationBar`.
2.  **Halaman Cari (`SearchPage`)**
    * **Fungsi:** Menampilkan daftar kategori/genre musik (Pop, Rock, Jazz, dll.) dalam bentuk *grid*.
    * **Navigasi:** Diakses melalui *tab* "Cari" (indeks 1) pada `BottomNavigationBar`.
3.  **Halaman Detail (`PlaylistDetailPage`)**
    * **Fungsi:** Menampilkan daftar lagu dari album atau *playlist* yang dipilih oleh pengguna.
    * **Navigasi:** Diakses dengan menekan (*tap*) salah satu item album dari `HomePage` (menggunakan `Navigator.push`).
