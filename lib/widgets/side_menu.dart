import 'package:flutter/material.dart';
import 'package:projectuas_application_1/pages/makanan.dart';

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
                title: const Text('Makanan Tradisional'),
                onTap: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MakananPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Makanan Modern'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Minuman'),
                onTap: () {},
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
            onTap: () {},
            leading: Icon(Icons.send),
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
}
