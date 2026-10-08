import 'package:flutter/material.dart';
import 'halaman_detail.dart'; // Import file detail tujuan navigasi

class HalamanMenu extends StatelessWidget {
  const HalamanMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ================= HEADER BIRU =================
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 25),
                decoration: const BoxDecoration(
                  color: Color(0xFF1976D2),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Halo, Muhammad Yusuf Islam!", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                            SizedBox(height: 4),
                            Text("Perpustakaan Kampus", style: TextStyle(color: Colors.white70, fontSize: 14)),
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white24,
                          radius: 22,
                          child: Icon(Icons.person, color: Colors.white, size: 28),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                            child: const TextField(
                              decoration: InputDecoration(
                                icon: Icon(Icons.search, color: Colors.grey),
                                hintText: "Cari buku, penulis, atau kategori...",
                                hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          child: const Icon(Icons.filter_list, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // ================= AREA MENU (3 BARIS) =================
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    
                    // ================= BARIS KE-1 =================
                    Row(
                      children: [
                        // Menu 1: Daftar Buku
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Daftar Buku")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.menu_book, color: Colors.blue, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Daftar Buku", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Lihat koleksi buku yang tersedia", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Menu 2: Tambah Buku
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Tambah Buku")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.green.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.add_box, color: Colors.green, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Tambah Buku", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Tambahkan data buku baru", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // ================= BARIS KE-2 =================
                    Row(
                      children: [
                        // Menu 3: Riwayat Peminjaman
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Riwayat Peminjaman")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.orange.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.history, color: Colors.orange, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Riwayat Peminjaman", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Lihat buku yang pernah dipinjam", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Menu 4: Kategori Buku
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Kategori Buku")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.purple.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.category, color: Colors.purple, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Kategori Buku", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Kelompok buku berdasarkan kategori", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // ================= BARIS KE-3 =================
                    Row(
                      children: [
                        // Menu 5: Buku Favorit
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Buku Favorit")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.red.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.favorite, color: Colors.red, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Buku Favorit", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Lihat buku yang disimpan", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Menu 6: Profil Saya
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const HalamanDetail(namaHalaman: "Profil Saya")));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(color: Colors.lightBlue.shade50, borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(Icons.account_box, color: Colors.lightBlue, size: 28),
                                      Icon(Icons.chevron_right, color: Colors.grey, size: 20),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  const Text("Profil Saya", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                  const SizedBox(height: 4),
                                  const Text("Lihat dan kelola informasi akun", style: TextStyle(fontSize: 11, color: Colors.black54)),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}