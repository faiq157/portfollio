import 'package:flutter/material.dart';

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
          child: Column(
        children: [
          Navbar(),
          const SizedBox(
            height: 50,
          ),
          HomeBody(),
        ],
      )),
    );
  }

  Padding HomeBody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: RichText(
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
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              child: Image.asset("images/faiqpic.png"),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white)),
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
          Expanded(
            child: Container(
              // ignore: sort_child_properties_last
              child: const Image(
                image: AssetImage("images/faiqpic.png"),
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45), color: Colors.white),
            ),
          ),
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
