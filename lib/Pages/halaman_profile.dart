import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import 'halaman_home.dart';

class HalamanProfile extends StatefulWidget {
  const HalamanProfile({super.key});

  @override
  State<HalamanProfile> createState() => _HalamanProfileState();
}

class _HalamanProfileState extends State<HalamanProfile> {
  int currentIndex = 0; // Default tab Home

  // Daftar konten yang akan ditampilkan di dalam body
  final List<Widget> pages = [
    const HalamanHome(), // Konten Home (tanpa Scaffold)
    
    // Konten Tab Profile
    const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person, size: 80, color: Colors.blue),
          SizedBox(height: 10),
          Text('Selamat Datang Muhammad Yusuf Islam', style: TextStyle(fontSize: 18)),
        ],
      ),
    ),
    
    // Konten Tab Detail (Ganti HalamanDetail dengan Center biasa)
    const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.details, size: 80, color: Colors.blue),
          SizedBox(height: 10),
          Text('Ini Konten Halaman Detail', style: TextStyle(fontSize: 18)),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // HANYA SATU AppBar di sini
      appBar: AppBar(
        title: const Text('Perpustakaan Kampus'),
        backgroundColor: Colors.blue,
      ),
      body: pages[currentIndex],
      bottomNavigationBar: CustomNavbar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index; // Cukup ganti index, tidak perlu pushReplacement
          });
        },
      ),
    );
  }
}