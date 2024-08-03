import 'package:flutter/material.dart';
import 'package:money_tracker_app/pages/main_page.dart';

// Render root aplikasi
void main() {
  runApp(MyApp());
}

// widget memliki status yang tidak dapat diubah
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // halaman utama aplikasi
      home: MainPage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
