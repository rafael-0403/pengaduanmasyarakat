import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Profile section moved upwards
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue[800],
                  child: const Icon(Icons.person, size: 80, color: Colors.white),
                ),
                const SizedBox(height: 20),

                // Profile Card
                Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        _ProfileItem(icon: Icons.badge, label: 'NIK', value: '1234567890123456'),
                        Divider(),
                        _ProfileItem(icon: Icons.person, label: 'Nama', value: 'Rafael Praseli'),
                        Divider(),
                        _ProfileItem(icon: Icons.calendar_today, label: 'Umur', value: '20'),
                        Divider(),
                        _ProfileItem(icon: Icons.cake, label: 'Tanggal Lahir', value: '21 Maret 2004'),
                        Divider(),
                        _ProfileItem(icon: Icons.home, label: 'Alamat', value: 'Jl. Merdeka No.123, Jakarta'),
                      ],
                    ),
                  ),
                ),

                // New section for "Jumlah melapor" and "Jumlah laporan yang telah diatasi"
                const SizedBox(height: 20),
                Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        _ProfileItem(icon: Icons.report, label: 'Jumlah Melapor', value: '10'),
                        Divider(),
                        _ProfileItem(icon: Icons.check_circle, label: 'Jumlah Laporan Diatasi', value: '7'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _ProfileItem({required this.icon, required this.label, required this.value, super.key});

@override
Widget build(BuildContext context) {
  return Row(
    children: <Widget>[
      Icon(icon, color: Colors.blue[800]),
      const SizedBox(width: 10),
      Text(
        '$label:',
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      const SizedBox(width: 10),
      Expanded(
        child: Text(
          value,
          style: const TextStyle(color: Colors.black87),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
}