import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uv_intern_task02/pages/home_page.dart';
import 'package:uv_intern_task02/pages/splash_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/login_background.png'),
                fit: BoxFit.cover,
                opacity: 0.1),
              ),
            ),
            Container(
              alignment: const Alignment(0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Geeta.",
                  style: GoogleFonts.lato(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),
                  ),
                  const SizedBox(height: 100,),
                  Text(
                    "Create your fashion \nin your own way.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        letterSpacing: 0.01,
                        height: 1
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      "Each men and women has their own style, Geeta help you to create your own style.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: 0.01,
                          height: 1.5
                      ),
                    ),
                  ),
                  const SizedBox(height: 80,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 80.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 60),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 3.0,
                          )
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                      },
                      child: const Text(
                        "LOG IN",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    "- OR -",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        letterSpacing: 0.01,
                        height: 1
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 80.0),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 60),
                            backgroundColor: const Color(0xff6342e8)
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                        },
                        child: const Text(
                          "REGISTER",
                          style: TextStyle(fontSize: 18, color: Colors.white), )
                    ),
                  ),
                  const SizedBox(height: 30,),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
