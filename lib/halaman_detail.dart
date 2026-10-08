import 'package:flutter/material.dart';

class HalamanDetail extends StatelessWidget {
  final String namaHalaman;
  
  const HalamanDetail({super.key, required this.namaHalaman});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaHalaman), // Judul AppBar sesuai menu yang diklik
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          "Ini adalah halaman $namaHalaman",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}