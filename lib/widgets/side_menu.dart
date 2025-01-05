import 'package:flutter/material.dart';
import 'package:projectuas_application_1/pages/makanan.dart';
import 'package:projectuas_application_1/pages/minuman_tradisional.dart';
import 'package:projectuas_application_1/pages/jajanan-tradisional.dart';

class SideMenu extends StatelessWidget {
  final Function(bool) toggleTheme;
  final bool isDarkMode;
  final Function(int) onItemTapped;

  const SideMenu({
    Key? key,
    required this.toggleTheme,
    required this.isDarkMode,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.red,
            ),
            child: const Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ExpansionTile(
            title: const Text('Kategori'),
            children: [
              ListTile(
                title: const Text('Makanan Nusantara'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MakananPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Minuman Nusantara'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MinumanTradisionalPage()));
                },
              ),
              ListTile(
                title: const Text('Jajanan Nusantara'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JajananTradisionalPage()));
                },
              ),
            ],
          ),
          ListTile(
            title: const Text('Favorit'),
            onTap: () {
              onItemTapped(1); // Pilih halaman 'Favorit'
              Navigator.pop(context); // Tutup menu samping
            },
          ),
          ListTile(
            title: const Text('Profil'),
            onTap: () {
              onItemTapped(2); // Pilih halaman 'Profil'
              Navigator.pop(context); // Tutup menu samping
            },
          ),
          const Divider(),
          ListTile(
            title: const Text('Kirim Masukan'),
            leading: Icon(Icons.send),
            onTap: () {
              _showFeedbackDialog(context); // Tampilkan dialog masukan
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(isDarkMode ? Icons.nights_stay : Icons.wb_sunny),
            title: Text(isDarkMode ? 'Mode Gelap' : 'Mode Terang'),
            onTap: () {
              toggleTheme(!isDarkMode); // Toggle mode
            },
          ),
        ],
      ),
    );
  }

  void _showFeedbackDialog(BuildContext context) {
    final TextEditingController feedbackController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Kirim Masukan'),
          content: TextField(
            controller: feedbackController,
            decoration: const InputDecoration(
              hintText: 'Tulis masukan Anda di sini...',
            ),
            maxLines: 3,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Tutup dialog
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                String feedback = feedbackController.text.trim();
                if (feedback.isNotEmpty) {
                  // Proses masukan di sini
                  Navigator.pop(context); // Tutup dialog
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Masukan Anda berhasil dikirim: $feedback'),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Masukan tidak boleh kosong!'),
                    ),
                  );
                }
              },
              child: const Text('Kirim'),
            ),
          ],
        );
      },
    );
  }
}
