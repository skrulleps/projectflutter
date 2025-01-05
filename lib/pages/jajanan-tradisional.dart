import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projectuas_application_1/pages/detailPage-jajanan.dart';
import 'package:projectuas_application_1/pages/favorit_page.dart';

class JajananTradisionalPage extends StatefulWidget {
  @override
  _JajananTradisionalPageState createState() => _JajananTradisionalPageState();
}

class _JajananTradisionalPageState extends State<JajananTradisionalPage> {
  final List<Map<String, String>> jajananList = [
    {
    "name": "Lemang",
    "image": "assets/img/Lemang.jpg",
    "resep": "1. 500 gram beras ketan putih\n2. 500 ml santan\n3. 1 sdt garam\n4. Bambu dan daun pisang",
    "cara": "1. Rendam beras ketan selama 3 jam, tiriskan.\n2. Campur beras ketan dengan santan dan garam.\n3. Masukkan ke bambu yang dilapisi daun pisang.\n4. Panggang hingga matang selama 2-3 jam.",
    "kategori": "Sumatera"
  },
  {
    "name": "Kue Lapis Legit",
    "image": "assets/img/lapis_legit.jpg",
    "resep": "1. 30 kuning telur\n2. 500 gram margarin\n3. 500 gram gula halus\n4. 100 gram tepung terigu\n5. 1 sdt kayu manis bubuk",
    "cara": "1. Kocok margarin dan gula hingga mengembang. Masukkan telur satu per satu.\n2. Tambahkan tepung dan rempah, aduk rata.\n3. Tuang adonan lapis demi lapis ke loyang, panggang tiap lapisan hingga kecokelatan.",
    "kategori": "Sumatera"
  },
  {
    "name": "Serabi Solo",
    "image": "assets/img/serabi_solo.jpg",
    "resep": "1. 250 gram tepung beras\n2. 500 ml santan hangat\n3. 100 gram gula pasir\n4. 1 sdt ragi instan",
    "cara": "1. Campur semua bahan, aduk rata. Diamkan 1 jam hingga mengembang.\n2. Tuang adonan ke cetakan serabi, masak dengan api kecil hingga matang.",
    "kategori": "Jawa"
  },
  {
    "name": "Geplak",
    "image": "assets/img/geplak.jpg",
    "resep": "1. 300 gram kelapa parut\n2. 100 gram tepung beras\n3. 250 gram gula pasir\n4. Pewarna makanan (opsional)",
    "cara": "1. Masak gula dengan sedikit air hingga larut.\n2. Masukkan kelapa parut dan tepung beras, aduk hingga adonan kalis.\n3. Bentuk bulatan kecil, dinginkan hingga mengeras.",
    "kategori": "Jawa"
  },
  {
    "name": "Amparan Tatak",
    "image": "assets/img/amparan_tatak.jpg",
    "resep": "1. 5 buah pisang matang\n2. 250 gram tepung beras\n3. 500 ml santan\n4. 100 gram gula pasir\n5. 1/2 sdt garam",
    "cara": "1. Campur tepung, santan, gula, dan garam. Masak hingga mengental.\n2. Tuang separuh adonan ke loyang, tambahkan pisang, dan tutup dengan sisa adonan.\n3. Kukus selama 30 menit.",
    "kategori": "Kalimantan"
  },
  {
    "name": "Cincin Banjar",
    "image": "assets/img/cincin_banjar.jpg",
    "resep": "1. 200 gram tepung beras\n2. 150 gram gula merah\n3. 100 ml air",
    "cara": "1. Larutkan gula merah dengan air, campurkan ke tepung beras.\n2. Bentuk cincin kecil dari adonan, goreng hingga matang.",
    "kategori": "Kalimantan"
  },
  {
    "name": "Kue Cucur Manado",
    "image": "assets/img/kue_cucur_manado.jpg",
    "resep": "1. 250 gram tepung beras\n2. 200 gram gula merah\n3. 250 ml air\n4. 1/4 sdt garam",
    "cara": "1. Rebus gula merah dengan air, saring.\n2. Campur tepung dengan larutan gula, aduk hingga rata.\n3. Goreng adonan dengan minyak panas hingga membentuk pinggiran tipis.",
    "kategori": "Sulawesi"
  },
  {
    "name": "Barongko",
    "image": "assets/img/barongko.jpg",
    "resep": "1. 5 buah pisang matang\n2. 200 ml santan\n3. 2 butir telur\n4. 100 gram gula pasir\n5. Daun pisang",
    "cara": "1. Haluskan pisang, campur dengan santan, telur, dan gula.\n2. Bungkus adonan dengan daun pisang. Kukus selama 30 menit.",
    "kategori": "Sulawesi"
  },
  {
    "name": "Sagu Lempeng",
    "image": "assets/img/sagu_lempeng.jpg",
    "resep": "1. 300 gram tepung sagu\n2. 100 ml air\n3. Gula (opsional)",
    "cara": "1. Campur sagu dengan sedikit air hingga menggumpal.\n2. Bentuk menjadi lempeng tipis, panggang di atas api kecil hingga kering.",
    "kategori": "Papua"
  },
  {
    "name": "Halua Kenari",
    "image": "assets/img/halua_kenari.jpg",
    "resep": "1. 200 gram kenari\n2. 150 gram gula merah\n3. 50 ml air",
    "cara": "1. Masak gula merah dengan air hingga kental.\n2. Masukkan kenari, aduk hingga tercampur rata.\n3. Angkat, bentuk bulatan kecil, dinginkan.",
    "kategori": "Maluku"
  },
  ];

  final List<Map<String, String>> favoritList = [];
  String selectedKategori = 'Semua'; // Default filter: Semua kategori

  void toggleFavorit(Map<String, String> jajanan) {
    setState(() {
      if (favoritList.contains(jajanan)) {
        favoritList.remove(jajanan);
      } else {
        favoritList.add(jajanan);
      }
    });
  }

   void showFilterDialog() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: [
            ListTile(
              title: const Text('Semua'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Semua';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sumatera'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Sumatera';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Jawa'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Jawa';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Kalimantan'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Kalimantan';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sulawesi'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Sulawesi';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Papua'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Papua';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Maluku'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Maluku';
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredList = selectedKategori == 'Semua'
        ? jajananList
        : jajananList.where((jajanan) {
            return jajanan['kategori'] == selectedKategori;
          }).toList();
    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jajanan Nusantara',
          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: showFilterDialog,
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritPage(favoritList: favoritList),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredList.length,
        itemBuilder: (context, index) {
          final jajanan = filteredList[index];
          final isFavorit = favoritList.contains(jajanan);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    jajanan['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  jajanan['name']!,
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isFavorit ? Icons.favorite : Icons.favorite_border,
                    color: isFavorit ? Colors.red : Colors.grey,
                  ),
                  onPressed: () => toggleFavorit(jajanan),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPageJajanan(
                        name: jajanan['name']!,
                        image: jajanan['image']!,
                        resep: jajanan['resep']!,
                        cara: jajanan['cara']!,
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}