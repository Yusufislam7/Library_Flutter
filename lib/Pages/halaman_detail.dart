import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import 'halaman_profile.dart';

class HalamanDetail extends StatefulWidget {
  final String namaHalaman;
  const HalamanDetail({super.key, required this.namaHalaman});

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  int currentIndex = 2; // Default ke tab Detail

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.namaHalaman),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Ini adalah halaman ${widget.namaHalaman}",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: CustomNavbar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
          if (index == 0 || index == 1) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HalamanProfile()));
          }
        },
      ),
    );
  }
}