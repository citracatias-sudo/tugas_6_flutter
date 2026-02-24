import 'package:flutter/material.dart';

class AboutPageDay12 extends StatefulWidget {
  const AboutPageDay12({super.key});

  @override
  State<AboutPageDay12> createState() => _AboutPageDay12State();
}

class _AboutPageDay12State extends State<AboutPageDay12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("About Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column (mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Aplikasi Interaktif", style: TextStyle(fontSize: 40)), 
          Text("Aplikasi ini dibuat untuk tugas 7 & 8 Flutter \n disusun oleh Citra Cahyaningtias \n versi 1.0.0")
        
          ],
        ),
      )
    );
  }
}