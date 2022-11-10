# Tugas 7: Elemen Dasar Flutter

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023

Nama: Achieva Futura Gemilang

NPM: 2106750452

Kelas: PBP D

Kode Asdos: WM

## Pendahuluan

Repositori ini digunakan sebagai wadah untuk mengumpulkan tugas Proyek Flutter PBP.

## Pertanyaan dan Jawaban (counter_7)

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Perbedaan dan penjelasan dari keduanya dapat dilihat dari namanya. Stateless widget adalah Sebuah widget yang bersifat stateless, artinya ia tidak memiliki sebuah state. Hal ini berarti widget ini bersifat statis karena tidak akan ada yang state yang berubah dari widget tersebut.

Di lain sisi, stateful widget adalah sebuah widget yang bersifat stateful, artinya ia memiliki sebuah state. Hal ini juga berarti widget ini dapat melakukan perubahan dengan sendirinya, sesuai dengan state widget tersebut.
<br>

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
1. MaterialApp: memberikan material design
2. Scaffold: untuk memberikan fondasi/struktur aplikasi
3. AppBar: bar widget paling atas layar untuk penulisan judul aplikasi
4. Center: melakukan centering pada widget agar berada di tengah-tengah layar
3. Text: menampilkan teks
5. Padding: membuat padding pada widget
8. FloatingActionButton: tombol aksi untuk melakukan plus/minus pada counter.
6. Column: mengatur children widgets untuk tersusun dalam satu kolom.
7. Row: mengatur children widgets untuk tersusun dalam satu baris.
8. Icon: memberikan icon pada button.
<br>

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() adalah cara kita untuk memberitahu Flutter bahwa internal state dari widget kita telah berubah. Karena kemungkinan dapat mempengaruhi tamplian, setstate() nantinya akan berfungsi untuk me-rebuild widget tree sehingga widget yang dihasilkan memiliki state terbaru. Pada tugas 7, variabel yang terdampak fungsi setState() adalah _counter yang menyimpan jumlah penekanan tombol plus/minus (akumulatif).
<br>

### Jelaskan perbedaan antara const dengan final.
Meskipun Keduanya merupakan sebuah variabel yang konstan. Perbedaanya terletak pada waktu tempat mereka terinisialisasi dengan data. `const` harus sudah terdefinisi saat program di-compile, sedangkan `final` dapat kita definisikan isinya saat program berjalan secara runtime.
<br>

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Melakukan command berikut pada terminal: `flutter create counter_7` untuk menginisialisasi flutter app.
- Dari template `main.dart`, kita hanya perlu menambahkan tombol minus dan mengatur kembali UI aplikasi agar sesuai dengan harapan soal.
- Atur kembali judul aplikasi pada appbar. 
- Mengganti teks yang akan muncul diatas counter (Genap/Ganjil) sesuai state counter yang dimiliki sekarang. Hal ini dapat diwujudkan dengan menggunakan ternary operator.
- Tambah tombol minus untuk men-decrement counter. Definisikan juga fungsi `_decrementCounter()`-nya.
- Menggunakan widget seperti `Padding` dan `Row` agar kedua tombol dapat memiliki jarak yang bersesuaian. 
- Menambahkan logic untuk menyembunyikan tombol minus saat counter bernilai 0.
- Selesai! jangan lupa untuk add, commit, dan push ke repository github.
<br>