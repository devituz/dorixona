import 'package:dorixona/constants/Colors/colors.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.bar_color,
        title: const Text(
          "Mening profilim",
          style: TextStyle(
            color: Color(0xFF0E2946),
          ),
        ),
      ),
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    UserProfile(
                      imagePath: Icons.person,
                      // Use a placeholder icon instead of an image path
                      userName: 'Shohbozbek',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xFFEAEAEC),
                      width: 1,
                    ),
                  ),
                  height: 85,
                  width: 150,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 120,
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jarayonda",
                              style: TextStyle(
                                color: Color(0xFF8F9299),
                              ),
                            ),
                            Text(
                              "0 So'm",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0E2946),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff03103a),
                  ),
                  height: 85,
                  width: 150,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 60,
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Keshbek balansi",
                              style: TextStyle(
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            Text(
                              "0 So'm",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SettingItem(
                      icon: Icons.settings,
                      text: 'Sozlash',
                    ),
                    SettingItem(
                      icon: Icons.credit_card,
                      text: 'Keshbek',
                    ),
                    SettingItem(
                      icon: Icons.history,
                      text: 'O\'tkazmalar tarixi',
                    ),
                    SettingItem(
                      icon: Icons.chat,
                      text: 'Oson yangiliklar',
                    ),
                    SettingItem(
                      icon: Icons.info,
                      text: 'Ilova haqida',
                    ),
                    SizedBox(height: 10),
                    ActionButton(
                      icon: Icons.telegram,
                      text: 'Telegram bot orqali izlash',
                      color: Color(0xFFEEF5FB),
                      rang: Color(0xFF3A85C6),
                    ),
                    ActionButton(
                      icon: Icons.language,
                      text: 'Vebsayt orqali izlash',
                      color: Color(0xFFF5F5F7),
                      rang: Color(0xFF7C7D92),

                    ),
                    ActionButton(
                      icon: Icons.phone,
                      text: 'Kampaniya bilan bog\'lanish',
                      color: Color(0xFFEBFCF6),
                      rang: Color(0xFF0FCC8A),

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const SettingItem({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              color: Color(0xFFF9FAFF),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Icon(icon, size: 25,color: Color(0xFF7A849F),),
          ),
          SizedBox(width: 16),
          Text(
            text,
            style: TextStyle(fontSize: 18,color: Color(0xFF646E87),),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios, size: 16,color: Color(0xFF7A849F)),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color rang;

  const ActionButton({
    required this.icon,
    required this.text,
    required this.color,
    required this.rang,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: rang),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 16, color: rang),
          ),
        ],
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  final IconData imagePath;
  final String userName;

  const UserProfile({
    required this.imagePath,
    required this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          child: Icon(
            imagePath,
            size: 32,
            color: Colors.white,
          ),
          backgroundColor: Colors.blue,
        ),
        SizedBox(width: 16),
        Text(
          userName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

