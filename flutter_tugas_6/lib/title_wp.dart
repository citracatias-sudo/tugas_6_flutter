import 'package:flutter/material.dart';

class TittleWelcome extends StatelessWidget {
  const TittleWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Welcome to", style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 21, 17, 18),
            ),
            children: [
         
              TextSpan(
                text: "HerSpace",
                style: TextStyle(
                  color: Color(0xFFF8428F),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
      Text("A community for women \n to connect, learn, grow, thrive together",
      textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
