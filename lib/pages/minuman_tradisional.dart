import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailPage-minuman.dart';
import 'favorit_page.dart';

class MinumanTradisionalPage extends StatefulWidget {
  @override
  _MinumanTradisionalPageState createState() => _MinumanTradisionalPageState();
}

class _MinumanTradisionalPageState extends State<MinumanTradisionalPage> {
  final List<Map<String, String>> minumanList = [
    {
    'name': 'Kopi Sanger',
    'image': 'assets/img/kopi_sanger.jpg',
    'resep': '1. Kopi bubuk\n2. Susu kental manis\n3. Air panas',
    'cara': '1. Seduh kopi dengan air panas.\n2. Tambahkan susu kental manis, aduk rata.\n3. Sajikan hangat.',
    'kategori': 'Aceh',
  },
  {
    'name': 'Teh Tarik Aceh',
    'image': 'assets/img/teh_tarik_aceh.jpg',
    'resep': '1. Teh hitam\n2. Susu kental manis\n3. Air panas',
    'cara': '1. Seduh teh dengan air panas.\n2. Tambahkan susu kental manis, aduk dan tarik hingga berbusa.\n3. Sajikan.',
    'kategori': 'Aceh',
  },
  {
    'name': 'Aia Kawa (Kopi Daun)',
    'image': 'assets/img/aia_kawa.jpg',
    'resep': '1. Daun kopi kering\n2. Air panas\n3. Gula aren (opsional)',
    'cara': '1. Seduh daun kopi dengan air panas.\n2. Biarkan 5-10 menit, saring.\n3. Tambahkan gula aren jika diinginkan, sajikan hangat.',
    'kategori': 'Sumatra Barat',
  },
  {
    'name': 'Teh Talua',
    'image': 'assets/img/teh_talua.jpg',
    'resep': '1. Kuning telur ayam kampung\n2. Gula pasir\n3. Susu kental manis\n4. Teh panas',
    'cara': '1. Kocok kuning telur dan gula hingga berbusa.\n2. Tambahkan susu kental manis, aduk rata.\n3. Tuang teh panas sambil diaduk. Sajikan.',
    'kategori': 'Sumatra Barat',
  },
  {
    'name': 'Bandrek',
    'image': 'assets/img/bandrek.jpg',
    'resep': '1. Air\n2. Jahe bakar\n3. Serai\n4. Gula aren\n5. Daun pandan\n6. Santan (opsional)',
    'cara': '1. Rebus air, jahe, serai, gula aren, dan daun pandan hingga mendidih.\n2. Tambahkan santan jika diinginkan. Sajikan hangat.',
    'kategori': 'Jawa Barat',
  },
  {
    'name': 'Bajigur',
    'image': 'assets/img/bajigur.jpg',
    'resep': '1. Santan\n2. Gula aren\n3. Kayu manis\n4. Jahe\n5. Garam',
    'cara': '1. Panaskan santan, gula aren, kayu manis, jahe, dan garam.\n2. Aduk terus hingga mendidih. Sajikan hangat.',
    'kategori': 'Jawa Barat',
  },
  {
    'name': 'Bir Pletok',
    'image': 'assets/img/bir_pletok.jpg',
    'resep': '1. Air\n2. Jahe\n3. Serai\n4. Daun pandan\n5. Kayu manis\n6. Gula pasir\n7. Secang',
    'cara': '1. Rebus semua bahan hingga air berubah warna dan harum.\n2. Saring, sajikan hangat.',
    'kategori': 'DKI Jakarta',
  },
  {
    'name': 'Es Selendang Mayang',
    'image': 'assets/img/es_selendang_mayang.jpg',
    'resep': '1. Tepung beras\n2. Tepung sagu\n3. Santan\n4. Gula merah\n5. Sirup merah\n6. Es batu',
    'cara': '1. Masak tepung beras dan sagu hingga mengental, tuang ke cetakan.\n2. Sajikan dengan kuah santan, gula merah, sirup, dan es batu.',
    'kategori': 'DKI Jakarta',
  },
  {
    'name': 'Dawet Ayu Banjarnegara',
    'image': 'assets/img/dawet_ayu.jpg',
    'resep': 'Bahan Cendol:\n1. 100 gr tepung beras\n2. 50 gr tepung sagu\n3. 500 ml air pandan\n\nBahan Pelengkap:\n1. 500 ml santan\n2. 200 gr gula merah cair\n3. Es batu',
    'cara': '1. Masak bahan cendol hingga mengental, cetak dengan saringan.\n2. Sajikan cendol dengan santan, gula merah, dan es batu.',
    'kategori': 'Jawa Tengah',
  },
  {
    'name': 'Wedang Ronde',
    'image': 'assets/img/wedang_ronde.jpg',
    'resep': '1. 200 gr tepung ketan\n2. 100 ml air hangat\n3. 2 ruas jahe, bakar dan geprek\n4. 100 gr gula merah\n5. 500 ml air',
    'cara': '1. Uleni tepung ketan dengan air hangat hingga kalis, bentuk bulatan kecil.\n2. Rebus bulatan hingga mengapung.\n3. Rebus jahe, gula merah, dan air hingga mendidih. Sajikan ronde dengan kuah jahe.',
    'kategori': 'Jawa Tengah',
  },
  {
    'name': 'Wedang Pokak',
    'image': 'assets/img/wedang_pokak.jpg',
    'resep': '1. 500 ml air\n2. 2 ruas jahe, geprek\n3. 3 batang serai\n4. 1 sdm gula merah',
    'cara': '1. Rebus semua bahan hingga mendidih dan harum.\n2. Sajikan hangat.',
    'kategori': 'Jawa Timur',
  },
  {
    'name': 'Es Sinom',
    'image': 'assets/img/es_sinom.jpg',
    'resep': '1. 100 gr daun sinom (daun muda asam)\n2. 500 ml air\n3. 100 gr gula aren',
    'cara': '1. Rebus daun sinom, gula aren, dan air hingga mendidih.\n2. Saring, biarkan dingin, sajikan dengan es batu.',
    'kategori': 'Jawa Timur',
  },
  {
    'name': 'Es Daluman',
    'image': 'assets/img/es_daluman.jpg',
    'resep': '1. 200 gr cincau hijau\n2. 500 ml santan\n3. 200 gr gula merah cair\n4. Es batu',
    'cara': '1. Potong cincau hijau.\n2. Sajikan dengan santan, gula merah cair, dan es batu.',
    'kategori': 'Bali',
  },
  {
    'name': 'Air Guraka',
    'image': 'assets/img/air_guraka.jpg',
    'resep': '1. 500 ml air\n2. 2 ruas jahe, geprek\n3. 1 sdm gula merah\n4. 1 sdt kacang kenari cincang',
    'cara': '1. Rebus air dengan jahe dan gula merah hingga mendidih.\n2. Sajikan dengan taburan kacang kenari.',
    'kategori': 'Kalimantan Selatan',
  },
  {
    'name': 'Es Pisang Ijo',
    'image': 'assets/img/es_pisang_ijo.jpg',
    'resep': 'Bahan Kulit:\n1. 100 gr tepung beras\n2. 50 gr tepung sagu\n3. Air pandan secukupnya\n\nIsi:\n1. Pisang raja matang\n\nPelengkap:\n1. Sirup merah\n2. Es batu',
    'cara': '1. Balut pisang dengan adonan tepung, kukus hingga matang.\n2. Sajikan dengan sirup merah dan es batu.',
    'kategori': 'Sulawesi Selatan',
  },
  {
    'name': 'Sarabba',
    'image': 'assets/img/sarabba.jpg',
    'resep': '1. 500 ml santan\n2. 2 ruas jahe, bakar dan geprek\n3. 1 kuning telur\n4. 3 sdm gula merah',
    'cara': '1. Rebus santan dengan jahe dan gula merah.\n2. Tambahkan kuning telur yang telah dikocok, aduk rata. Sajikan hangat.',
    'kategori': 'Sulawesi Selatan',
  },
  ];

  final List<Map<String, String>> favoritList = [];
  String selectedKategori = 'Semua'; // Default filter: Semua kategori

  void toggleFavorit(Map<String, String> minuman) {
    setState(() {
      if (favoritList.contains(minuman)) {
        favoritList.remove(minuman);
      } else {
        favoritList.add(minuman);
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
              title: const Text('Aceh'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Aceh';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sumatra Barat'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Sumatra Barat';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Jawa Barat'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Jawa Barat';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('DKI Jakarta'),
              onTap: () {
                setState(() {
                  selectedKategori = 'DKI Jakarta';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Jawa Tengah'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Jawa Tengah';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Jawa Timur'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Jawa Timur';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Bali'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Bali';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Kalimantan Selatan'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Kalimantan Selatan';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sulawesi Selatan'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Sulawesi Selatan';
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
        ? minumanList
        : minumanList.where((minuman) {
            return minuman['kategori'] == selectedKategori;
          }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Minuman Nusantara',
          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
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
          final minuman = filteredList[index];
          final isFavorit = favoritList.contains(minuman);
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
                    minuman['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  minuman['name']!,
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
                  onPressed: () => toggleFavorit(minuman),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPageMinuman(
                        name: minuman['name']!,
                        image: minuman['image']!,
                        resep: minuman['resep']!,
                        cara: minuman['cara']!,
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

