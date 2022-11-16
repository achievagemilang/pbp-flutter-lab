# Pendahuluan

Pemrograman Berbasis Platform (CSGE602022) - diselenggarakan oleh Fakultas Ilmu Komputer Universitas Indonesia, Semester Ganjil 2022/2023
<br><br>

Nama: Achieva Futura Gemilang

NPM: 2106750452

Kelas: PBP D

Kode Asdos: WM
<br><br>

Repositori ini digunakan sebagai wadah untuk mengumpulkan tugas Proyek Flutter PBP.
<br>
<br>

# Tugas 7: Elemen Dasar Flutter

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
<br>


# Tugas 8: Elemen Dasar Flutter

### Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
`Navigator.push` adalah cara kita untuk menambahkan page yang akan dituju di top of stack navigator. Di lain sisi, `Navigator.pushReplacement` akan menghapus top of stack saat ini (page tempat kita berada), lalu menambahkan page yang dituju di top of stack navigator.
<br>

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
Selain menggunakan beberapa widget yang telah disebutkan pada widget-widget untuk penyelesaian tugas 7, beberapa istilah widget lain yang saya gunakan dan belum pernah dijelaskan adalah sebagai berikut:  

1. ListView: Sebagai tempat menampung Card yang berisikan widget ListTile untuk yang memuat data budget yang telah ditambahkan.
2. ListTile: Berfungsi sebagai wadah untuk mengisi ListView. Jumlahnya variatif sesuai dengan data budget yang ditambahkan.
3. Card: Membungkus ListTile dalam bentuk kartu.
4. Drawer: membuat drawer untuk navigasi page dari aplikasi.
5. SizedBox: berfungsi untuk memberikan jarak antar widget. 
6. SingleChildScrollView: berfungsi untuk memberikan fungsionalitas scrollable terhadap child-nya. 
7. Expanded: berfungsi untuk menampung widget agar memiliki properti expand. 
8. TextFormField: berfungsi sebagai form yang meminta input teks.
9. DropdownButton: button yang berfungsi meminta pilihan user dari items yang ada. 
10. DropdownHideUnderline: menghapus underline dari dropdown button.
11. TextButton: Agar user dapat mensubmit form dan menyimpan data budget.
12. Align: berfungsi untuk memberikan alignment untuk suatu widget.


### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
1. onPressed
2. onSaved
3. onClick
4. onTap
5. onLongPress
6. onChanged
7. onHover
8. dan lain-lain


### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator sebenarnya berjalan dengan menggunakan prinsip stack untuk menyimpan page-page aplikasi yang dikunjungi. Page yang sedang dikunjungi biasanya berada pada top of stack. Apabila kita ingin mennganti halaman/page, maka page yang akan dikunjungi akan di-push pada top of stack. Di lain sisi, jika kita ingin berpindah ke halaman/page sebelumnya maka akan dilakukan operasi pop pada top of stack sehingga page yang saat ini dikunjungi akan dihapus dari top of stack. Karena penghapusan tersebut, top of stack akan berada pada page yang memuat halaman sebelumnya.
<br>

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- Membuat widget drawer yang menavigasikan setiap fitur aplikasi agar saling terhubung.
- Membuat kode dart `form_budget.dart` yang berfungsi untuk menampilkan form yang nantinya akan meminta input budget dari user. Jangan lupa untuk menyimpan data `Budget` ke dalam list of `Budget`.
- Membuat kode dart `data_budget.dart` yang berfungsi untuk menampilkan data budget yang telah ditambahkan pada `form_budget.dart`.  
- Melakukan refactoring widget drawer agar berada pada file terpisah, yakni pada `drawer.dart`, untuk pengerjaan bonus.
- Menambahkan variabel baru untuk menyimpan date dan menambahkan form terkait untuk meminta input date pada user. Pada tahap ini, penggunaan `showDatePicker` akan sangat membantu.
- Menambahkan date agar pada `data_budget.dart` agar dapat ditampilkan pada page data budget.     
- Melakukan command git add, git commit, dan git push ke repository origin.  

<br>
