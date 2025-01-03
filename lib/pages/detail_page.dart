import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  final String name;
  final String image;
  final String resep;
  final String cara;

  const DetailPage({
    Key? key,
    required this.name,
    required this.image,
    required this.resep,
    required this.cara,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Resep:',
              style: GoogleFonts.merriweather(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              resep,
              style: GoogleFonts.merriweather(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Text(
              'Cara Membuat:',
              style: GoogleFonts.merriweather(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              cara,
              style: GoogleFonts.merriweather(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
