import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Welcome to PengMas', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
              const Text(
                'Jumlah Laporan',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              const SizedBox(height: 10),
              _buildLaporanCard('Laporan Masuk', Icons.mark_email_unread, '25'),
              _buildLaporanCard('Laporan Sedang Ditangani', Icons.build_circle, '10'),
              _buildLaporanCard('Laporan Sudah Ditangani', Icons.done_all, '15'),
              const SizedBox(height: 20),
              const Text(
                'Jika anda ingin menyampaikan aduan atau pendapat, silahkan untuk klik tombol isi pengaduan masyarakat dibawah ini.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi untuk mengisi pengaduan masyarakat
                  },
                  child: const Text('Isi Pengaduan Masyarakat'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[800],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    textStyle: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLaporanCard(String title, IconData icon, String jumlah) {
    return Card(
      elevation: 3,
      color: Colors.white.withOpacity(0.8), // Membuat warna latar belakang kartu semi transparan
      child: ListTile(
        leading: Icon(icon, color: Colors.blue[800]),
        title: Text(title, style: const TextStyle(color: Colors.black87)),
        trailing: Text(
          jumlah,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
      ),
    );
  }
}
