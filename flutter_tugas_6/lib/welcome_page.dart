import 'package:flutter/material.dart';
import 'package:flutter_tugas_6/Pages/main_page_12.dart';
import 'package:flutter_tugas_6/container_lets_start.dart';
import 'package:flutter_tugas_6/container_wp.dart';
import 'package:flutter_tugas_6/title_wp.dart';

class WelcomePage6 extends StatefulWidget {
  const WelcomePage6({super.key});

  @override
  State<WelcomePage6> createState() => _WelcomePage6State();
}

class _WelcomePage6State extends State<WelcomePage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actionsPadding: EdgeInsets.all(16.0),
      //   centerTitle: true,
         backgroundColor: const Color(0xFFEDE7F6),
      //   shape: CircleBorder(),
      //   title: Text("Your safe space awaits"),
      // ),
      body: SafeArea(child:
      SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          color: Color(0xFFEDE7F6),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ContainerWelcomePage(), 
          SizedBox(height: 10),
          TittleWelcome(),
          SizedBox(height: 10),
          ContainerLetsStart(), 
          SizedBox(height:20),
          Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage("assets/images/women.jpg"),
                  fit: BoxFit.cover,
                ),
  ),
)
          ],),
        ),
      ))
          );
  }
}