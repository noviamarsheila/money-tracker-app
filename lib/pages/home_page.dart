import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // agar tampilan bisa discroll jika melebihi view
    return SingleChildScrollView(
      // memastikan elemen tidak tertutup ui lain
      child: SafeArea(
        // mengatur widget secara vertikal
        child: Column(
          // memulai elemen dari arah kiri
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dashboard total income dan expense
            // menambahkan jarak disekitar widget
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                child: Row(
                  // mengatur jarak elemen secara horizontal
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // membuat elemen income sebelah kiri
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.download,
                            color: Colors.green,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Income",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 12,
                                )),
                            SizedBox(height: 3),
                            Text("Rp. 9.985.000",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 15,
                                ))
                          ],
                        )
                      ],
                    ),

                    // membuat elemen expense sebelah kanan
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.upload,
                            color: Colors.red,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Expense",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 12,
                                )),
                            SizedBox(height: 3),
                            Text("Rp. 15.000",
                                style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 15,
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
                // lebar widget akan mengisi seluruh ruang
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            // Text Transactions
            Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  "Transactions",
                  style: GoogleFonts.montserrat(
                      fontSize: 13, fontWeight: FontWeight.bold),
                )),

            // List Transaksi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                // memberikan efek bayangan pada widget
                elevation: 2,
                // Widget yang menyajikan item daftar dengan judul, subtitle, dan ikon.
                child: ListTile(
                  // menambahkan widget di sisi kanan (akhir)
                  trailing: Row(
                    // mengatur jarak widget secara horizontal sesuai kebutuhan
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete),
                      SizedBox(width: 10),
                      Icon(Icons.edit)
                    ],
                  ),
                  title: Text("Rp. 15.000"),
                  subtitle: Text("Beli obat"),
                  leading: Container(
                    child: Icon(
                      Icons.upload,
                      color: Colors.red,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 2,
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.delete),
                      SizedBox(width: 10),
                      Icon(Icons.edit)
                    ],
                  ),
                  title: Text("Rp. 10.000.000"),
                  subtitle: Text("Gaji bulanan"),
                  leading: Container(
                    child: Icon(
                      Icons.download,
                      color: Colors.green,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
