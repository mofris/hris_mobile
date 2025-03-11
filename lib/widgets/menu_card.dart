import 'package:flutter/material.dart';
import 'package:hris_mobile/pages/features_page.dart';
import 'package:hris_mobile/theme.dart';

class MenuGrid extends StatelessWidget {
  const MenuGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FeaturesPage(),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            children: [
              GridView(
                shrinkWrap: true,
                physics:
                    const NeverScrollableScrollPhysics(), // Supaya tidak scroll dalam scroll
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, // Jumlah item per baris
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1,
                ),
                children: [
                  _buildMenuItem(Icons.airplanemode_active, "Cuti", Colors.red),
                  _buildMenuItem(
                      Icons.insert_drive_file, "Izin", Colors.purple),
                  _buildMenuItem(Icons.favorite_border, "Sakit", Colors.black),
                  _buildMenuItem(Icons.send, "SPPD", Colors.blue),
                  _buildMenuItem(Icons.receipt, "e-Slip", Colors.orange),
                  _buildMenuItem(Icons.monitor_heart, "Reim...", Colors.teal),
                  _buildMenuItem(Icons.search, "Tracking", Colors.red),
                  _buildMenuItem(Icons.alarm_rounded, "Absensi", Colors.red),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _buildMenuItem(IconData icon, String label, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 30, color: color),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
