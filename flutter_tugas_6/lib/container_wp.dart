import 'package:flutter/material.dart';

class ContainerWelcomePage extends StatefulWidget {
  const ContainerWelcomePage({super.key});

  @override
  State<ContainerWelcomePage> createState() => _ContainerWelcomePageState();
}

class _ContainerWelcomePageState extends State<ContainerWelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(25),
  color: Colors.white,
),//box decoration
    child: Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.auto_awesome, size: 16, color: Colors.pink), 
    SizedBox(width: 5),
    Text("Your Safe Space Awaits", style: TextStyle(fontSize: 13),
    ),
  ], 

),
    );
  }
}