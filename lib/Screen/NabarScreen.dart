import 'package:flutter/material.dart';
import 'package:portfollio/Screen/socialmedia.dart';

import 'AboutScreen.dart';
import 'Myskill.dart';
import 'footer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            HomeBody(),
            const AboutScreen(),
            const MySkillScreen(),
            const SizedBox(
              height: 40,
            ),
            const SocailMediaScreen(),
            const SizedBox(
              height: 40,
            ),
            const FooterScreen(),
          ],
        ),
      )),
    );
  }

  Padding HomeBody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                  text: "HI,\n ",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 80,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                        text: "I am Faiq Ahmad \n ",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50)),
                    TextSpan(
                        text: "Flutter Developer...",
                        style: TextStyle(fontSize: 40))
                  ]),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "images/faiqpic.png",
                width: 500,
                height: 500,
              ),
            ),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding Navbar() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: Text(
              "Faiq Ahmad",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // ignore: prefer_const_constructors
          Expanded(
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
      ),
    );
  }
}
