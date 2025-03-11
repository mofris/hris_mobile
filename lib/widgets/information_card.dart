import 'package:flutter/material.dart';
import 'package:hris_mobile/pages/category_page.dart';
import 'package:hris_mobile/pages/information_page.dart';

import '../theme.dart';

class InformationCard extends StatelessWidget {
  final String name;
  final String pdfUrl;
  final String imageUrl;

  InformationCard({
    required this.imageUrl,
    required this.name,
    required this.pdfUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InformationPage(
              name: name,
              pdfUrl: pdfUrl,
              imageUrl: imageUrl,
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 200,
            margin: EdgeInsets.only(right: defaultMargin),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl), // Ganti dengan path gambar
                fit: BoxFit.cover, // Agar gambar penuh di dalam Container
              ),
              color: Colors.grey[300], // Placeholder
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          Container(
            width: 150,
            height: 80,
            margin: EdgeInsets.only(
              top: 120,
            ),
            // padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10), // Hanya sudut bawah kiri
                bottomRight: Radius.circular(10), // Hanya sudut bawah kanan
              ),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black.withOpacity(0.7), // Pudaran hitam paling bawah
                  Colors.black.withOpacity(0.2), // Pudaran hitam paling atas
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0), // Adjust padding as needed
                child: Text(
                  name,
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight
                        .bold, // Make sure 'medium' is defined or use FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
