import 'package:flutter/material.dart';
import '../utils/app_text_styles.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  bool general = true;
  bool sound = true;
  bool call = true;
  bool vibrate = false;
  bool offers = false;
  bool payments = false;
  bool promo = false;
  bool cashback = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header
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
                Text("Notification Settings", style: AppTextStyles.contactTitle),
                const SizedBox(height: 4),
                Text("Manage app notifications", style: AppTextStyles.subTitle),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Switches
          Expanded(
            child: ListView(
              children: [
                buildSwitch("General Notification", general, (v) => setState(() => general = v)),
                buildSwitch("Sound", sound, (v) => setState(() => sound = v)),
                buildSwitch("Sound Call", call, (v) => setState(() => call = v)),
                buildSwitch("Vibrate", vibrate, (v) => setState(() => vibrate = v)),
                buildSwitch("Special Offers", offers, (v) => setState(() => offers = v)),
                buildSwitch("Payments", payments, (v) => setState(() => payments = v)),
                buildSwitch("Promo and discount", promo, (v) => setState(() => promo = v)),
                buildSwitch("Cashback", cashback, (v) => setState(() => cashback = v)),
              ],
            ),
          ),
        ],
      ),

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

  Widget buildSwitch(String title, bool value, ValueChanged<bool> onChanged) {
    return SwitchListTile(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: "LeagueSpartan",
          fontWeight: FontWeight.w700,
        ),
      ),
      value: value,
      onChanged: onChanged,
      activeColor: const Color(0xFFE95322), //orange
    );
  }
}
