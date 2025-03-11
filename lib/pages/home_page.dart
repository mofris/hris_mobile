import 'package:flutter/material.dart';
import 'package:hris_mobile/theme.dart';
import 'package:hris_mobile/widgets/category_card.dart';
import 'package:hris_mobile/widgets/information_card.dart';
import 'package:hris_mobile/widgets/job_tile_card.dart';
import 'package:hris_mobile/widgets/menu_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        decoration: BoxDecoration(
          color: Colors.greenAccent, // Ubah warna sesuai kebutuhan
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10), // Hanya sudut bawah kiri
            bottomRight: Radius.circular(10), // Hanya sudut bawah kanan
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        padding: EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
          bottom: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text(
                        'CBI Mobile Apps',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: semiBold,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        'version : 1.0.0',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: primaryColor,
                    ),
                  ),
                  child: Image.asset(
                    'assets/logo.png',
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget profile(BuildContext context) {
      return Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity, // Gunakan double.infinity untuk full width
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Stack(
            children: [
              /// **Bagian Konten ID Card**
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// **Foto Placeholder**
                      Container(
                        width: 95,
                        height: 125,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/me.png"), // Ganti dengan path gambar
                            fit: BoxFit
                                .cover, // Agar gambar penuh di dalam Container
                          ),
                          color: Colors.grey[300], // Placeholder
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(width: 12),

                      /// **Informasi Pengguna**
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// **Nama**
                            const Text(
                              "MOCHAMMAD FARIS",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),

                            const SizedBox(height: 4),

                            /// **NIK**
                            RichText(
                              text: const TextSpan(
                                text: "NIK: ",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                    text: "22.215",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Tampilan sebelah kanan
              Positioned(
                top: 42,
                right: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Opacity(
                      opacity: 0.3,
                      child: const Text(
                        "SML-IT",
                        style: TextStyle(
                          fontSize: 35, // Sesuaikan ukuran
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ),

                    /// **Jabatan**
                    const Text(
                      "STAFF APPLICATION SUPPORT",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    const Text(
                      "PROJECT PT. SAWIT MANDIRI LESTARI",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget cbiApaKabar() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              'Media Internal',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                InformationCard(
                  imageUrl: 'assets/img/5.png',
                  name: 'Edisi 5',
                  pdfUrl: 'assets/doc/5.pdf',
                ),
                InformationCard(
                  imageUrl: 'assets/img/4.png',
                  name: 'Edisi 4',
                  pdfUrl: 'assets/doc/4.pdf',
                ),
                InformationCard(
                  imageUrl: 'assets/img/3.png',
                  name: 'Edisi 3',
                  pdfUrl: 'assets/doc/3.pdf',
                ),
                InformationCard(
                  imageUrl: 'assets/img/2.png',
                  name: 'Edisi 2',
                  pdfUrl: 'assets/doc/2.pdf',
                ),
                InformationCard(
                  imageUrl: 'assets/img/1.png',
                  name: 'Edisi 1',
                  pdfUrl: 'assets/doc/1.pdf',
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget hotCategories() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              'Job Vacancy',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: defaultMargin,
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category14.jpeg',
                  name: 'PKPP Batch XXIV',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category15.jpeg',
                  name: 'Mandor Mandiri',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category13.jpeg',
                  name: 'Ranch Manager',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category12.jpeg',
                  name: 'Staff Tax \n',
                ),
                CategoryCard(
                  imageUrl: 'assets/image_category11.jpeg',
                  name: 'Assessor \n',
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget justPosted() {
      return Container(
        padding: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Job Vacancy',
              style: blackTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            JobTile(
              companyLogo: 'assets/logo.png',
              name: 'Staff IT Programming',
              companyName: 'Citra Borneo Indah',
            ),
            JobTile(
              companyLogo: 'assets/logo.png',
              name: 'Assessor',
              companyName: 'Citra Borneo Indah',
            ),
            JobTile(
              companyLogo: 'assets/logo-sml.png',
              name: 'Staff IT Support App',
              companyName: 'Sawit Mandiri Lestari',
            ),
          ],
        ),
      );
    }

    Widget body() {
      return ListView(
        children: [
          header(),
          profile(context),
          MenuGrid(),
          cbiApaKabar(),
          justPosted(),
        ],
      );
    }

    Widget bottomNavBar() {
      return BottomNavigationBar(
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_home.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_notification.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_love.png',
              width: 24,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icon_user.png',
              width: 24,
            ),
            label: '',
          ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: body(),
    );
  }
}
