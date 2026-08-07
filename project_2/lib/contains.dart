import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_2/constant.dart';

class Contains extends StatefulWidget {
  const Contains({super.key});

  @override
  State<Contains> createState() => _State();
}
class _State extends State<Contains> {
  int ahCounter=0;
  int zaCounter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          ahCounter=0;
          zaCounter=0;
        });
      },backgroundColor: Colors.white,
        child: Icon(Icons.refresh),),
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Constant.primary,
            centerTitle: true,
            title: Column(
              children: [
                Text("Al AHLY  VS  ZAMALEK",style: GoogleFonts.suse(color: Colors.white,fontWeight: FontWeight.bold),),
                Text("Points Counter",style: GoogleFonts.poppins(fontSize: 14,color: Colors.white70,),),
              ],
            )
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 15,left: 15,top: 30),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Image.asset("assets/alahly.png",width: 200,height: 200,),
                    SizedBox(height: 10,),
                    Text("AL AHLY", style: GoogleFonts.suse(fontSize: 30 ,color: Colors.red,fontWeight: FontWeight.bold),),
                    Text("$ahCounter", style: GoogleFonts.bebasNeue(fontSize: 200 ,color: Colors.white54,fontWeight: FontWeight.bold),),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        ahCounter++;
                      });
                    }, child: Text("Goal"), style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      fixedSize: Size(150, 50),
                    ),)
                  ],
                ),
              ),
              VerticalDivider(
                color: Colors.white54,
                thickness: 2,
                width: 20,
                indent: 50,
                endIndent: 200,
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Image.asset("assets/zamalek.png",width: 200,height: 200,),
                    SizedBox(height: 10,),
                    Text("ZAMALEK", style: GoogleFonts.suse(fontSize: 30 ,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text("$zaCounter", style: GoogleFonts.bebasNeue(fontSize: 200 ,color: Colors.white54,fontWeight: FontWeight.bold),),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        zaCounter++;
                      });
                    }, child: Text("Goal"), style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      fixedSize: Size(150, 50),
                    ),)


                  ],
                ),
              ),
            ],
          ),
        ),

    );
        
  }
}
