import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // 🔸 Header (yellow)
          Container(
            padding: const EdgeInsets.only(top: 50, left: 16, right: 16, bottom: 20),
            decoration: const BoxDecoration(
              color: Color(0xFFFFCC66),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 10),
                Text("Settings", style: AppTextStyles.contactTitle),
                const SizedBox(height: 4),
                Text("Manage your preferences", style: AppTextStyles.subTitle),
              ],
            ),
          ),

          // 🔸 Tabs box (same style as Contact Us)
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE6E0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "FAQ",
                    style: TextStyle(
                      fontFamily: "LeagueSpartan",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFE95322),
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

          // 🔸 Settings List
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Image.asset("assets/icons/notification.png", width: 30),
                  title: const Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontFamily: "LeagueSpartan",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right, color: Color(0xFFE95322)),
                  onTap: () => Navigator.pushNamed(context, '/notification'),
                ),
                ListTile(
                  leading: Image.asset("assets/icons/key.png", width: 30),
                  title: const Text(
                    "Password Settings",
                    style: TextStyle(
                      fontFamily: "LeagueSpartan",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right, color: Color(0xFFE95322)),
                  onTap: () => Navigator.pushNamed(context, '/password'),
                ),
                ListTile(
                  leading: Image.asset("assets/icons/person.png", width: 30),
                  title: const Text(
                    "Delete Account",
                    style: TextStyle(
                      fontFamily: "LeagueSpartan",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  trailing: const Icon(Icons.keyboard_arrow_right, color: Color(0xFFE95322)),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),

      // Bottom nav (same)
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFE95322),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/icons/home.png", width: 28),
            Image.asset("assets/icons/dish.png", width: 28),
            Image.asset("assets/icons/heart.png", width: 28),
            Image.asset("assets/icons/list.png", width: 28),
            Image.asset("assets/icons/service.png", width: 28),
          ],
        ),
      ),
    );
  }
}
