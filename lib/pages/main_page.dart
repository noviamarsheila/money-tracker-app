import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker_app/pages/home_page.dart';

// widget memliki status yang dapat diubah
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // menempilkan kalender
      appBar: CalendarAppBar(
        backButton: false,
        accent: Colors.pink,
        locale: 'id',
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ),

      // menampilkan tombol mengambang
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: Icon(Icons.add),
      ),

      // menampilkan widget homepage
      body: HomePage(),

      // menempatkan tombol mengambang ditengah bawah aplikasi
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Menampilkan bar navigasi bawah
      bottomNavigationBar: BottomAppBar(
          // menampilkan icon secara horizontal
          child: Row(
        // mengatur jarak icon secara horizontal
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.home)),
          // memberi jarak antar icon
          SizedBox(
            width: 20,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.list)),
        ],
      )),
    );
  }
}
