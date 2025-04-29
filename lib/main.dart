import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Comment out if not using google_fonts

// Icon sabitleri
const Icon dogruIconu = Icon(Icons.check_circle, color: Colors.green, size: 28.0);
const Icon yanlisIconu = Icon(Icons.cancel, color: Colors.red, size: 28.0);

void main() => runApp(const BilgiTesti());

class BilgiTesti extends StatelessWidget {
  const BilgiTesti({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // Use GoogleFonts or fallback to Roboto
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          bodyMedium: const TextStyle(fontFamily: 'Roboto'), // Fallback
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 8,
          ),
        ),
      ),
      home: const SoruSayfasi(),
    );
  }
}

class SoruSayfasi extends StatefulWidget {
  const SoruSayfasi({super.key});

  @override
  State<SoruSayfasi> createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];

  List<Soru> soruBankasi = [
    Soru(soruMetni: 'Dünya güneşin etrafında döner.', soruYaniti: true),
    Soru(soruMetni: 'İnsan vücudunda 205 kemik bulunur.', soruYaniti: false),
    Soru(soruMetni: 'Su 100 derecede kaynar.', soruYaniti: true),
    Soru(soruMetni: 'Venüs, Güneş Sistemi\'ndeki en büyük gezegendir.', soruYaniti: false),
    Soru(soruMetni: 'İstanbul Türkiye\'nin başkentidir.', soruYaniti: false),
    Soru(soruMetni: 'Bitkiler fotosentez yaparak oksijen üretir.', soruYaniti: true),
    Soru(soruMetni: 'Kutup ayıları sadece Antarktika\'da yaşar.', soruYaniti: false),
    Soru(soruMetni: 'Elmas, doğadaki en sert madde olarak bilinir.', soruYaniti: true),
    Soru(soruMetni: 'Atom, maddenin en küçük yapı taşıdır.', soruYaniti: true),
    Soru(soruMetni: 'Balıklar karada nefes alabilir.', soruYaniti: false),
    Soru(soruMetni: 'Ay, kendi ışığını üretir.', soruYaniti: false),
    Soru(soruMetni: 'Müzik, insan beyninde duygusal tepkiler oluşturabilir.', soruYaniti: true),
    Soru(soruMetni: 'Python bir programlama dilidir.', soruYaniti: true),
    Soru(soruMetni: 'Kelebeklerin ömrü sadece bir gündür.', soruYaniti: false),
    Soru(soruMetni: 'Einstein, Görelilik Teorisi\'ni geliştirmiştir.', soruYaniti: true),
    Soru(soruMetni: 'Su aygırları hızlı koşabilir.', soruYaniti: true),
    Soru(soruMetni: 'Mars\'ın iki doğal uydusu vardır.', soruYaniti: true),
    Soru(soruMetni: 'Ses boşlukta yayılabilir.', soruYaniti: false),
    Soru(soruMetni: 'Kangurular Avustralya\'ya özgü hayvanlardır.', soruYaniti: true),
    Soru(soruMetni: 'Elektrik, sadece manyetizma yoluyla oluşur.', soruYaniti: false),
  ];

  int soruIndex = 0;

  void cevapKontrol(bool kullaniciCevabi) {
    bool dogruCevap = soruBankasi[soruIndex].soruYaniti;

    setState(() {
      if (kullaniciCevabi == dogruCevap) {
        secimler.add(dogruIconu);
      } else {
        secimler.add(yanlisIconu);
      }

      if (soruIndex < soruBankasi.length - 1) {
        soruIndex++;
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text(
              'Tebrikler!',
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily ?? 'Roboto',
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Text(
              'Tüm soruları tamamladınız!\nSkor: ${secimler.where((icon) => icon == dogruIconu).length}/${soruBankasi.length}',
              style: TextStyle(
                fontFamily: GoogleFonts.poppins().fontFamily ?? 'Roboto',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    soruIndex = 0;
                    secimler.clear();
                  });
                },
                child: Text(
                  'Baştan Başla',
                  style: TextStyle(
                    fontFamily: GoogleFonts.poppins().fontFamily ?? 'Roboto',
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blueAccent, Colors.indigo],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Progress Indicator
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Soru ${soruIndex + 1}/${soruBankasi.length}',
                        style: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily ?? 'Roboto',
                          fontSize: 16,
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                // Question Card
                Expanded(
                  flex: 4,
                  child: Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          soruBankasi[soruIndex].soruMetni,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: GoogleFonts.poppins().fontFamily ?? 'Roboto',
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Answer Icons
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    runSpacing: 10,
                    spacing: 10,
                    children: secimler,
                  ),
                ),
                // Answer Buttons
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                          ),
                          onPressed: () => cevapKontrol(false),
                          child: const Icon(
                            Icons.thumb_down,
                            size: 36,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.greenAccent,
                            padding: const EdgeInsets.symmetric(vertical: 20),
                          ),
                          onPressed: () => cevapKontrol(true),
                          child: const Icon(
                            Icons.thumb_up,
                            size: 36,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Soru sınıfı
class Soru {
  String soruMetni;
  bool soruYaniti;

  Soru({required this.soruMetni, required this.soruYaniti});
}