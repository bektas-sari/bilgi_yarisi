# Bilgi Testi Uygulaması

Bu proje, Flutter kullanılarak geliştirilmiş basit ve şık bir bilgi yarışması uygulamasıdır. 
Kullanıcıya doğru-yanlış sorular sorulur ve cevaplarına göre anlık skor takibi yapılır.

## 📊 Proje Amacı
- Flutter bilgilerini pekistirmek
- State management, widget yapısı ve görsel tasarım deneyimi kazanmak
- Basit bir quiz mantığını uygulamak

## 🌐 Uygulama Özellikleri
- Anlık soru gösterimi ve soru ilerlemesi
- Doğru ve yanlış cevap ikonlarının anlık takibi
- Skor gösterimi ve quiz bitince yeniden başlama seçeneği
- Modern Flutter tasarımı (Google Fonts, Gradient Arkaplan, ElevatedButton kullanımı)

## 🛋Özellikler Listesi
- **Soru Bankası:** Sorular `Soru` sınıfı ile nesne tabanlı şekilde tanımlanmıştır.
- **Cevap Kontrolü:** Kullanıcının verdiği cevap anında kontrol edilir.
- **Skor Takibi:** Toplam doğru sayısı quiz sonunda gösterilir.
- **Responsive Tasarım:** Tüm cihazlarda uygun görünür.
- **Dialog Gösterimi:** Quiz bittiğinde özel bir çıkış ekranı ile kullanıcı bilgilendirilir.

## 📂 Dosya Yapısı
```bash
/lib
 |-- constants.dart      # Uygulama için sabit ikon tanımları
 |-- main.dart           # Ana uygulama dosyası (Uygulama girişi ve ana ekran)
```

## ⚙️ Kullanılan Teknolojiler
- [Flutter](https://flutter.dev/) ✔
- [Dart](https://dart.dev/) ✔
- [Google Fonts (Poppins)](https://pub.dev/packages/google_fonts) ✔

## 📚 Öğrenilen Konular
- StatefulWidget kullanımı
- setState ile anlık ekran güncelleme
- Listelerle veri takibi
- Basit Flutter UI tasarım teknikleri
- AlertDialog kullanımı

## 🔧 Kurulum ve Çalıştırma
1. Bu repoyu klonlayın:
   ```bash
   git clone <[repo-link](https://github.com/bektas-sari/bilgi_yarisi.git)>
   ```
2. Bağımlılıkları yükleyin:
   ```bash
   flutter pub get
   ```
3. Uygulamayı çalıştırın:
   ```bash
   flutter run
   ```
## ✍️ Katkıda Bulunmak
Katkılara açığız! Lütfen önce bir issue oluşturun ve ne değişiklik yapmayı planladığınızı belirtin.

## 📢 Lisans
Bu proje öğrenme amacıyla geliştirilmiştir ve açık kaynaklıdır.
