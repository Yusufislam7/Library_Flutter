import 'package:flutter/material.dart';
import 'halaman_menu.dart'; // Import file menu

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Berpindah ke HalamanMenu
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HalamanMenu()),
            );
          },
          child: const Text('Buka Menu Perpustakaan'),
        ),
      ),
    );
  }
}