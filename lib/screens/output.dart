import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            FotoPenyakit(),
            MyScrollableWidget(),
          ],
        ),
      ),
    );
  }
}

class FotoPenyakit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Positioned(
      child: Image.asset(
        'assets/penyakit/tangan.png',
        fit: BoxFit.cover,
      ),
    ));
  }
}

class MyScrollableWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 356),
      child: Align(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 532.89,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Teks pertama (tebal)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'KUDIS MOTIF ULAR KOBRA MERAH AUSTRALIA UJUNG TIMUR',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                // Teks kedua (lebih kecil)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    'Penyakit ini terjadi karena Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                    height: 16), // Adjust the spacing between text and buttons

                // Buttons
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16), // Adjust horizontal padding
                  child: Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {
                          // Handle the left button tap
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8), // Adjust vertical padding
                          child: Text(
                            "Ulangi",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      SizedBox(width: 16), // Adjust the spacing between buttons
                      OutlinedButton(
                        onPressed: () {
                          // Handle the right button tap
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: 55), // Adjust vertical padding
                          child: Text(
                            "Cek Rekam Medis",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16), // Adjust horizontal padding
                  child: Row(
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 8, horizontal: 140),
                          child: Text(
                            "Selesai",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: Colors.black, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          backgroundColor:
                              Colors.black, // Atur warna latar belakang
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
