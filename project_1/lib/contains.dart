import 'package:first_project/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Contains extends StatefulWidget {
  const Contains({super.key});

  @override
  State<Contains> createState() => _ContainsState();
}

class _ContainsState extends State<Contains> {
  Widget _buildInfoCard({required IconData icon, required String text}) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.18),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: Constant.primary,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.blue, width: 2),
            ),
            child: Icon(icon, color: Colors.blue, size: 28),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.suse(
                fontSize: 21,
                color: const Color(0xff15181e),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(FaIconData icon) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.blue, width: 2),
      ),
      child: Center(child: FaIcon(icon, color: Colors.white, size: 22)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.primary,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 70),

                // Profile Image
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: CircleAvatar(
                    radius: 115,
                    backgroundImage: const AssetImage(
                      "assets/WhatsApp Image 2026-09-15 at 9.15.54 PM.jpeg",
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // Name
                Text(
                  "Yousef Ghanem",
                  style: GoogleFonts.suse(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Job
                Text(
                  "Flutter Developer",
                  style: GoogleFonts.suezOne(fontSize: 30, color: Colors.blue),
                ),

                const Divider(
                  color: Colors.blue,
                  height: 60,
                  thickness: 5,
                  endIndent: 80,
                  indent: 80,
                ),
                
                _buildInfoCard(icon: Icons.phone, text: "+20 1010680128"),

                const SizedBox(height: 18),
                
                _buildInfoCard(icon: Icons.email, text: "yousef@gmail.com"),

                const SizedBox(height: 18),
                
                _buildInfoCard(icon: Icons.location_on, text: "Cairo, Egypt"),

                const SizedBox(height: 70),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSocialIcon(FontAwesomeIcons.github),
                    _buildSocialIcon(FontAwesomeIcons.linkedin),
                    _buildSocialIcon(FontAwesomeIcons.xTwitter),
                  ],
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
