import 'package:flutter/material.dart';

class ProfilDokter extends StatefulWidget {
  const ProfilDokter({Key? key}) : super(key: key);

  @override
  State<ProfilDokter> createState() => _ProfilDokterState();
}

class _ProfilDokterState extends State<ProfilDokter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(75.0),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'Profil Dokter',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: (MediaQuery.of(context).size.width - 100) /
                      2, // Center horizontally
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        width: 10.0,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100),
                        bottomRight: Radius.circular(100),
                        topRight: Radius.circular(100),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 125,
            // decoration: BoxDecoration(color: Colors.pink[50]),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dr Aa Tya',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Specialist',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5), // Jarak antara teks dan bintang
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 400,
            // decoration: BoxDecoration(color: Colors.red),
            padding: EdgeInsets.all(16.0), // Menambahkan padding ke Container
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profil Singkat',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4), // Memberikan jarak
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                //STR
                Text(
                  'Nomor STR',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4), // Memberikan jarak antara teks
                Text(
                  "3278567894672345",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // JAMKERJA
                Text(
                  'Jam Kerja',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0), // Memberikan jarak antara teks
                Text(
                  "3278567894672345",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 16), // Adjust horizontal padding
            child: Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 132),
                    child: Text(
                      "Konsultasi",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.black, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.black, // Atur warna latar belakang
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
