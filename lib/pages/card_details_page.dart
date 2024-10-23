import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uv_intern_task02/pages/success_page.dart';

class CardDetailsPage extends StatefulWidget {
  const CardDetailsPage({super.key});

  @override
  State<CardDetailsPage> createState() => _CardDetailsPageState();
}

class _CardDetailsPageState extends State<CardDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Credit / Debit Card', style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(image: Image.asset('assets/card.png').image),
            const Icon(Icons.camera_alt_outlined, size: 40, color: Colors.grey),
            Padding(
              padding: const EdgeInsets.all(24.0),
        
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name on Card", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Viraj Singh Sharma",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          fillColor: Colors.transparent,
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                  color: Colors.blue
                              )
                          )
                      )
                  ),
                  const SizedBox(height: 20,),
                  Text("Card Number", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "4747 4747 4747 4747",
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          fillColor: Colors.transparent,
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                  color: Colors.blue
                              )
                          )
                      )
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Expiry Date", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),),
                            const SizedBox(height: 10,),
                            TextFormField(
                                decoration: InputDecoration(
                                    hintText: "07/21",
                                    hintStyle: TextStyle(color: Colors.grey[500]),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Colors.blue
                                        )
                                    )
                                )
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("CVC", style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.bold),),
                            const SizedBox(height: 10,),
                            TextFormField(
                                decoration: InputDecoration(
                                    suffixIcon: Image.asset('assets/cvc_hint.png', width: 20, height: 20,),
                                    hintText: "474",
                                    hintStyle: TextStyle(color: Colors.grey[500]),
                                    fillColor: Colors.transparent,
                                    filled: true,
                                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: const BorderSide(
                                            color: Colors.blue
                                        )
                                    )
                                )
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      backgroundColor: const Color(0xff6342e8)
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessPage()));
                  },
                      child: const Text(
                        "USE THIS CARD",
                        style: TextStyle(fontSize: 18, color: Colors.white), ),
        
              ),
            ),
          ],
        ),
      ),

    );
  }
}
