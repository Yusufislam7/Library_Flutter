import 'package:flutter/material.dart';
import 'halaman_home.dart'; // Import file home

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perpustakaan Kampus',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HalamanHome(), // Halaman awal yang dibuka
    );
  }
}