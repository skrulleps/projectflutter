import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_page.dart';
import 'favorit_page.dart';

class MakananPage extends StatefulWidget {
  @override
  _MakananPageState createState() => _MakananPageState();
}

class _MakananPageState extends State<MakananPage> {
  final List<Map<String, String>> makananList = [
   {
      "name": "Mie Aceh",
      "image": "assets/img/mie_aceh.jpeg",
      "resep": "200 gram mie telur\n200 gram daging sapi, potong tipis\n1 batang daun bawang, iris tipis\n1 butir telur\n2 sendok makan minyak untuk menumis\n2 sendok makan kecap manis\n1 sendok makan saus tiram\n1 sendok teh kaldu bubuk\n2 sendok makan bumbu halus (bawang merah, bawang putih, cabe merah, jahe, kemiri, kunyit)",
      "cara": "1. Rebus mie telur hingga matang, tiriskan.\n2. Panaskan minyak dalam wajan, tumis bumbu halus hingga harum.\n3. Tambahkan potongan daging sapi, aduk hingga matang.\n4. Masukkan mie yang sudah direbus, kecap manis, saus tiram, dan kaldu bubuk. Aduk rata.\n5. Buat lubang di tengah wajan, pecahkan telur dan orak-arik hingga matang.\n6. Tambahkan daun bawang dan aduk rata.\n7. Sajikan Mie Aceh panas dengan sambal dan kerupuk.",
      "kategori": "Aceh"
    },
    {
      "name": "Kuah Pliek U",
      "image": "assets/img/pliek-u.jpg",
      "resep": "500 gram ikan tuna atau ikan lain yang cocok\n1 buah tomat, potong-potong\n2 sendok makan minyak goreng\n1 sendok teh terasi\n1 sendok teh kemiri, sangrai\n3 lembar daun jeruk purut\n1 batang serai, memarkan\n2 sendok makan air asam jawa\n1 liter air\nGaram dan gula secukupnya\nDaun kemangi (opsional)",
      "cara": "1. Rebus ikan tuna hingga matang, kemudian ambil dagingnya dan sisihkan.\n2. Tumis terasi, kemiri, dan bumbu halus (bawang merah, bawang putih, cabai) hingga harum.\n3. Masukkan daun jeruk purut, serai, dan tomat. Aduk hingga layu.\n4. Tambahkan air dan air asam jawa, lalu biarkan mendidih.\n5. Masukkan ikan tuna, garam, dan gula secukupnya. Masak hingga bumbu meresap.\n6. Sajikan kuah pliek u dengan daun kemangi dan nasi putih.",
      "kategori": "Aceh"
    },
    {
      "name": "Ayam Tangkap",
      "image": "assets/img/ayamtangkap.jpeg",
      "resep": "1 ekor ayam, potong menjadi beberapa bagian\n2 sendok makan air asam jawa\n3 sendok makan minyak goreng\n1 sendok teh garam\n2 sendok teh merica\n5 lembar daun salam\n5 batang serai, memarkan\n5 lembar daun pandan\n1 sendok makan air perasan jeruk nipis",
      "cara": "1. Lumuri ayam dengan air asam jawa, jeruk nipis, garam, dan merica. Diamkan selama 30 menit.\n2. Panaskan minyak dalam wajan, tumis daun salam, serai, dan daun pandan hingga harum.\n3. Masukkan ayam, masak hingga ayam berubah warna dan matang sempurna.\n4. Sajikan ayam tangkap dengan nasi putih hangat.",
      "kategori": "Aceh"
    },
     {
    "name": "Rendang",
    "image": "assets/img/rendang.jpg",
    "resep": "1 kg daging sapi, potong dadu\n1 liter santan kental\n2 batang serai, memarkan\n5 lembar daun jeruk purut\n3 lembar daun kunyit\n1 sendok makan air asam jawa\nGaram secukupnya\n\nBumbu Halus:\n6 siung bawang merah\n4 siung bawang putih\n5 buah cabai merah\n1 ruas kunyit\n1 ruas jahe\n1 sendok teh ketumbar\n1 sendok teh jintan\n1 sendok makan lada hitam",
    "cara": "1. Rebus daging sapi dengan sedikit air hingga empuk.\n2. Tumis bumbu halus bersama serai, daun jeruk, dan daun kunyit hingga harum.\n3. Masukkan daging sapi rebus dan santan, aduk rata.\n4. Masak dengan api kecil hingga kuah menyusut dan daging empuk.\n5. Tambahkan air asam jawa dan garam, masak hingga rendang mengental dan berwarna coklat tua.\n6. Sajikan rendang dengan nasi hangat.",
    "kategori": "Sumatera Barat"
  },
  {
    "name": "Sate Padang",
    "image": "assets/img/sate_padang.jpg",
    "resep": "500 gram daging sapi, potong dadu\n10 tusuk sate\n2 sendok makan kecap manis\n2 sendok makan minyak goreng\n1 sendok teh garam\n1 sendok teh merica\n\nBumbu Kuah:\n2 sendok makan tepung beras\n500 ml kaldu daging\n5 siung bawang putih\n5 buah cabai merah\n1 sendok teh kunyit bubuk\n1 sendok teh ketumbar bubuk\n1 batang serai, memarkan\nGaram secukupnya",
    "cara": "1. Tusukkan potongan daging sapi ke tusuk sate, lumuri dengan kecap manis, garam, dan merica.\n2. Panggang sate hingga matang, sambil diolesi minyak.\n3. Untuk kuah, haluskan bawang putih dan cabai merah. Tumis hingga harum.\n4. Tambahkan kaldu daging, kunyit, ketumbar, serai, dan tepung beras. Masak hingga kuah mengental.\n5. Sajikan sate padang dengan kuah kental.",
    "kategori": "Sumatera Barat"
  },
  {
    "name": "Dendeng Balado",
    "image": "assets/img/dendeng_balado.jpg",
    "resep": "500 gram daging sapi, iris tipis\n2 sendok makan air asam jawa\n2 sendok makan minyak goreng\n\nBumbu Balado:\n5 buah cabai merah besar\n3 siung bawang merah\n2 siung bawang putih\n1 buah tomat\nGaram dan gula secukupnya",
    "cara": "1. Iris daging sapi tipis-tipis, kemudian rebus hingga empuk.\n2. Setelah itu, goreng daging hingga kering dan renyah.\n3. Untuk bumbu balado, haluskan cabai merah, bawang merah, bawang putih, dan tomat. Tumis hingga harum.\n4. Tambahkan air asam jawa, garam, dan gula. Aduk rata.\n5. Masukkan dendeng, aduk hingga bumbu meresap.\n6. Sajikan dendeng balado dengan nasi putih hangat.",
    "kategori": "Sumatera Barat"
  },
  {
    "name": "Seblak",
    "image": "assets/img/seblak.jpg",
    "resep": "200 gram kerupuk aci, rendam dalam air\n2 butir telur\n100 gram ayam fillet, potong kecil-kecil\n2 batang daun bawang, iris tipis\n1 sendok makan minyak untuk menumis\n2 sendok makan saus sambal\n2 sendok makan kecap manis\n1 sendok teh garam\n1 sendok teh gula pasir\nBumbu Halus:\n5 siung bawang merah\n3 siung bawang putih\n3 buah cabai merah\n1 ruas kencur\n1 sendok teh terasi",
    "cara": "1. Tumis bumbu halus dengan minyak hingga harum.\n2. Masukkan ayam fillet dan daun bawang, aduk hingga ayam matang.\n3. Tambahkan kerupuk yang sudah direndam, aduk rata.\n4. Masukkan telur, orak-arik hingga matang.\n5. Tambahkan saus sambal, kecap manis, garam, dan gula. Aduk rata.\n6. Sajikan seblak selagi hangat.",
    "kategori": "Jawa Barat"
  },
  {
    "name": "Nasi Timbel",
    "image": "assets/img/nasi_timbel.jpg",
    "resep": "300 gram nasi putih, matang\n1 ekor ayam, goreng atau bakar\n2 lembar daun pisang\n1 sendok teh garam\nSambal: 3 buah cabai merah\n3 siung bawang putih\n1 sendok teh terasi\n1 sendok makan minyak goreng\nGaram secukupnya",
    "cara": "1. Ambil daun pisang, letakkan nasi timbel dan bungkus rapat.\n2. Kukus nasi timbel dalam daun pisang selama 10-15 menit.\n3. Goreng ayam hingga matang atau bakar ayam sesuai selera.\n4. Untuk sambal, haluskan cabai merah, bawang putih, dan terasi. Tumis dengan minyak goreng hingga harum.\n5. Sajikan nasi timbel dengan ayam goreng/bakar dan sambal.",
    "kategori": "Jawa Barat"
  },
  {
    "name": "Batagor",
    "image": "assets/img/batagor.jpg",
    "resep": "200 gram ikan tenggiri, haluskan\n100 gram tepung tapioka\n2 sendok makan air es\n1 batang daun bawang, iris tipis\n1 sendok teh garam\n1 sendok teh merica\nMinyak untuk menggoreng\nBumbu Kacang:\n100 gram kacang tanah goreng\n3 siung bawang putih\n3 buah cabai merah\n1 sendok makan gula merah\n2 sendok makan kecap manis\nAir secukupnya",
    "cara": "1. Campurkan ikan tenggiri halus, tepung tapioka, daun bawang, garam, dan merica, aduk rata.\n2. Bentuk adonan menjadi bola atau persegi panjang, kemudian kukus hingga matang.\n3. Goreng batagor hingga kecoklatan.\n4. Untuk bumbu kacang, haluskan kacang tanah, bawang putih, cabai merah, dan gula merah. Tambahkan kecap manis dan air, aduk rata.\n5. Sajikan batagor dengan bumbu kacang.",
    "kategori": "Jawa Barat"
  },
  {
    "name": "Kerak Telor",
    "image": "assets/img/kerak_telor.jpg",
    "resep": "100 gram beras ketan, rendam semalaman\n2 butir telur ayam\n1 sendok makan kelapa parut kasar\n2 sendok makan bawang goreng\n1 sendok makan minyak goreng\nGaram secukupnya\nBumbu Halus:\n3 siung bawang merah\n2 siung bawang putih\n1 sendok teh ketumbar\n1 sendok teh merica",
    "cara": "1. Kukus beras ketan hingga matang.\n2. Panaskan minyak di atas wajan, tumis bumbu halus hingga harum.\n3. Masukkan beras ketan, telur, kelapa parut, dan bawang goreng. Aduk rata.\n4. Masak dengan api kecil hingga bagian bawahnya berkerak.\n5. Sajikan kerak telor dengan taburan bawang goreng.",
    "kategori": "DKI Jakarta"
  },
  {
    "name": "Soto Betawi",
    "image": "assets/img/soto betawi.jpg",
    "resep": "500 gram daging sapi, potong dadu\n2 batang serai, memarkan\n5 lembar daun jeruk purut\n1 liter santan\n2 sendok makan minyak goreng\n1 sendok teh garam\n1 sendok teh merica\nBumbu Halus:\n6 siung bawang merah\n4 siung bawang putih\n3 buah cabai merah\n1 ruas kunyit\n1 ruas jahe\n1 sendok teh ketumbar",
    "cara": "1. Rebus daging sapi dengan serai, daun jeruk, dan sedikit air hingga empuk.\n2. Tumis bumbu halus dengan minyak hingga harum.\n3. Masukkan bumbu tumis ke dalam kaldu daging sapi.\n4. Tambahkan santan, garam, dan merica. Masak dengan api kecil hingga mendidih.\n5. Sajikan soto betawi dengan taburan bawang goreng, irisan daun bawang, dan nasi putih.",
    "kategori": "DKI Jakarta"
  },
  {
    "name": "Asinan Betawi",
    "image": "assets/img/asinan_betawi.jpg",
    "resep": "200 gram kol, iris tipis\n100 gram wortel, serut\n100 gram mentimun, iris tipis\n100 gram tahu, potong dadu\n100 gram tempe, potong dadu\n2 sendok makan kacang tanah goreng\n2 sendok makan cuka\n1 sendok makan gula merah\n1 sendok teh garam\nBumbu Halus:\n5 siung bawang putih\n5 buah cabai merah\n1 sendok makan terasi",
    "cara": "1. Campurkan kol, wortel, mentimun, tahu, dan tempe dalam mangkuk.\n2. Haluskan bumbu halus, lalu tumis hingga harum.\n3. Campurkan bumbu tumis dengan cuka, gula merah, garam, dan kacang tanah goreng.\n4. Siram bumbu ke dalam sayuran dan aduk rata.\n5. Sajikan asinan betawi sebagai lalapan atau camilan.",
    "kategori": "DKI Jakarta"
  },
  {
    "name": "Nasi Liwet Solo",
    "image": "assets/img/nasi_liwet_solo.jpg",
    "resep": "300 gram beras\n500 ml air kaldu ayam\n1 batang serai, memarkan\n3 lembar daun salam\n2 lembar daun jeruk purut\n2 sendok makan minyak goreng\nGaram secukupnya\nBumbu Halus:\n5 siung bawang merah\n3 siung bawang putih\n1 sendok teh ketumbar\n1 ruas kunyit\n1 sendok teh merica",
    "cara": "1. Cuci beras hingga bersih.\n2. Tumis bumbu halus dengan minyak hingga harum.\n3. Tambahkan serai, daun salam, dan daun jeruk. Aduk rata.\n4. Masukkan beras yang sudah dicuci, tambahkan air kaldu ayam dan garam. Aduk rata.\n5. Masak dengan api kecil hingga nasi matang dan bumbu meresap.\n6. Sajikan nasi liwet Solo dengan ayam goreng atau opor ayam.",
    "kategori": "Jawa Tengah"
  },
   {
    "name": "Rawon",
    "image": "assets/img/rawon.jpg",
    "resep": "500 gram daging sapi, potong dadu\n1 liter kaldu sapi\n2 batang serai, memarkan\n4 lembar daun jeruk purut\n1 sendok teh kluwek, haluskan\nGaram secukupnya\nBumbu Halus:\n5 siung bawang merah\n4 siung bawang putih\n3 buah cabai merah\n1 ruas kunyit\n1 ruas jahe\n1 sendok teh ketumbar",
    "cara": "1. Rebus daging sapi dengan kaldu sapi hingga empuk.\n2. Tumis bumbu halus bersama serai, daun jeruk, dan kluwek hingga harum.\n3. Masukkan bumbu tumis ke dalam kaldu daging sapi.\n4. Tambahkan garam dan biarkan mendidih hingga kuah berwarna gelap.\n5. Sajikan rawon dengan nasi putih dan sambal terasi.",
    "kategori": "Jawa Timur"
  },
  {
    "name": "Rujak Cingur",
    "image": "assets/img/rujak_cingur.jpg",
    "resep": "200 gram cingur sapi, rebus dan potong-potong\n100 gram timun, iris tipis\n100 gram wortel, serut\n100 gram mangga muda, serut\n50 gram tahu, goreng dan potong dadu\n50 gram tempe, goreng dan potong dadu\nBumbu Rujak:\n5 buah cabai merah\n3 siung bawang putih\n1 sendok teh terasi\n1 sendok makan gula merah\n2 sendok makan air asam jawa\n1 sendok makan kecap manis\nGaram secukupnya",
    "cara": "1. Campurkan semua bahan sayuran dan cingur sapi dalam mangkuk.\n2. Haluskan bumbu rujak, kemudian campurkan dengan air asam jawa, kecap manis, dan garam.\n3. Siram bumbu rujak ke atas sayuran dan cingur, aduk rata.\n4. Sajikan rujak cingur dengan nasi ketan atau lontong.",
    "kategori": "Jawa Timur"
  },
  {
    "name": "Ayam Betutu",
    "image": "assets/img/ayam_betutu.jpg",
    "resep": "1 ekor ayam, potong menjadi beberapa bagian\n3 sendok makan minyak goreng\n2 batang serai, memarkan\n5 lembar daun jeruk purut\n2 sendok makan air asam jawa\n1 sendok makan kecap manis\n1 sendok teh ketumbar\n1 sendok teh merica\nBumbu Halus:\n8 siung bawang merah\n6 siung bawang putih\n5 buah cabai merah\n2 ruas kunyit\n1 ruas jahe\n1 sendok makan gula merah",
    "cara": "1. Lumuri ayam dengan air asam jawa dan kecap manis.\n2. Tumis bumbu halus bersama serai dan daun jeruk hingga harum.\n3. Masukkan ayam dan bumbu halus, tambahkan sedikit air. Masak dengan api kecil hingga ayam empuk dan bumbu meresap.\n4. Sajikan ayam betutu dengan nasi putih hangat.",
    "kategori": "Bali"
  },
  {
    "name": "Sate Lilit",
    "image": "assets/img/sate_lilit.jpg",
    "resep": "500 gram daging ayam cincang\n100 gram kelapa parut kasar\n2 batang serai, iris tipis\n5 lembar daun jeruk purut, iris tipis\n2 sendok makan kecap manis\n1 sendok teh garam\n1 sendok teh merica\nBumbu Halus:\n6 siung bawang merah\n4 siung bawang putih\n4 buah cabai merah",
    "cara": "1. Campurkan daging ayam cincang, kelapa parut, serai, daun jeruk, kecap manis, garam, dan merica.\n2. Ambil sejumput campuran daging, lilitkan pada tusukan sate.\n3. Panggang sate lilit di atas bara api hingga matang dan kecokelatan.\n4. Sajikan sate lilit dengan sambal matah atau sambal kecap.",
    "kategori": "Bali"
  },
  {
    "name": "Lawar",
    "image": "assets/img/lawar.jpg",
    "resep": "500 gram daging ayam cincang\n200 gram kelapa parut kasar\n5 lembar daun jeruk purut, iris tipis\n2 batang serai, iris tipis\n3 sendok makan air asam jawa\nGaram secukupnya\nBumbu Halus:\n6 siung bawang merah\n4 siung bawang putih\n5 buah cabai merah\n1 sendok teh ketumbar",
    "cara": "1. Tumis bumbu halus dengan sedikit minyak hingga harum.\n2. Masukkan daging ayam cincang, aduk rata dan masak hingga matang.\n3. Tambahkan kelapa parut, daun jeruk, serai, dan air asam jawa.\n4. Aduk rata dan beri garam secukupnya.\n5. Sajikan lawar dengan nasi putih hangat.",
    "kategori": "Bali"
  },
  {
    "name": "Soto Banjar",
    "image": "assets/img/soto_banjar.jpg",
    "resep": "500 gram daging ayam, potong-potong\n1 liter kaldu ayam\n2 batang serai, memarkan\n5 lembar daun jeruk purut\n2 sendok makan kecap manis\n1 sendok teh merica\nGaram secukupnya\nBumbu Halus:\n5 siung bawang merah\n3 siung bawang putih\n1 sendok teh ketumbar\n1 ruas kunyit\n1 ruas jahe",
    "cara": "1. Rebus ayam dengan kaldu hingga empuk.\n2. Tumis bumbu halus bersama serai dan daun jeruk hingga harum.\n3. Masukkan bumbu tumis ke dalam kaldu ayam, masak hingga mendidih.\n4. Tambahkan kecap manis, merica, dan garam. Masak hingga kuah matang.\n5. Sajikan soto banjar dengan nasi putih dan telur rebus.",
    "kategori": "Kalimantan Selatan"
  },
  {
    "name": "Coto Makassar",
    "image": "assets/img/coto_makassar.jpg",
    "resep": "500 gram daging sapi, potong dadu\n1 liter kaldu sapi\n2 batang serai, memarkan\n5 lembar daun jeruk purut\nGaram secukupnya\nBumbu Halus:\n6 siung bawang merah\n4 siung bawang putih\n1 sendok teh ketumbar\n1 ruas kunyit\n1 sendok teh merica\n1 sendok makan gula merah",
    "cara": "1. Rebus daging sapi dengan kaldu hingga empuk.\n2. Tumis bumbu halus bersama serai dan daun jeruk hingga harum.\n3. Masukkan bumbu tumis ke dalam kaldu sapi, masak hingga mendidih.\n4. Tambahkan garam dan gula merah. Masak hingga kuah terasa gurih.\n5. Sajikan coto makassar dengan nasi putih dan ketupat.",
    "kategori": "Sulawesi Selatan"
  },
  {
    "name": "Sop Konro",
    "image": "assets/img/sop konro.jpg",
    "resep": "500 gram iga sapi, potong-potong\n1 liter kaldu sapi\n2 batang serai, memarkan\n5 lembar daun jeruk purut\nGaram secukupnya\nBumbu Halus:\n6 siung bawang merah\n4 siung bawang putih\n1 sendok teh ketumbar\n1 ruas kunyit\n1 sendok teh merica\n1 sendok makan gula merah",
    "cara": "1. Rebus iga sapi dengan kaldu hingga empuk.\n2. Tumis bumbu halus bersama serai dan daun jeruk hingga harum.\n3. Masukkan bumbu tumis ke dalam kaldu iga sapi, masak hingga mendidih.\n4. Tambahkan garam dan gula merah. Masak hingga kuahnya menyatu.\n5. Sajikan sop konro dengan nasi putih.",
    "kategori": "Sulawesi Selatan"
  },
  {
    "name": "Papeda",
    "image": "assets/img/papeda.jpg",
    "resep": "200 gram sagu tani\n500 ml air kaldu ikan\nGaram secukupnya",
    "cara": "1. Rebus air kaldu ikan dengan garam hingga mendidih.\n2. Masukkan sagu sedikit-sedikit sambil terus diaduk hingga kental.\n3. Sajikan papeda dengan ikan kuah kuning atau ikan bakar.",
    "kategori": "Maluku"
  },
  {
    "name": "Ikan Kuah Kuning",
    "image": "assets/img/ikan_kuah_kuning.jpg",
    "resep": "500 gram ikan, potong-potong\n1 liter air\n1 batang serai, memarkan\n5 lembar daun jeruk purut\n2 sendok makan air asam jawa\nGaram secukupnya\nBumbu Halus:\n5 siung bawang merah\n4 siung bawang putih\n3 buah cabai merah\n1 ruas kunyit\n1 sendok teh ketumbar",
    "cara": "1. Rebus ikan dengan air hingga empuk.\n2. Tumis bumbu halus bersama serai dan daun jeruk hingga harum.\n3. Masukkan bumbu tumis ke dalam rebusan ikan, tambahkan air asam jawa dan garam.\n4. Masak hingga kuah mengental.\n5. Sajikan ikan kuah kuning dengan nasi putih.",
    "kategori": "Maluku"
  },


  ];

  final List<Map<String, String>> favoritList = [];
  String selectedKategori = 'Semua'; // Default filter: Semua kategori

  void toggleFavorit(Map<String, String> makanan) {
    setState(() {
      if (favoritList.contains(makanan)) {
        favoritList.remove(makanan);
      } else {
        favoritList.add(makanan);
      }
    });
  }

  void showFilterDialog() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: [
            ListTile(
              title: const Text('Semua'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Semua';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Maluku'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Maluku';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Aceh'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Aceh';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Jawa Barat'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Jawa Barat';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sumatera Barat'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Sumatera Barat';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('DKI Jakarta'),
              onTap: () {
                setState(() {
                  selectedKategori = 'DKI Jakarta';
                });
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: const Text('Jawa Tengah'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Jawa Tengah';
                });
                Navigator.pop(context);
              },
            ), 
             ListTile(
              title: const Text('Jawa Timur'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Jawa Timur';
                });
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: const Text('Bali'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Bali';
                });
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: const Text('Kalimantan Selatan'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Kalimantan Selatan';
                });
                Navigator.pop(context);
              },
            ),
             ListTile(
              title: const Text('Sulawesi Selatan'),
              onTap: () {
                setState(() {
                  selectedKategori = 'Sulawesi Selatan';
                });
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final filteredList = selectedKategori == 'Semua'
        ? makananList
        : makananList.where((makanan) {
            return makanan['kategori'] == selectedKategori;
          }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kumpulan Makanan',
          style: GoogleFonts.merriweather(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: showFilterDialog,
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritPage(favoritList: favoritList),
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredList.length,
        itemBuilder: (context, index) {
          final makanan = filteredList[index];
          final isFavorit = favoritList.contains(makanan);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(8.0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    makanan['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  makanan['name']!,
                  style: GoogleFonts.merriweather(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    isFavorit ? Icons.favorite : Icons.favorite_border,
                    color: isFavorit ? Colors.red : Colors.grey,
                  ),
                  onPressed: () => toggleFavorit(makanan),
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
              ),
            ),
          );
        },
      ),
    );
  }
}
