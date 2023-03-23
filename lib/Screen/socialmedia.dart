import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              child: const SocailIcon(
                text: "Github",
                icon: (FontAwesomeIcons.github),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const SocailIcon(
                text: "Linktree",
                icon: (FontAwesomeIcons.link),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const SocailIcon(
                text: "Youtube",
                icon: (FontAwesomeIcons.youtube),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const SocailIcon(
                text: "Linkedin",
                icon: (FontAwesomeIcons.linkedin),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SocailIcon extends StatelessWidget {
  final text;
  final IconData? icon;

  const SocailIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple,
            ),
            child: Icon(
              icon,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.right,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
