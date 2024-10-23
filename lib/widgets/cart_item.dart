import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uv_intern_task02/widgets/quantity_selector.dart';

import '../model/products.dart';

class CartItem extends StatelessWidget {

  final Product product;
  final VoidCallback onRemove;

  const CartItem({super.key, required this.product, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
      child: Column(
        children: [
      Stack(
      children: [
      Container(
      height: 154,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xfff1f4fb),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      product.image.toString(),
                      fit: BoxFit.contain,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              product.title.toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.lato(
                                  color: const Color(0xff6342e8),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                              ),
                          ),
                          const SizedBox(height: 5,),
                          Text(
                              "GEETA COLLECTION",
                            style: GoogleFonts.lato(
                                color: Colors.grey,
                                fontSize: 10,
                            ),),

                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  "\$${product.price}",
                                    style: GoogleFonts.lato(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),),
                              const QuantitySelector(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      Positioned(
      top: 0,
      right: 0,
      child: IconButton(
        icon: const Icon(
        Icons.close,
        color: Colors.grey,
        ), onPressed: () { onRemove(); },
      ),
      ),
      ],
      ),
      ],
      ),
    );
}
}


// onPressed: () {
// value.removeFromCart(product);
// setState(() {});
// },