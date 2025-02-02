# GREP-MAIN

Bu proje, klasik **grep** komut satırı aracının C diliyle yazılmış bir uygulamasıdır. `grep-main`, dosyalar veya metin girdileri içinde belirli desenleri (pattern) aramak için kullanılabilir.

## 🚀 Özellikler
- **Desen Arama:** Belirli kelimeleri veya düzenli ifadeleri (regex) arama yeteneği.
- **Çoklu Dosya Desteği:** Aynı anda birden fazla dosyada arama yapabilir.
- **Hızlı Performans:** Optimize edilmiş C kodu ile hızlı arama işlemleri.
- **Basit ve Hafif:** Komut satırından kolay kullanım.

## 📦 Kurulum

Projeyi yerel bilgisayarınıza klonlamak için:

```bash
git clone https://github.com/kapheira/grep-main.git
cd grep-main
```

### CMake ile Derleme:

```bash
mkdir build
cd build
cmake ..
make
```

### Makefile ile Derleme:

```bash
make
```

## 📊 Kullanım

Derleme tamamlandıktan sonra `mygrep` dosyasını çalıştırabilirsiniz:

```bash
./mygrep <desen> <dosya_yolu> [seçenekler]
```

### Kullanılabilir Bayraklar (Flags):

- `-i` : Büyük/küçük harf duyarlılığını yok sayar (case-insensitive arama).
- `-v` : Belirtilen desenle eşleşmeyen satırları gösterir (ters arama).
- `-c` : Eşleşen satırların sayısını döndürür.
- `-n` : Eşleşen satırların satır numaralarını gösterir.
- `-r` : Dizinler içinde yinelemeli (recursive) arama yapar.

### Örnekler:

- **Basit Arama:**
  ```bash
  ./mygrep "merhaba" test1.txt
  ```
  Belirtilen dosyada "merhaba" kelimesini arar.

- **Büyük/Küçük Harf Duyarsız Arama:**
  ```bash
  ./mygrep -i "Merhaba" test1.txt
  ```
  "Merhaba", "MERHABA" veya "merhaba" gibi varyasyonları arar.

- **Ters Arama:**
  ```bash
  ./mygrep -v "hata" test2.txt
  ```
  "hata" kelimesi içermeyen satırları gösterir.

- **Satır Numarası ile Arama:**
  ```bash
  ./mygrep -n "uyarı" test1.txt
  ```
  "uyarı" kelimesinin geçtiği satır numaralarını gösterir.

- **Recursive Arama:**
  ```bash
  ./mygrep -r "todo" ./src
  ```
  `src` klasörü içinde "todo" kelimesini arar.

