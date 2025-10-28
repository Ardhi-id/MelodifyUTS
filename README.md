# Melodify - Aplikasi Streaming Musik (UTS Mobile Programming)

[cite_start]Ini adalah proyek Ujian Tengah Semester (UTS) untuk mata kuliah Mobile Programming. [cite_start]Proyek ini bertujuan untuk merancang dan mengimplementasikan antarmuka (GUI) sebuah aplikasi *streaming* musik menggunakan Flutter, dengan fokus pada *layout*, *widget*, dan navigasi[cite: 9].

## [cite_start]Tema dan Tujuan Aplikasi [cite: 84]

**Tema:** Aplikasi Streaming Musik ("Melodify")
**Tujuan:** Menerapkan konsep dasar Flutter untuk membangun antarmuka pengguna yang bersih, elegan, dan responsif. [cite_start]Aplikasi ini menggunakan data *dummy* [cite: 10] [cite_start]dan dirancang agar siap untuk diintegrasikan dengan API di masa depan (misalnya Spotify API)[cite: 11].

## [cite_start]Daftar Halaman dan Fungsinya [cite: 84]

[cite_start]Aplikasi ini memiliki 3 halaman utama sesuai spesifikasi UTS:

1.  **Halaman Beranda (`HomePage`)**
    * **Fungsi:** Menampilkan daftar album "Baru Rilis" dan "Populer Hari Ini" kepada pengguna.
    * **Navigasi:** Merupakan halaman utama (indeks 0) pada `BottomNavigationBar`.
2.  **Halaman Cari (`SearchPage`)**
    * [cite_start]**Fungsi:** Menampilkan daftar kategori/genre musik (Pop, Rock, Jazz, dll.) dalam bentuk *grid*.
    * **Navigasi:** Diakses melalui *tab* "Cari" (indeks 1) pada `BottomNavigationBar`.
3.  **Halaman Detail (`PlaylistDetailPage`)**
    * [cite_start]**Fungsi:** Menampilkan daftar lagu dari album atau *playlist* yang dipilih oleh pengguna.
    * **Navigasi:** Diakses dengan menekan (*tap*) salah satu item album dari `HomePage` (menggunakan `Navigator.push`).

## [cite_start]Langkah-langkah Menjalankan Aplikasi [cite: 84]

Pastikan Anda telah menginstal Flutter SDK di komputer Anda.

1.  **Clone repositori ini:**
    ```bash
    git clone [https://github.com/ldclabs/anda](https://github.com/ldclabs/anda)
    ```

2.  **Masuk ke direktori proyek:**
    ```bash
    cd [Nama Folder Proyek Anda]
    ```

3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

4.  **Jalankan aplikasi:**
    ```bash
    flutter run
    ```
