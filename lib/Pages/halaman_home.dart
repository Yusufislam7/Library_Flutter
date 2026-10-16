import 'package:flutter/material.dart';
import 'halaman_menu.dart';

class HalamanHome extends StatelessWidget {
  const HalamanHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.local_library, size: 80, color: Colors.blue),
          const SizedBox(height: 10),
          const Text('Selamat Datang di Perpustakaan Yusuf', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HalamanMenu()),
              );
            },
            child: const Text('Buka Menu Perpustakaan'),
          ),
        ],
      ),
    );
  }
}