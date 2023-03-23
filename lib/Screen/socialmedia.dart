import 'package:flutter/material.dart';

class SocailMediaScreen extends StatelessWidget {
  const SocailMediaScreen({super.key});

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
            "Socail Media",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            GoogleBtn1(
              onPressed: () {},
              texts: Text("Github"),
              icon: Icons.abc,
            )
          ],
        )
      ],
    );
  }
}

class GoogleBtn1 extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final texts;

  const GoogleBtn1(
      {required this.onPressed,
      Key? key,
      required this.icon,
      required this.texts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon),
              const SizedBox(
                width: 10,
              ),
              Text(texts, style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}
