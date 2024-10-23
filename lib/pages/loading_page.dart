import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uv_intern_task02/pages/splash_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(

          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/loading.png',),
                  fit: BoxFit.cover,
                ),
              )
            ),
            Container(
              alignment: const Alignment(0, 0.45),
                child: Text(
                  "Geeta.",
                  style: GoogleFonts.lato(
                    fontSize: 100,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                )
            ),
            Container(
              alignment: const Alignment(0, 0.7),
              margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 100.0),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 60),
                    side: const BorderSide(
                      color: Colors.white,
                      width: 3.0,
                    )
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SplashPage()));
                  },
                  child: const Text(
                    "SHOP NOW",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
