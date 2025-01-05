import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart'; // Ganti dengan path ke file LoginPage

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn'); // Hapus status login
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Ambil warna dari tema saat ini
    final textColor = Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final dividerColor = Theme.of(context).dividerColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        backgroundColor: Colors.red.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/img/profile_picture.jpg'), // Ganti dengan path gambar Anda
            ),
            const SizedBox(height: 10),
            Text(
              'Thomas Shelby',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
            ),
            const SizedBox(height: 5),
            Text(
              'thomshelby@gmail.com',
              style: TextStyle(fontSize: 16, color: textColor.withOpacity(0.6)),
            ),
            const SizedBox(height: 20),
            Divider(thickness: 1, color: dividerColor),
            const SizedBox(height: 10),
            _buildMenuItem(
              icon: Icons.person,
              title: 'Edit Profil',
              onTap: () {
                // Aksi untuk Edit Profil
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Edit Profil Belum Tersedia')),
                );
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.lock,
              title: 'Ganti Kata Sandi',
              onTap: () {
                // Aksi untuk Ganti Kata Sandi
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Ganti Kata Sandi Belum Tersedia')),
                );
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.notifications,
              title: 'Notifikasi',
              onTap: () {
                // Aksi untuk Notifikasi
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Pengaturan Notifikasi Belum Tersedia')),
                );
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.language,
              title: 'Bahasa',
              onTap: () {
                // Aksi untuk Bahasa
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Pengaturan Bahasa Belum Tersedia')),
                );
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.settings,
              title: 'Pengaturan',
              onTap: () {
                // Aksi untuk Pengaturan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Pengaturan Belum Tersedia')),
                );
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.help_outline,
              title: 'Bantuan',
              onTap: () {
                // Aksi untuk Bantuan
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bantuan Belum Tersedia')),
                );
              },
              textColor: textColor,
            ),
            const SizedBox(height: 20),
            Divider(thickness: 1, color: dividerColor),
            const SizedBox(height: 10),
            _buildMenuItem(
              icon: Icons.logout,
              title: 'Keluar',
              onTap: () {
                _logout(context); // Logout pengguna
              },
              textColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    required Color textColor,
  }) {
    return ListTile(
      leading: Icon(icon, color: textColor),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, color: textColor),
      ),
      onTap: onTap,
      trailing: Icon(Icons.arrow_forward_ios, size: 16, color: textColor.withOpacity(0.6)),
    );
  }
}
