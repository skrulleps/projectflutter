import 'detail_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MakananPage extends StatelessWidget {
  final List<Map<String, String>> makananList = [
    {
      'name': 'Nasi Uduk',
      'image': 'assets/img/nasi-uduk.jpg',
      'resep': '1. Beras\n2. Santan\n3. Daun salam\n4. Garam',
      'cara': '1. Masak santan bersama daun salam dan garam.\n2. Tambahkan beras, masak hingga matang.',
    },
    {
      'name': 'Sate Ayam',
      'image': 'assets/img/Sate-ayam.jpg',
      'resep': '1. Daging ayam\n2. Kecap manis\n3. Bawang merah\n4. Bumbu kacang',
      'cara': '1. Potong daging ayam.\n2. Lumuri dengan kecap dan bawang.\n3. Tusuk, bakar hingga matang.',
    },
    {
      'name': 'Rendang',
      'image': 'assets/img/rendang.jpg',
      'resep': '1. Daging sapi\n2. Santan\n3. Bumbu rendang\n4. Daun jeruk',
      'cara': '1. Masak santan dengan bumbu.\n2. Tambahkan daging, masak hingga kering.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kumpulan Makanan',
          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: makananList.length,
        itemBuilder: (context, index) {
          final makanan = makananList[index];
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                makanan['image']!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              makanan['name']!,
              style: GoogleFonts.merriweather(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    name: makanan['name']!,
                    image: makanan['image']!,
                    resep: makanan['resep']!,
                    cara: makanan['cara']!,
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
