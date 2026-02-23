import 'package:flutter/material.dart';
import 'package:flutter_tugas_6/tugas_6_flutter_day_11.dart';

class ContainerLetsStart extends StatefulWidget {
  const ContainerLetsStart({super.key});

  @override
  State<ContainerLetsStart> createState() => _ContainerLetsStartState();
}

class _ContainerLetsStartState extends State<ContainerLetsStart> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: [
                Color(0xFFFF4B96),
                Color(0xFFFFC5C0),
              ],
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {
              Navigator.push(context, MaterialPageRoute
              (builder: (context) => Tugas6Dday11()
              )
              );
              },
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}