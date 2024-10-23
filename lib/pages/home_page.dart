import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uv_intern_task02/pages/home_page.dart';
import 'package:uv_intern_task02/pages/tabbar/popular_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.fromLTRB(30.0, 60.0, 30.0, 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Geeta.",
                    style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
                  ),
                  const Icon(
                      Icons.search_outlined,
                  size: 35,
                  ),
                ],
              ),
              const SizedBox(height: 20,),

              const TabBar(
                  tabs: [
                    Tab(text: "Popular",),
                    Tab(text: "Mens",),
                    Tab(text: "Womens",),
                    Tab(text: "Sale",),
                  ],
              ),
              const Expanded(
                  child: TabBarView(
                      children: [
                        Center(child: PopularTab()),
                        Center(child: Text("Mens")),
                        Center(child: Text("Womens")),
                        Center(child: Text("Sale")),
                      ]
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
