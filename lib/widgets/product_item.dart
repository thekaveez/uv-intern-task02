import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/products.dart';
import '../pages/product_details.dart';

class ProductItem extends StatelessWidget {

  final Product product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetail(product: product)));
      },
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 154,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xfff1f4fb),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Center(
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(
                        product.image.toString(),
                        fit: BoxFit.contain,
                        width: double.infinity,
                        height: double.infinity,
                      ),

                    ),
                  ),
                ),
              ),
              const Positioned(
                top: 10,
                right: 10,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Text(
                  product.title.toString(),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 5,),
                Text(
                  '${product.price.toString()}\ USD',
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.grey[400],
                  ),
                ),
              ],
            ),

          ),
          // Text(product.price.toString()),
        ],
      ),
    );
  }
}
