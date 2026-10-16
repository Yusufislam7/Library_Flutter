import 'package:flutter/material.dart';
import 'Pages/halaman_profile.dart'; // PERHATIKAN: P besar sesuai nama folder

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
      home: const HalamanProfile(), 
    );
  }
}