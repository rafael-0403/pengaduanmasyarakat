import 'package:flutter/material.dart';

class InformasiPage extends StatelessWidget {
  const InformasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: const <Widget>[
              Text(
                'Informasi Lingkungan',
                style: TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              // Menambahkan SizedBox untuk spasi
              SizedBox(height: 20), // Atur tinggi sesuai kebutuhan
              _InformasiDropdown(
                title: 'Berita 1: Pencemaran Sungai di Jakarta Meningkat akibat Sampah',
                content:
                'Sungai-sungai di Jakarta, seperti Sungai Ciliwung dan Sungai Angke, terus mengalami pencemaran serius akibat akumulasi sampah. Masyarakat dan pihak berwenang melaporkan bahwa volume sampah, terutama plastik, semakin meningkat, menghambat aliran air dan berpotensi menimbulkan banjir. Pemerintah Jakarta telah meluncurkan berbagai program untuk mengatasi masalah ini, termasuk peningkatan kesadaran masyarakat tentang pengelolaan sampah dan program pembersihan sungai. Namun, tantangan tetap ada, termasuk kurangnya fasilitas pembuangan sampah yang memadai dan perilaku masyarakat yang masih membuang sampah sembarangan. Kegiatan bersih-bersih sungai juga diadakan secara berkala, melibatkan komunitas lokal dan organisasi lingkungan. Meskipun ada upaya untuk memperbaiki kondisi sungai, diperlukan kolaborasi yang lebih baik antara pemerintah, masyarakat, dan sektor swasta untuk mengurangi pencemaran dan menjaga ekosistem sungai tetap sehat.',
              ),
              _InformasiDropdown(
                title: 'Berita 2: Jakarta Menghadapi Masalah Polusi Udara yang Meningkat',
                content:
                'Jakarta kembali menghadapi masalah serius terkait polusi udara, yang kini mencapai tingkat kritis. Data dari berbagai stasiun pemantauan kualitas udara menunjukkan bahwa kadar partikel PM2.5 dan gas berbahaya, seperti karbon monoksida dan nitrogen dioksida, meningkat drastis, terutama pada jam sibuk. Penyebab utama polusi udara di Jakarta meliputi emisi kendaraan bermotor, industri, dan pembakaran sampah. Dalam beberapa minggu terakhir, warga Jakarta mengeluhkan dampak kesehatan akibat polusi, seperti sesak napas dan gangguan pernapasan. Pemerintah Jakarta telah berupaya menanggulangi masalah ini dengan mengimplementasikan kebijakan seperti pembatasan kendaraan bermotor, peningkatan transportasi publik, dan kampanye penghijauan. Namun, efek jangka panjang dari kebijakan ini masih perlu dipantau, dan masyarakat terus menyerukan tindakan yang lebih tegas untuk menangani polusi udara secara efektif. Keberhasilan dalam mengatasi masalah ini memerlukan partisipasi aktif dari semua lapisan masyarakat.',
              ),
              _InformasiDropdown(
                title: 'Berita 3: Hujan Deras Akibatkan Banjir di Beberapa Wilayah Jakarta',
                content:
                'Jakarta kembali dilanda banjir setelah hujan deras yang melanda kota dan sekitarnya selama beberapa hari. Banyak wilayah, terutama di daerah yang rendah dan dekat dengan sungai, terendam air dengan ketinggian yang bervariasi, mengakibatkan gangguan pada transportasi dan aktivitas sehari-hari warga. Banjir ini dipicu oleh kombinasi curah hujan yang tinggi, penyumbatan saluran drainase akibat sampah, dan penurunan permukaan tanah yang terus terjadi di beberapa area. Pihak berwenang telah mengeluarkan peringatan kepada warga untuk waspada dan mengambil langkah-langkah pencegahan, seperti evakuasi dari daerah rawan. Upaya penanggulangan banjir, termasuk pengerukan sungai dan perbaikan infrastruktur drainase, terus dilakukan, tetapi tantangan tetap ada. Masyarakat juga diajak berpartisipasi dalam menjaga kebersihan lingkungan untuk mencegah penumpukan sampah yang dapat memperburuk kondisi saat hujan. Banjir ini menyoroti perlunya solusi jangka panjang untuk mengatasi masalah banjir di Jakarta, termasuk perencanaan tata ruang yang lebih baik dan penanganan masalah lingkungan secara menyeluruh.',
              ),
              _InformasiDropdown(
                title: 'Berita 4: Revitalisasi Transportasi Umum untuk Mengurangi Kemacetan di Jakarta',
                content:
                  'Pemerintah Jakarta meluncurkan proyek revitalisasi transportasi umum untuk mengurangi kemacetan yang semakin parah. Proyek ini mencakup pengembangan sistem transportasi massal seperti MRT dan LRT, serta peningkatan layanan bus. Diharapkan, dengan meningkatkan aksesibilitas dan kenyamanan transportasi umum, masyarakat akan lebih memilih untuk menggunakan transportasi publik daripada kendaraan pribadi.',
              ),
              _InformasiDropdown(
                title: 'Berita 5: Upaya Peningkatan Keamanan di Jakarta Menuju Kota yang Lebih Aman',
                content:
                'Pemerintah Jakarta meningkatkan upaya untuk menjaga keamanan kota dengan menambah jumlah petugas keamanan di area publik dan meningkatkan teknologi pemantauan. Program keamanan ini bertujuan untuk menurunkan angka kejahatan dan memberikan rasa aman kepada masyarakat, terutama di tempat-tempat keramaian dan pusat perbelanjaan.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InformasiDropdown extends StatefulWidget {
  final String title;
  final String content;

  const _InformasiDropdown({required this.title, required this.content, super.key});

@override
State<_InformasiDropdown> createState() => __InformasiDropdownState();
}

class __InformasiDropdownState extends State<_InformasiDropdown> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(widget.title, style: const TextStyle(color: Colors.black)),
        trailing: Icon(
          _expanded ? Icons.expand_less : Icons.expand_more,
          color: Colors.blue[800],
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.content, style: const TextStyle(color: Colors.black)),
          ),
        ],
        onExpansionChanged: (bool expanded) {
          setState(() {
            _expanded = expanded;
          });
        },
      ),
    );
  }
}