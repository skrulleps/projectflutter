import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'makanan.dart'; // Pastikan Anda mengimpor halaman makanan.dart

class KategoriPage extends StatelessWidget {
  const KategoriPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/img/nasi-uduk.jpg',
      'assets/img/Sate-ayam.jpg',
      'assets/img/rendang.jpg',
    ];

    final List<String> captions = [
      'Nasi Uduk',
      'Sate Ayam',
      'Rendang',
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Kategori Resep',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            CarouselSlider.builder(
              itemCount: imagePaths.length,
              itemBuilder: (context, index, realIndex) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 350,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset(
                          imagePaths[index],
                          fit: BoxFit.cover,
                          width: 350,
                          height: 150,
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      captions[index],
                      style: GoogleFonts.merriweather(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                );
              },
              options: CarouselOptions(
                height: 220, // Tambahkan ruang agar carousel tidak melebihi batas
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4, // Ubah menjadi 4 kolom
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                padding: const EdgeInsets.all(10.0),
                children: [
                  _buildMenuCard(context, 'Makanan Tradisional', Icons.restaurant),
                  _buildMenuCard(context, 'Jajanan Tradisional', Icons.icecream),
                  _buildMenuCard(context, 'Minuman Tradisional', Icons.local_drink),
                  _buildMenuCard(context, 'Resep Favorit', Icons.favorite),
                  _buildMenuCard(context, 'Menu Baru 1', Icons.coffee),
                  _buildMenuCard(context, 'Menu Baru 2', Icons.cake),
                  _buildMenuCard(context, 'Menu Baru 3', Icons.local_pizza),
                  _buildMenuCard(context, 'Menu Baru 4', Icons.fastfood),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(BuildContext context, String title, IconData icon) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: InkWell(
        onTap: () {
          // Navigasi untuk "Makanan Tradisional"
          if (title == 'Makanan Tradisional') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MakananPage()), // Pastikan MakananPage adalah class di makanan.dart
            );
          }
          // Tambahkan aksi lain untuk menu lainnya jika diperlukan
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.orange),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
