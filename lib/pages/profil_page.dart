import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

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
                // Tambahkan aksi untuk menu ini
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.lock,
              title: 'Ganti Kata Sandi',
              onTap: () {
                // Tambahkan aksi untuk menu ini
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.notifications,
              title: 'Notifikasi',
              onTap: () {
                // Tambahkan aksi untuk menu ini
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.language,
              title: 'Bahasa',
              onTap: () {
                // Tambahkan aksi untuk menu ini
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.settings,
              title: 'Pengaturan',
              onTap: () {
                // Tambahkan aksi untuk menu ini
              },
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.help_outline,
              title: 'Bantuan',
              onTap: () {
                // Tambahkan aksi untuk menu ini
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
                // Tambahkan aksi untuk keluar
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
