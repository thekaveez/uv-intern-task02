import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uv_intern_task02/pages/loading_page.dart';
import 'model/Shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoadingPage(),
    );
  }
}

