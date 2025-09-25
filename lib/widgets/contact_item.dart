import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String iconPath;
  final String title;

  const ContactItem({super.key, required this.iconPath, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(iconPath, width: 30, height: 30),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "LeagueSpartan",
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      trailing: const Icon(Icons.keyboard_arrow_down, color: Color(0xFFE95322)),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
    );
  }
}
