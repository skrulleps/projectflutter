import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_page.dart'; // Ganti dengan path ke file LoginPage

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  String username = 'Thomas Shelby';
  String email = 'thomshelby@gmail.com';
  bool notificationsEnabled = true;
  String selectedLanguage = 'Indonesia';

  Future<void> _logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn'); // Hapus status login
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  Future<void> _editProfile() async {
    TextEditingController usernameController = TextEditingController(text: username);
    TextEditingController emailController = TextEditingController(text: email);

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Profil'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Nama Pengguna'),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // Tutup dialog
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                username = usernameController.text;
                email = emailController.text;
              });
              Navigator.pop(context); // Tutup dialog
            },
            child: const Text('Simpan'),
          ),
        ],
      ),
    );
  }

  Future<void> _changePassword() async {
    TextEditingController passwordController = TextEditingController();

    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Ganti Kata Sandi'),
        content: TextField(
          controller: passwordController,
          decoration: const InputDecoration(labelText: 'Kata Sandi Baru'),
          obscureText: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), // Tutup dialog
            child: const Text('Batal'),
          ),
          ElevatedButton(
            onPressed: () {
              // Implementasi ganti kata sandi
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Kata sandi berhasil diubah')),
              );
            },
            child: const Text('Simpan'),
          ),
        ],
      ),
    );
  }

  Future<void> _changeLanguage() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Pilih Bahasa'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RadioListTile<String>(
              title: const Text('Indonesia'),
              value: 'Indonesia',
              groupValue: selectedLanguage,
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value!;
                });
                Navigator.pop(context);
              },
            ),
            RadioListTile<String>(
              title: const Text('English'),
              value: 'English',
              groupValue: selectedLanguage,
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value!;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _toggleNotifications(bool value) async {
    setState(() {
      notificationsEnabled = value;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(notificationsEnabled ? 'Notifikasi diaktifkan' : 'Notifikasi dinonaktifkan')),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Ambil warna dari tema saat ini
    final textColor = Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    final dividerColor = Theme.of(context).dividerColor;

    return Scaffold(
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
              username,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: textColor),
            ),
            const SizedBox(height: 5),
            Text(
              email,
              style: TextStyle(fontSize: 16, color: textColor.withOpacity(0.6)),
            ),
            const SizedBox(height: 20),
            Divider(thickness: 1, color: dividerColor),
            const SizedBox(height: 10),
            _buildMenuItem(
              icon: Icons.person,
              title: 'Edit Profil',
              onTap: _editProfile,
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.lock,
              title: 'Ganti Kata Sandi',
              onTap: _changePassword,
              textColor: textColor,
            ),
            _buildMenuItem(
              icon: Icons.notifications,
              title: 'Notifikasi',
              onTap: () {
                _toggleNotifications(!notificationsEnabled);
              },
              textColor: textColor,
              trailing: Switch(
                value: notificationsEnabled,
                onChanged: (value) {
                  _toggleNotifications(value);
                },
              ),
            ),
            _buildMenuItem(
              icon: Icons.language,
              title: 'Bahasa',
              onTap: _changeLanguage,
              textColor: textColor,
            ),
            const SizedBox(height: 20),
            Divider(thickness: 1, color: dividerColor),
            const SizedBox(height: 10),
            _buildMenuItem(
              icon: Icons.logout,
              title: 'Keluar',
              onTap: () {
                _logout(context);
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
    Widget? trailing,
  }) {
    return ListTile(
      leading: Icon(icon, color: textColor),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, color: textColor),
      ),
      onTap: onTap,
      trailing: trailing ?? Icon(Icons.arrow_forward_ios, size: 16, color: textColor.withOpacity(0.6)),
    );
  }
}
