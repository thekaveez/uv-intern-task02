
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:uv_intern_task02/widgets/product_item.dart';

import '../../model/Shop.dart';

class PopularTab extends StatefulWidget {
  const PopularTab({super.key});

  @override
  State<PopularTab> createState() => _PopularTabState();
}

class _PopularTabState extends State<PopularTab> {
  late Shop shop;

  @override
  void initState() {
    super.initState();
    shop = context.read<Shop>();
    getProducts();
  }

  getProducts() async {
    await shop.getProducts();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "FILTER & SORT",
                style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.grid_view_outlined,
                    size: 30,
                  ),
                  SizedBox(width: 5,),
                  Icon(
                    Icons.filter_list,
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: shop.products.isNotEmpty
                ? GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.54
              ),
              itemCount: shop.products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
                  child: ProductItem(product: shop.products[index],),
                );
              },
            )
                : const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      ),
    );
  }
}

