import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_page.dart';

class FavoritPage extends StatelessWidget {
  final List<Map<String, String>> favoritList;

  const FavoritPage({Key? key, required this.favoritList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorit Saya',
          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.redAccent,
      ),
      body: favoritList.isEmpty
          ? Center(
              child: Text(
                'Belum ada favorit!',
                style: GoogleFonts.merriweather(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            )
          : ListView.builder(
              itemCount: favoritList.length,
              itemBuilder: (context, index) {
                final makanan = favoritList[index];
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
