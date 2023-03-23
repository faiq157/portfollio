import 'package:flutter/material.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 60,
      color: Colors.purple,
      child: RichText(
        text: const TextSpan(
            text: "Copyright © 2023.",
            style: TextStyle(color: Colors.white, fontSize: 18),
            children: [
              TextSpan(
                  text: " Designed by FaiqAhmad.",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: "  All rights reserved."),
            ]),
        textAlign: TextAlign.center,
      ),
    );
    ;
  }
}
