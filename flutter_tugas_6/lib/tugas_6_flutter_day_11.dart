import 'package:flutter/material.dart';
import 'package:flutter_tugas_6/kosong.dart';
import 'package:flutter_tugas_6/text_button.dart';



class Tugas6Dday11 extends StatefulWidget {
  const Tugas6Dday11({super.key});

  @override
  State<Tugas6Dday11> createState() => _Tugas6Dday11State();
}

class _Tugas6Dday11State extends State<Tugas6Dday11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDE7F6),
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(32, 100, 32, 20),

        child: Column 
        (children:[
            // Image.network("assets/images/herspace_logo.png", height:120, width: 100,),
            Text("Welcome Back", style: TextStyle(fontSize: 40, color: const Color.fromARGB(255, 39, 35, 35)),),
            Text("Sign in to continue", style: TextStyle(fontSize: 13,color: const Color.fromARGB(115, 47, 44, 44))),

        SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: "E-mail",
                focusColor: Colors.pink,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              ),
            ),//Textfield

        SizedBox(height: 15),

        TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
              ),
            ),
        SizedBox(height: 15),
        Align(alignment: Alignment.centerRight,
        child: TextButton6(),),
        SizedBox(height: 25),

SizedBox(
  width: double.infinity,
  height: 55,
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0xFFF8428F),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    onPressed: () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Kosong6(),
        ),
      );
    },
    child: Text(
      "Login",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  ),
),
          
          ],),
        ),
      );

  }
}