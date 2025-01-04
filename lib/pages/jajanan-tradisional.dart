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
      'name': 'Klepon',
      'image': 'assets/img/Klepon.jpg',
      'resep': '1. Tepung ketan\n2. Gula merah\n3. Kelapa parut\n4. Air hangat',
      'cara': '1. Campur tepung ketan dengan air hingga kalis.\n'
          '2. Ambil sedikit adonan, beri gula merah di tengah, bulatkan.\n'
          '3. Rebus hingga mengapung, tiriskan.\n'
          '4. Gulingkan ke kelapa parut.',
    },
    {
      'name': 'Putu',
      'image': 'assets/img/Putu.jpg',
      'resep': '1. Tepung beras\n2. Gula merah\n3. Kelapa parut\n4. Daun pandan',
      'cara': '1. Campur tepung beras dengan air hingga basah.\n'
          '2. Isi cetakan putu dengan adonan, tambahkan gula merah di tengah.\n'
          '3. Kukus hingga matang.\n'
          '4. Sajikan dengan kelapa parut.',
    },
    {
      'name': 'Surabi',
      'image': 'assets/img/Surabi.jpg',
      'resep': '1. Tepung beras\n2. Santan\n3. Ragi\n4. Gula pasir\n5. Garam',
      'cara': '1. Campur tepung beras, santan, ragi, gula, dan garam.\n2. Diamkan hingga mengembang.\n3. Tuang adonan ke cetakan serabi, masak hingga matang.',
    },
  ];

  final List<Map<String, String>> favoritList = [];

  void toggleFavorit(Map<String, String> jajanan) {
    setState(() {
      if (favoritList.contains(jajanan)) {
        favoritList.remove(jajanan);
      } else {
        favoritList.add(jajanan);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Jajanan Tradisional',
          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
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
        itemCount: jajananList.length,
        itemBuilder: (context, index) {
          final jajanan = jajananList[index];
          final isFavorit = favoritList.contains(jajanan);
          return ListTile(
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
              style: GoogleFonts.merriweather(fontSize: 16, fontWeight: FontWeight.bold),
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
          );
        },
      ),
    );
  }
}
