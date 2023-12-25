import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 218, 208, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 55, bottom: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Selamat Pagi",
                      style: TextStyle(fontSize: 13),
                    ),
                    // Ikon profil
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/screens/Profile');
                        },
                        child: Icon(
                          Icons.account_circle,
                          size: 45,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Abangkuu",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 560,
              height: 880,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  // Gambar
                  Positioned(
                    top: 20,
                    left: (406 - 351.111083984375) / 2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'lib/img/screen.png',
                        fit: BoxFit.cover,
                        width: 345.111083984375,
                        height: 239,
                      ),
                    ),
                  ),

                  // Efek gradasi di atas gambar
                  Positioned(
                    top: 20,
                    left: (406 - 351.111083984375) / 2,
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: 345.111083984375,
                          height: 239,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color(0xff484848),
                                Color(0x008b8b8b),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Teks di atas gambar
                  Positioned(
                    top: 50,
                    left: 50,
                    right: 50,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Periksa kulit Anda",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "dengan sekali Pindai",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Teks "Rekomendasi Dokter Ahli"
                  Positioned(
                    top: 280,
                    left: 35,
                    child: Text(
                      "Rekomendasi Dokter Ahli",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),

                  // Baris "Lihat Semua"
                  Positioned(
                    top: 269,
                    right: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        // Tambahono logika
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text(
                        "Lihat Semua",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  // Tombol Pindai sekarang
                  Positioned(
                    top: 200,
                    left: 20,
                    right: 20,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/screens/Pemindai');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 17, 17, 17),
                          padding: EdgeInsets.symmetric(horizontal: 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Pindai Sekarang  📷",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Row "Tutorial"
                  Positioned(
                    top: 40,
                    right: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            "Tutorial  ▶",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(width: 8),
                        Column(
                          children: [
                            Image.asset(
                              "lib/img/player-play.png",
                              width: 6.5,
                              height: 8,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Bagian informasi dokter 1
                  Positioned(
                    top: 335,
                    left: 20,
                    child: DoctorInfoContainer(
                      name: "Dr. Dina Doni OS.",
                      specialization: "Dermatopatologi",
                      rating: 4.5,
                      imagePath: "lib/img/yuli.png",
                    ),
                  ),

                  // Bagian informasi dokter 2
                  Positioned(
                    top: 689,
                    left: 19,
                    child: DoctorInfoContainer(
                      name: "Dr. Another Doctor",
                      specialization: "Specialization 2",
                      rating: 4.8,
                      imagePath: "lib/img/rian.png",
                    ),
                  ),

                  // Bagian informasi dokter 3
                  Positioned(
                    top: 510,
                    left: 18,
                    child: DoctorInfoContainer(
                      name: "Dr. Third Doctor",
                      specialization: "Specialization 3",
                      rating: 4.2,
                      imagePath: "lib/img/mariadi.jpeg",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      //navigasi
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/screens/HomeScreen');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "lib/img/home.png",
                          width: 18,
                          height: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/screens/Pemindai');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "lib/img/photo-sensor-2.png",
                          width: 18,
                          height: 14,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Pemindai",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/screens/Profile');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "lib/img/profile.png",
                          width: 12,
                          height: 18,
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Profil",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorInfoContainer extends StatelessWidget {
  final String name;
  final String specialization;
  final double rating;
  final String imagePath;

  const DoctorInfoContainer({
    required this.name,
    required this.specialization,
    required this.rating,
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color.fromRGBO(255, 212, 212, 0.068),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar
          Container(
            margin: EdgeInsets.only(right: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Informasi dokter
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    specialization,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 80),
                  Row(children: [
                    Image.asset(
                      "lib/img/bintang.png",
                      width: 10.986042976379395,
                      height: 10.496771812438965,
                    ),
                  ]),
                  SizedBox(width: 2),

                  // Text Rating
                  Text(
                    rating.toString(),
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

              // Baris Rating
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                // Baris Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Button Profile
                    ElevatedButton.icon(
                      onPressed: () {
                        // Tambahkan logika
                      },
                      icon: Image.asset(
                        "lib/img/profile.png",
                        width: 12.0,
                        height: 12.0,
                      ),
                      label: Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),

                    // Button Konsultasi
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            // Tambahkan logika
                          },
                          icon: Image.asset(
                            "lib/img/chat.png",
                            width: 12,
                            height: 12,
                          ),
                          label: Text(
                            "Konsultasi",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(height: 1),
                      ],
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}
