import 'package:flutter/material.dart';

class MySkillScreen extends StatelessWidget {
  const MySkillScreen({super.key});

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
            "My Skill",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: CardFb1(
                        text: "FLUTTER",
                        imageUrl: "images/flutter.png",
                        subtitle:
                            "I have 1 year of Experience in flutter app development.",
                        onPressed: () {}),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: CardFb1(
                        text: "C++ CODING",
                        imageUrl: "images/c++.png",
                        subtitle:
                            "I have 2 years of Experience in C++ competative Programming.",
                        onPressed: () {}),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: CardFb1(
                        text: "WEB DEVELOPEMNT",
                        imageUrl: "images/website.png",
                        subtitle:
                            "I have 2 years of Experience in web Development.",
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: CardFb1(
                        text: "HTML",
                        imageUrl: "images/html.png",
                        subtitle: "I have 2 years of Experience in HTML.",
                        onPressed: () {}),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: CardFb1(
                        text: "CSS",
                        imageUrl: "images/css-3.png",
                        subtitle: "I have 2 years of Experience in CSS.",
                        onPressed: () {}),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    child: CardFb1(
                        text: "Dart",
                        imageUrl: "images/dart.png",
                        subtitle:
                            "I have 1 year of Experience in Dart Language.",
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CardFb1 extends StatelessWidget {
  const CardFb1(
      {required this.text,
      required this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      Key? key})
      : super(key: key);

  final String imageUrl;
  final Function() onPressed;
  final String subtitle;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(imageUrl))),
              ),
            ),
            const Spacer(),
            Text(text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.purpleAccent,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
