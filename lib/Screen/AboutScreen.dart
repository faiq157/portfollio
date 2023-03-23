import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 60,
          color: Colors.purple,
          child: const Text(
            "ABOUT",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Image.asset("images/faiqpic.png")),
            Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: const Text(
                    "I am faiq ahmad flutter developer.I am Student at university of Engineering and Technology Mardan in Department of Computer Science.I have knowledge about Programming,Web Technologies  and also Android Application.so now currently working on flutter.I have 1 year of experience in flutter.If you want to know me the SEE my CV which given below: ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple),
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.download,
                        color: Colors.white,
                      ),
                      label: const Text(
                        "Download CV",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
