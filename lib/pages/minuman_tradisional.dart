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
      'name': 'Es Doger',
      'image': 'assets/img/es_doger.jpg',
      'resep': '1. Santan\n2. Gula merah\n3. Tape singkong\n4. Kelapa muda\n5. Es serut\n6. Sirup merah',
      'cara': '1. Rebus santan dan gula hingga larut.\n2. Campur tape singkong, kelapa muda, dan es serut.\n3. Tambahkan sirup merah sebelum disajikan.',
    },
    {
      'name': 'Bajigur',
      'image': 'assets/img/bajigur.jpg',
      'resep': '1. Santan\n2. Gula merah\n3. Kopi bubuk\n4. Jahe\n5. Garam\n6. Daun pandan',
      'cara': '1. Rebus santan, gula merah, dan jahe.\n2. Tambahkan kopi bubuk dan daun pandan.\n3. Sajikan hangat.',
    },
    {
      'name': 'Wedang Jahe',
      'image': 'assets/img/wedang_jahe.jpg',
      'resep': '1. Jahe\n2. Gula merah\n3. Kayu manis\n4. Cengkeh\n5. Air',
      'cara': '1. Bakar jahe hingga harum, lalu memarkan.\n2. Rebus jahe, gula merah, kayu manis, dan cengkeh.\n3. Sajikan hangat.',
    },
  ];

  final List<Map<String, String>> favoritList = [];

  void toggleFavorit(Map<String, String> minuman) {
    setState(() {
      if (favoritList.contains(minuman)) {
        favoritList.remove(minuman);
      } else {
        favoritList.add(minuman);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Minuman Tradisional',
          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        actions: [
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
        itemCount: minumanList.length,
        itemBuilder: (context, index) {
          final minuman = minumanList[index];
          final isFavorit = favoritList.contains(minuman);
          return ListTile(
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
              style: GoogleFonts.merriweather(fontSize: 16, fontWeight: FontWeight.bold),
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
          );
        },
      ),
    );
  }
}
