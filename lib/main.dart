import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/kategori_page.dart';
import 'pages/favorit_page.dart';
import 'pages/profil_page.dart';
import 'widgets/side_menu.dart';

void main() {
  runApp(const ResepMasakanApp());
}

class ResepMasakanApp extends StatefulWidget {
  const ResepMasakanApp({super.key});

  @override
  State<ResepMasakanApp> createState() => _ResepMasakanAppState();
}

class _ResepMasakanAppState extends State<ResepMasakanApp> {
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme(bool isDarkMode) {
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

  bool get isDarkMode => _themeMode == ThemeMode.dark;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resep Masakan',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.light,
        textTheme: GoogleFonts.robotoTextTheme(ThemeData.light().textTheme),
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
        textTheme: GoogleFonts.robotoTextTheme(ThemeData.dark().textTheme),
      ),
      themeMode: _themeMode,
      home: HomePage(
        toggleTheme: _toggleTheme,
        isDarkMode: isDarkMode,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final Function(bool) toggleTheme;
  final bool isDarkMode;

  const HomePage({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Map<String, String>> _favoritList = [];
  final List<Widget> _pages = [];

  @override
  void initState() {
    super.initState();
    _pages.addAll([
      const KategoriPage(),
      FavoritPage(favoritList: _favoritList),
      const ProfilPage(),
    ]);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Resep Masakan',
          style: GoogleFonts.roboto(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.red.shade900,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Notifikasi'),
                  content: const Text('Tidak ada notifikasi baru.'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.notifications),
            color: Colors.white,
          ),
        ],
      ),
      drawer: SideMenu(
        toggleTheme: widget.toggleTheme,
        isDarkMode: widget.isDarkMode,
        onItemTapped: _onItemTapped,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Kategori',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
        onTap: _onItemTapped,
      ),
    );
  }
}
