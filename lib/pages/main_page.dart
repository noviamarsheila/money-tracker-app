import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:money_tracker_app/pages/home_page.dart';
import 'package:money_tracker_app/pages/category_page.dart';

// widget memliki status yang dapat diubah
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // set state jika 0 tampil homepage, jika 1 tampil categorypage
  final List<Widget> _children = [HomePage(), CategoryPage()];
  int currentIndex = 0;

  // menentukan tombol mana yang aktif
  void onTapTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // menampilkan kalender pada halaman homepage saja
      appBar: (currentIndex == 0)
          ? CalendarAppBar(
              backButton: false,
              accent: Colors.pink,
              locale: 'id',
              onDateChanged: (value) => print(value),
              firstDate: DateTime.now().subtract(Duration(days: 140)),
              lastDate: DateTime.now(),
            )

          // tampil di halaman categorypage
          : PreferredSize(
              child: Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 36, horizontal: 16),
                  child: Text("Categories",
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                ),
              ),
              preferredSize: Size.fromHeight(100)),

      // menampilkan tombol mengambang
      floatingActionButton: Visibility(
        visible: (currentIndex == 0) ? true : false,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.pink,
          child: Icon(Icons.add),
        ),
      ),

      // menampilkan widget homepage
      body: _children[currentIndex],

      // menempatkan tombol mengambang ditengah bawah aplikasi
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Menampilkan bar navigasi bawah
      bottomNavigationBar: BottomAppBar(
          color: Colors.pink,
          shape: (currentIndex == 0) ? CircularNotchedRectangle() : null,
          // menampilkan icon secara horizontal
          child: Row(
            // mengatur jarak icon secara horizontal
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    onTapTapped(0);
                  },
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  )),
              // memberi jarak antar icon
              SizedBox(
                width: 20,
              ),
              IconButton(
                  onPressed: () {
                    onTapTapped(1);
                  },
                  icon: Icon(
                    Icons.list,
                    color: Colors.white,
                  )),
            ],
          )),
    );
  }
}
