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
  Widget _buildSocialIcon(FaIconData icon) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
      ),
      child: Center(
        child: FaIcon(
          icon,
          color: Colors.white,
          size: 22,
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.primary,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 100,),
            CircleAvatar(
              radius: 115,
              backgroundImage: AssetImage("assets/gettyimages-2249104919-612x612.jpg"),
            ),
            Text("MESSI",style: GoogleFonts.suse(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold)),
            Text("THE GOAT",style: GoogleFonts.suezOne(fontSize: 20,color: Colors.white54)),
            Divider(
              color: Colors.yellow,
              height: 60,
              thickness: 5,
              endIndent: 80,
              indent: 80,
            ),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.phone,size: 50,),
                    SizedBox(width: 15,),
                    Text("+542644664430",style: GoogleFonts.suse(fontSize: 22,color: Color(0xff15181e),fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.email,size: 50,),
                    SizedBox(width: 15,),
                    Text("messi@gmail.com",style: GoogleFonts.suse(fontSize: 22,color: Color(0xff15181e),fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Icon(Icons.location_on,size: 50,),
                    SizedBox(width: 15,),
                    Text("Rosario, Argentina",style: GoogleFonts.suse(fontSize: 22,color: Color(0xff15181e),fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 80,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSocialIcon(FontAwesomeIcons.github),
                _buildSocialIcon(FontAwesomeIcons.linkedin),
                _buildSocialIcon(FontAwesomeIcons.xTwitter),
              ],
            )
          ],
        ),
      ),

      );
  }
}
