import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';
import '../widgets/contact_item.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 🔸 Header (yellow background)
          Container(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 20),
            decoration: const BoxDecoration(
              color: Color(0xFFFFCC66), // yellow
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.arrow_back, color: Colors.white),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 10),
                Text("Contact Us", style: AppTextStyles.contactTitle),
                const SizedBox(height: 4),
                Text("How Can We Help You?", style: AppTextStyles.subTitle),
              ],
            ),
          ),

          // 🔸 FAQ + Contact Us Tabs in White Box
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // FAQ Button
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE6E0), // light orange
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "FAQ",
                    style: TextStyle(
                      fontFamily: "LeagueSpartan",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Contact Us Button
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFE95322), // orange
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "Contact Us",
                    style: TextStyle(
                      fontFamily: "LeagueSpartan",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // 🔸 Contact List
          Expanded(
            child: ListView(
              children: const [
                ContactItem(iconPath: "assets/icons/Vector.png", title: "Customer service"),
                ContactItem(iconPath: "assets/icons/website.png", title: "Website"),
                ContactItem(iconPath: "assets/icons/WhatApp.png", title: "Whatsapp"),
                ContactItem(iconPath: "assets/icons/Facebook.png", title: "Facebook"),
                ContactItem(iconPath: "assets/icons/insta.png", title: "Instagram"),
              ],
            ),
          ),
        ],
      ),

      // 🔸 Bottom Nav
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFE95322), // fixed footer color
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/icons/home.png", width: 28),
            Image.asset("assets/icons/dish.png", width: 28),
            Image.asset("assets/icons/heart.png", width: 28),
            Image.asset("assets/icons/list.png", width: 28),

            // service icon: TAP -> open Settings
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
              child: Image.asset("assets/icons/service.png", width: 28),
            ),
          ],
        ),
      ),
    );
  }
}
