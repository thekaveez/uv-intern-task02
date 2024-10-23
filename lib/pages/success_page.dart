import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: Image.asset('assets/success.png').image, height: 250),

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Congrats! Your Order has been placed",
                    style: GoogleFonts.lato(
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,),

                  const SizedBox(height: 20,),
                  Text(
                    "Your item has been placed and is on its way to being processed.",
                    style: GoogleFonts.lato(fontSize: 16, color: Colors.grey),
                    textAlign: TextAlign.center,),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
              child: Column(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 60),
                          backgroundColor: const Color(0xff6342e8)
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_shipping_outlined, size: 24, color: Colors.white),
                          SizedBox(width: 16),
                          Text(
                            "TRACK ORDER",
                            style: TextStyle(fontSize: 18, color: Colors.white), ),
                        ],
                      )
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 60),
                        backgroundColor: const Color(0xff6342e8)
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    child: const Text(
                      "CONTINUE SHOPPING",
                      style: TextStyle(fontSize: 18, color: Colors.white), ),

                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },
                    icon: const Icon(Icons.arrow_back, size: 24, color: Colors.black)),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: Text("Back to Home",
                    style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),),
                ),

              ],
            )
          ],
        ),
      ),

    );
  }
}
